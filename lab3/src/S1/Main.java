package S1;

import java.awt.Image;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;

public class Main extends javax.swing.JFrame {

    ImageIcon icon1 = new ImageIcon("Images/1.jpg");
    ImageIcon icon2 = new ImageIcon("Images/2.jpg");
    ImageIcon icon3 = new ImageIcon("Images/3.jpg");
    ImageIcon icon4 = new ImageIcon("Images/4.jpg");
    ImageIcon icon5 = new ImageIcon("Images/5.jpg");
    
    public Main() {
        initComponents();
        setImagesforButton(jButtonImage1, icon1);
        setImagesforButton(jButtonImage2, icon2);
        setImagesforButton(jButtonImage3, icon3);
        setImagesforButton(jButtonImage4, icon4);
        setImagesforButton(jButtonImage5, icon5);
    }

    private void setImagesforButton(JButton jb, ImageIcon ic) {
        /*
            This fuction set a image for a button.
         */
        Image im = ic.getImage().getScaledInstance(jb.getWidth() - 10,
                jb.getHeight() - 10, java.awt.Image.SCALE_SMOOTH);
        jb.setIcon(new ImageIcon(im));
    }

    private void setImagesforLabel(JLabel jl, ImageIcon ic) {
        /*
            This fuction set a image for a label.
         */
        Image im = ic.getImage().getScaledInstance(jl.getWidth(),
                jl.getHeight(), java.awt.Image.SCALE_SMOOTH);
        jl.setIcon(new ImageIcon(im));
    }
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanelButton = new javax.swing.JPanel();
        jButtonImage1 = new javax.swing.JButton();
        jButtonImage3 = new javax.swing.JButton();
        jButtonImage2 = new javax.swing.JButton();
        jButtonImage5 = new javax.swing.JButton();
        jButtonImage4 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Display Image");

        jButtonImage1.setPreferredSize(new java.awt.Dimension(75, 75));
        jButtonImage1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonImage1ActionPerformed(evt);
            }
        });

        jButtonImage3.setPreferredSize(new java.awt.Dimension(75, 75));
        jButtonImage3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonImage3ActionPerformed(evt);
            }
        });

        jButtonImage2.setPreferredSize(new java.awt.Dimension(75, 75));
        jButtonImage2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonImage2ActionPerformed(evt);
            }
        });

        jButtonImage5.setPreferredSize(new java.awt.Dimension(75, 75));
        jButtonImage5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonImage5ActionPerformed(evt);
            }
        });

        jButtonImage4.setPreferredSize(new java.awt.Dimension(75, 75));
        jButtonImage4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonImage4ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanelButtonLayout = new javax.swing.GroupLayout(jPanelButton);
        jPanelButton.setLayout(jPanelButtonLayout);
        jPanelButtonLayout.setHorizontalGroup(
            jPanelButtonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelButtonLayout.createSequentialGroup()
                .addGap(41, 41, 41)
                .addComponent(jButtonImage1, javax.swing.GroupLayout.PREFERRED_SIZE, 89, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButtonImage3, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButtonImage2, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButtonImage5, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButtonImage4, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(64, Short.MAX_VALUE))
        );
        jPanelButtonLayout.setVerticalGroup(
            jPanelButtonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelButtonLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanelButtonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jButtonImage1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButtonImage3, javax.swing.GroupLayout.DEFAULT_SIZE, 97, Short.MAX_VALUE)
                    .addComponent(jButtonImage4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButtonImage5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButtonImage2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanelButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(18, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, 265, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanelButton, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButtonImage1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonImage1ActionPerformed
        // TODO add your handling code here:
        setImagesforLabel(jLabel1, icon1);
    }//GEN-LAST:event_jButtonImage1ActionPerformed

    private void jButtonImage3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonImage3ActionPerformed
        // TODO add your handling code here:
        setImagesforLabel(jLabel1, icon3);
    }//GEN-LAST:event_jButtonImage3ActionPerformed

    private void jButtonImage2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonImage2ActionPerformed
        // TODO add your handling code here:
        setImagesforLabel(jLabel1, icon2);
    }//GEN-LAST:event_jButtonImage2ActionPerformed

    private void jButtonImage5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonImage5ActionPerformed
        // TODO add your handling code here:
        setImagesforLabel(jLabel1, icon5);
    }//GEN-LAST:event_jButtonImage5ActionPerformed

    private void jButtonImage4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonImage4ActionPerformed
        // TODO add your handling code here:
        setImagesforLabel(jLabel1, icon4);
    }//GEN-LAST:event_jButtonImage4ActionPerformed

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
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Main().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonImage1;
    private javax.swing.JButton jButtonImage2;
    private javax.swing.JButton jButtonImage3;
    private javax.swing.JButton jButtonImage4;
    private javax.swing.JButton jButtonImage5;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanelButton;
    // End of variables declaration//GEN-END:variables
}
