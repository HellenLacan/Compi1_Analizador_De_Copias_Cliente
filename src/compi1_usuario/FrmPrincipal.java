/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package compi1_usuario;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ale
 */
public class FrmPrincipal extends javax.swing.JFrame {

    /**
     * Creates new form FrmPrincipal
     */
    public FrmPrincipal() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        PanelPest = new javax.swing.JTabbedPane();
        Panel1 = new javax.swing.JPanel();
        jScrollPane4 = new javax.swing.JScrollPane();
        txtCont = new javax.swing.JTextPane();
        jScrollPane2 = new javax.swing.JScrollPane();
        ListCompoL = new javax.swing.JList<>();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane3 = new javax.swing.JScrollPane();
        listProducciones = new javax.swing.JList<>();
        lblProducciones = new javax.swing.JLabel();
        Graficas = new javax.swing.JButton();
        jButtonAutApila = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        JeditorPaneimagen = new javax.swing.JEditorPane();
        jScrollPane5 = new javax.swing.JScrollPane();
        jList1 = new javax.swing.JList<>();
        lblProducciones1 = new javax.swing.JLabel();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        MenuAbrir = new javax.swing.JMenuItem();
        MenuNuevo = new javax.swing.JMenuItem();
        MenuGuardar = new javax.swing.JMenuItem();
        MenuGuardarC = new javax.swing.JMenuItem();
        MenuSalir = new javax.swing.JMenuItem();
        jSeparator1 = new javax.swing.JPopupMenu.Separator();
        jSeparator2 = new javax.swing.JPopupMenu.Separator();
        jMenu2 = new javax.swing.JMenu();
        MenuAnalizar = new javax.swing.JMenuItem();
        jMenu3 = new javax.swing.JMenu();
        MenuReporteTokens = new javax.swing.JMenuItem();
        MenuReporteErrores = new javax.swing.JMenuItem();
        MenuUbiacion = new javax.swing.JMenu();
        MenuSalidahtml = new javax.swing.JMenuItem();
        jMenuItem2 = new javax.swing.JMenuItem();
        MenuUbiacion1 = new javax.swing.JMenu();
        MenuManualUsuario = new javax.swing.JMenuItem();
        jMenuItem3 = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(javax.swing.UIManager.getDefaults().getColor("Desktop.background"));
        getContentPane().setLayout(null);

        jScrollPane4.setViewportView(txtCont);

