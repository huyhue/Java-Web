/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package S6;

import javax.swing.ImageIcon;

/**
 *
 * @author ASUS
 */
public class ListDemo extends javax.swing.JFrame {

    /**
     * Creates new form ListDemo
     */
    public ListDemo() {
        initComponents();
        jLabelImage.setIcon(iconBird);
        this.setTitle("List Demo");
    }

    ImageIcon iconBird = new ImageIcon("Images/1.jpg");
    ImageIcon iconCat = new ImageIcon("Images/2.jpg");
    ImageIcon iconDog = new ImageIcon("Images/3.jpg");
    ImageIcon iconRabbit = new ImageIcon("Images/4.jpg");
    ImageIcon iconPig = new ImageIcon("Images/5.jpg");
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jListImage = new javax.swing.JList<>();
        jLabelImage = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jListImage.setModel(new javax.swing.AbstractListModel<String>() {
            String[] strings = { "Bird", "Cat", "Dog", "Rabbit", "Pig" };
            public int getSize() { return strings.length; }
            public String getElementAt(int i) { return strings[i]; }
        });
        jListImage.setSelectedIndex(0);
        jListImage.addListSelectionListener(new javax.swing.event.ListSelectionListener() {
            public void valueChanged(javax.swing.event.ListSelectionEvent evt) {
                jListImageValueChanged(evt);
            }
        });
        jScrollPane1.setViewportView(jListImage);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabelImage, javax.swing.GroupLayout.DEFAULT_SIZE, 315, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabelImage, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 238, Short.MAX_VALUE))
                .addContainerGap(22, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jListImageValueChanged(javax.swing.event.ListSelectionEvent evt) {//GEN-FIRST:event_jListImageValueChanged
        // TODO add your handling code here:
        Object select = jListImage.getSelectedValue();
        if (select.toString().equals("Bird")) {
            jLabelImage.setIcon(iconBird);
        }
        if (select.toString().equals("Cat")) {
            jLabelImage.setIcon(iconCat);
        }
        if (select.toString().equals("Dog")) {
            jLabelImage.setIcon(iconDog);
        }
        if (select.toString().equals("Rabbit")) {
            jLabelImage.setIcon(iconRabbit);
        }
        if (select.toString().equals("Pig")) {
            jLabelImage.setIcon(iconPig);
        }
    }//GEN-LAST:event_jListImageValueChanged

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ListDemo.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ListDemo.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ListDemo.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ListDemo.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ListDemo().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabelImage;
    private javax.swing.JList<String> jListImage;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
}
