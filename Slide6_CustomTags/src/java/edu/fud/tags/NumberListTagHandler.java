/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.fud.tags;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author ASUS
 */
public class NumberListTagHandler extends SimpleTagSupport {

    private String color;
    private int rows;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();

        try {
            out.print(String.format("<table style='color:%s'>", color));
            for (int i = 0; i < rows; i++) {
                out.print("<tr>");
                out.print("<td>" + i + "</td>");
                out.print("</tr>");
            }
            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }
            out.print("</table>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in NumberListTagHandler tag", ex);
        }
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

}
