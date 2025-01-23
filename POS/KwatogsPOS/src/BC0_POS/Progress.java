package BC0_POS;

import java.awt.Dimension;
import java.awt.Toolkit;
import javax.swing.ImageIcon;
import javax.swing.ImageIcon;
import java.awt.Image;



public class Progress extends javax.swing.JFrame {
      
    public Progress() {
        initComponents();
         Toolkit toolkit = getToolkit();
         Dimension size = toolkit.getScreenSize();
         setLocation (size.width/2-getWidth()/2,size.height/2-getHeight()/2);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        system_load = new javax.swing.JLabel();
        percent = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(102, 102, 102), 2));
        jPanel1.setForeground(new java.awt.Color(102, 51, 0));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        system_load.setFont(new java.awt.Font("Segoe UI Emoji", 0, 18)); // NOI18N
        system_load.setForeground(new java.awt.Color(102, 51, 0));
        system_load.setText("Loading. . . . . . . .");
        jPanel1.add(system_load, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 230, 160, -1));

        percent.setFont(new java.awt.Font("Segoe UI Emoji", 0, 10)); // NOI18N
        percent.setForeground(new java.awt.Color(102, 51, 0));
        percent.setText("0%");
        jPanel1.add(percent, new org.netbeans.lib.awtextra.AbsoluteConstraints(260, 230, -1, 20));

        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/Loading Logo 200px.png"))); // NOI18N
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 20, 260, 200));
        jLabel2.getAccessibleContext().setAccessibleDescription("");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 388, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 299, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Progress().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    public javax.swing.JLabel percent;
    public javax.swing.JLabel system_load;
    // End of variables declaration//GEN-END:variables
}