        javax.swing.GroupLayout Panel1Layout = new javax.swing.GroupLayout(Panel1);
        Panel1.setLayout(Panel1Layout);
        Panel1Layout.setHorizontalGroup(
            Panel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(Panel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane4, javax.swing.GroupLayout.DEFAULT_SIZE, 475, Short.MAX_VALUE)
                .addContainerGap())
        );
        Panel1Layout.setVerticalGroup(
            Panel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, Panel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane4, javax.swing.GroupLayout.DEFAULT_SIZE, 530, Short.MAX_VALUE)
                .addContainerGap())
        );

        PanelPest.addTab("tab1", Panel1);

        getContentPane().add(PanelPest);
        PanelPest.setBounds(10, 0, 500, 580);

        ListCompoL.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                ListCompoLMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(ListCompoL);

        getContentPane().add(jScrollPane2);
        jScrollPane2.setBounds(550, 60, 160, 180);

        jLabel1.setFont(new java.awt.Font("Tempus Sans ITC", 1, 14)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(0, 204, 204));
        jLabel1.setText("Componentes Lexicos");
        jLabel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 204, 204)));
        getContentPane().add(jLabel1);
        jLabel1.setBounds(550, 20, 160, 40);

        listProducciones.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                listProduccionesMouseClicked(evt);
            }
        });
        jScrollPane3.setViewportView(listProducciones);

        getContentPane().add(jScrollPane3);
        jScrollPane3.setBounds(550, 370, 160, 210);

        lblProducciones.setFont(new java.awt.Font("Tempus Sans ITC", 1, 14)); // NOI18N
        lblProducciones.setForeground(new java.awt.Color(0, 204, 204));
        lblProducciones.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblProducciones.setText("Automata");
        lblProducciones.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 204, 204)));
        getContentPane().add(lblProducciones);
        lblProducciones.setBounds(760, 440, 150, 40);

        Graficas.setFont(new java.awt.Font("Tempus Sans ITC", 1, 18)); // NOI18N
        Graficas.setText("Graficar");
        Graficas.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                GraficasActionPerformed(evt);
            }
        });
        getContentPane().add(Graficas);
        Graficas.setBounds(560, 260, 130, 50);

        jButtonAutApila.setFont(new java.awt.Font("Tempus Sans ITC", 1, 18)); // NOI18N
        jButtonAutApila.setText("Automata");
        jButtonAutApila.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonAutApilaActionPerformed(evt);
            }
        });
        getContentPane().add(jButtonAutApila);
        jButtonAutApila.setBounds(770, 520, 130, 50);

        jButton1.setText("jButton1");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1);
        jButton1.setBounds(1000, 540, 73, 23);

        jScrollPane1.setViewportView(JeditorPaneimagen);

        getContentPane().add(jScrollPane1);
        jScrollPane1.setBounds(770, 30, 520, 360);

        jList1.setFont(new java.awt.Font("Tempus Sans ITC", 1, 14)); // NOI18N
        jList1.setModel(new javax.swing.AbstractListModel<String>() {
            String[] strings = { "Automata A Pila", " " };
            public int getSize() { return strings.length; }
            public String getElementAt(int i) { return strings[i]; }
        });
        jList1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jList1MouseClicked(evt);
            }
        });
        jScrollPane5.setViewportView(jList1);

        getContentPane().add(jScrollPane5);
        jScrollPane5.setBounds(760, 480, 150, 40);

        lblProducciones1.setFont(new java.awt.Font("Tempus Sans ITC", 1, 14)); // NOI18N
        lblProducciones1.setForeground(new java.awt.Color(0, 204, 204));
        lblProducciones1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblProducciones1.setText("Producciones");
        lblProducciones1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 204, 204)));
        getContentPane().add(lblProducciones1);
        lblProducciones1.setBounds(550, 330, 160, 40);

        jMenu1.setBackground(new java.awt.Color(24, 240, 240));
        jMenu1.setText("Archivo");
        jMenu1.setFocusable(false);
        jMenu1.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 15)); // NOI18N

        MenuAbrir.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 13)); // NOI18N
        MenuAbrir.setText("Abrir");
        MenuAbrir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MenuAbrirActionPerformed(evt);
            }
        });
        jMenu1.add(MenuAbrir);

        MenuNuevo.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 13)); // NOI18N
        MenuNuevo.setText("Nuevo");
        MenuNuevo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MenuNuevoActionPerformed(evt);
            }
        });
        jMenu1.add(MenuNuevo);

        MenuGuardar.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 13)); // NOI18N
        MenuGuardar.setLabel("Guardar");
        MenuGuardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MenuGuardarActionPerformed(evt);
            }
        });
        jMenu1.add(MenuGuardar);

        MenuGuardarC.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 13)); // NOI18N
        MenuGuardarC.setText("Guardar Como");
        MenuGuardarC.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MenuGuardarCActionPerformed(evt);
            }
        });
        jMenu1.add(MenuGuardarC);

        MenuSalir.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 13)); // NOI18N
        MenuSalir.setText("Salir");
        MenuSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MenuSalirActionPerformed(evt);
            }
        });
        jMenu1.add(MenuSalir);
        jMenu1.add(jSeparator1);
        jMenu1.add(jSeparator2);

        jMenuBar1.add(jMenu1);

        jMenu2.setText("Analizador");
        jMenu2.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 15)); // NOI18N

        MenuAnalizar.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 13)); // NOI18N
        MenuAnalizar.setText("Analizador");
        MenuAnalizar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MenuAnalizarActionPerformed(evt);
            }
        });
        jMenu2.add(MenuAnalizar);

        jMenuBar1.add(jMenu2);

        jMenu3.setText("Reportes");
        jMenu3.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 15)); // NOI18N

        MenuReporteTokens.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 13)); // NOI18N
        MenuReporteTokens.setText("Tokens");
        MenuReporteTokens.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MenuReporteTokensActionPerformed(evt);
            }
        });
        jMenu3.add(MenuReporteTokens);

        MenuReporteErrores.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 13)); // NOI18N
        MenuReporteErrores.setText("Errores");
        MenuReporteErrores.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MenuReporteErroresActionPerformed(evt);
            }
        });
        jMenu3.add(MenuReporteErrores);

        jMenuBar1.add(jMenu3);

        MenuUbiacion.setText("Ver");
        MenuUbiacion.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 15)); // NOI18N

        MenuSalidahtml.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 13)); // NOI18N
        MenuSalidahtml.setText("HTML");
        MenuSalidahtml.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MenuSalidahtmlActionPerformed(evt);
            }
        });
        MenuUbiacion.add(MenuSalidahtml);

        jMenuItem2.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 13)); // NOI18N
        jMenuItem2.setText("Ubicacion");
        jMenuItem2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem2ActionPerformed(evt);
            }
        });
        MenuUbiacion.add(jMenuItem2);

        jMenuBar1.add(MenuUbiacion);

        MenuUbiacion1.setText("Manuales");
        MenuUbiacion1.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 15)); // NOI18N

        MenuManualUsuario.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 13)); // NOI18N
        MenuManualUsuario.setText("Usuario");
        MenuManualUsuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MenuManualUsuarioActionPerformed(evt);
            }
        });
        MenuUbiacion1.add(MenuManualUsuario);

        jMenuItem3.setFont(new java.awt.Font("Franklin Gothic Heavy", 1, 13)); // NOI18N
        jMenuItem3.setText("Tecnico");
        jMenuItem3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem3ActionPerformed(evt);
            }
        });
        MenuUbiacion1.add(jMenuItem3);

        jMenuBar1.add(MenuUbiacion1);

        setJMenuBar(jMenuBar1);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void MenuAbrirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MenuAbrirActionPerformed

    }//GEN-LAST:event_MenuAbrirActionPerformed

    private void MenuNuevoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MenuNuevoActionPerformed
    }//GEN-LAST:event_MenuNuevoActionPerformed

    private void MenuGuardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MenuGuardarActionPerformed
    }//GEN-LAST:event_MenuGuardarActionPerformed

    private void MenuGuardarCActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MenuGuardarCActionPerformed
    }//GEN-LAST:event_MenuGuardarCActionPerformed

    private void MenuSalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MenuSalirActionPerformed
    }//GEN-LAST:event_MenuSalirActionPerformed

    private void MenuAnalizarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MenuAnalizarActionPerformed
        try {
            String number, temp;
            Socket s = new Socket("127.0.0.1",1342);
            Scanner sc1 = new Scanner(s.getInputStream());
            PrintStream p= new PrintStream(s.getOutputStream());
            p.println("C:\\Users\\Hellen\\Desktop\\Proyecto1;C:\\Users\\Hellen\\Desktop\\Proyecto2");
            temp=sc1.nextLine();
            System.out.println(temp);
        } catch (IOException ex) {
            Logger.getLogger(FrmPrincipal.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }//GEN-LAST:event_MenuAnalizarActionPerformed

    private void MenuReporteTokensActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MenuReporteTokensActionPerformed
    }//GEN-LAST:event_MenuReporteTokensActionPerformed

    private void MenuReporteErroresActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MenuReporteErroresActionPerformed

    }//GEN-LAST:event_MenuReporteErroresActionPerformed

    private void MenuSalidahtmlActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MenuSalidahtmlActionPerformed

    }//GEN-LAST:event_MenuSalidahtmlActionPerformed

    private void jMenuItem2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem2ActionPerformed

    }//GEN-LAST:event_jMenuItem2ActionPerformed


    private void MenuManualUsuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MenuManualUsuarioActionPerformed


    }//GEN-LAST:event_MenuManualUsuarioActionPerformed

    private void jMenuItem3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem3ActionPerformed


    }//GEN-LAST:event_jMenuItem3ActionPerformed


    private void GraficasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_GraficasActionPerformed

    }//GEN-LAST:event_GraficasActionPerformed

    private void jButtonAutApilaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonAutApilaActionPerformed
    }//GEN-LAST:event_jButtonAutApilaActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
    }//GEN-LAST:event_jButton1ActionPerformed

    private void ListCompoLMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_ListCompoLMouseClicked

        // TODO add your handling code here:
    }//GEN-LAST:event_ListCompoLMouseClicked

    private void jList1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jList1MouseClicked
     }//GEN-LAST:event_jList1MouseClicked

    private void listProduccionesMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_listProduccionesMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_listProduccionesMouseClicked

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
            java.util.logging.Logger.getLogger(FrmPrincipal.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FrmPrincipal.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FrmPrincipal.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);

        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FrmPrincipal.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrmPrincipal().setVisible(true);
            }
        });
    }


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Graficas;
    private javax.swing.JEditorPane JeditorPaneimagen;
    private javax.swing.JList<String> ListCompoL;
    private javax.swing.JMenuItem MenuAbrir;
    private javax.swing.JMenuItem MenuAnalizar;
    private javax.swing.JMenuItem MenuGuardar;
    private javax.swing.JMenuItem MenuGuardarC;
    private javax.swing.JMenuItem MenuManualUsuario;
    private javax.swing.JMenuItem MenuNuevo;
    private javax.swing.JMenuItem MenuReporteErrores;
    private javax.swing.JMenuItem MenuReporteTokens;
    private javax.swing.JMenuItem MenuSalidahtml;
    private javax.swing.JMenuItem MenuSalir;
    private javax.swing.JMenu MenuUbiacion;
    private javax.swing.JMenu MenuUbiacion1;
    private javax.swing.JPanel Panel1;
    private javax.swing.JTabbedPane PanelPest;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButtonAutApila;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JList<String> jList1;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenu jMenu2;
    private javax.swing.JMenu jMenu3;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenuItem jMenuItem2;
    private javax.swing.JMenuItem jMenuItem3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JScrollPane jScrollPane5;
    private javax.swing.JPopupMenu.Separator jSeparator1;
    private javax.swing.JPopupMenu.Separator jSeparator2;
    private javax.swing.JLabel lblProducciones;
    private javax.swing.JLabel lblProducciones1;
    private javax.swing.JList<String> listProducciones;
    private javax.swing.JTextPane txtCont;
    // End of variables declaration//GEN-END:variables

}