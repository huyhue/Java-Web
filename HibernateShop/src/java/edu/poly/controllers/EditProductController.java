package edu.poly.controllers;

import edu.poly.dao.CategoryDao;
import edu.poly.dao.ProductDao;
import edu.poly.entities.Category;
import edu.poly.entities.Product;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet(name = "EditProductController", urlPatterns = {"/EditProductController"})
public class EditProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String id = request.getParameter("id");
            ProductDao dao = new ProductDao();
            Product entity = dao.findProductById(Integer.parseInt(id));

            CategoryDao categoryDao = new CategoryDao();
            List<Category> list = categoryDao.findAllCategories();

            request.setAttribute("categories", list);
            
            request.setAttribute("product", entity);
            
            RequestDispatcher rd = request.getRequestDispatcher("backend/products/addOrEdit.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Create a factory for disk-based file items
            DiskFileItemFactory factory = new DiskFileItemFactory();

            // Configure a repository (to ensure a secure temp location is used)
            ServletContext servletContext = this.getServletConfig().getServletContext();
            File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
            factory.setRepository(repository);

            // Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);

            // Parse the request
            List<FileItem> items = upload.parseRequest(request);

            // Process the uploaded items
            Iterator<FileItem> iter = items.iterator();
            HashMap<String, String> fields = new HashMap<>();
            String imageName = null;
            while (iter.hasNext()) {
                FileItem item = iter.next();

                if (item.isFormField()) {
                    fields.put(item.getFieldName(), item.getString());
                } else {
                    String filename = item.getName();
                    if (filename != null && !filename.equals("")) {
                        Path path = Paths.get(filename);

                        String storedPath = servletContext.getRealPath("/uploads");

                        File uploadFile = new File(storedPath + "/" + path.getFileName());
                        item.write(uploadFile);
                        imageName = path.getFileName().toString();
                        System.out.println(storedPath + "/" + path.getFileName());
                    }
                }
            }

            Product prod = new Product();
            prod.setProductId(Integer.parseInt(fields.get("productId")));
            prod.setName(fields.get("name"));
            prod.setPrice(Double.parseDouble(fields.get("price")));
            prod.setQuantity(Integer.parseInt(fields.get("quantity")));
            prod.setStatus(fields.get("status"));
            prod.setDescription(fields.get("description"));
            prod.setManufacturedDate(new Date());
            Category cate = new Category();
            cate.setCategoryId(Integer.parseInt(fields.get("categoryId")));
            prod.setCategories(cate);

            ProductDao dao = new ProductDao();
            if (imageName != null) {
                prod.setImage(imageName);
            }else{
                Product oldProd = dao.findProductById(prod.getProductId());
                prod.setImage(oldProd.getImage());
            }
            dao.updateProduct(prod); //chinh sua

            RequestDispatcher rd = request.getRequestDispatcher("ListProductsController");
            rd.forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
