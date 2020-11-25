package uploadcontroller;

import java.util.ArrayList;
import java.util.List;

public class InforDAO {
    public static List<Infor> ls = new ArrayList<>();
    
    public Infor findByID(String id){
        for (Infor info : ls) {
            if (info.getId().equals(id)) {
                return info;
            }
        }
        return null;
    }
    
    public int update(Infor info){
        for (int i = 0; i < ls.size(); i++) {
            if (ls.get(i).getId().equals(info.getId())) {
                ls.set(i, info);
                return i;
            }
        }
        return -1;
    }
    
    public int save(Infor info){
        ls.add(info);
        return 1;
    }
    
    public int delete(String id){
        Infor info = findByID(id);
        if (info != null) {
            ls.remove(info);
            return 1;
        }
        return 0;
    }
    
    public void dummydata(){
        ls.add(new Infor("PD1", "A", "anh1.jpg"));
        ls.add(new Infor("PD2", "A", "anh1.jpg"));
        ls.add(new Infor("PD3", "A", "anh1.jpg"));
        ls.add(new Infor("PD4", "A", "anh1.jpg"));
        ls.add(new Infor("PD5", "A", "anh1.jpg"));
    }
    
    public List<Infor> getAll(){
        dummydata();
        return ls;
    }
}
