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
public class HelloTagHandler extends SimpleTagSupport {

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            out.println("<h3>");
            out.println("Hello world! How are you today?");
            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }
            out.println("</h3>");

        } catch (java.io.IOException ex) {
            throw new JspException("Error in HelloTagHandler tag", ex);
        }
    }
    
}
