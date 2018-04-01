/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package compi1_usuario;

import java.awt.Color;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.LayoutManager;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ImageIcon;
import javax.swing.*;

/**
 *
 * @author Hellen
 */
public class VentanaUsuario extends JFrame implements ActionListener {

    private JLabel texto1, texto2;
    private JTextField caja1, caja2;
    private JButton boton;
    private JMenuBar mb;
    private JMenu archivo, analizarProyecto, mReportes;
    private JMenuItem ma1, ma2, ma3, ma4, mAnalizar, mMostrarRep;
    private JPanel panel1, panel2, panel3;

    public VentanaUsuario() {
        super();                    // usamos el contructor de la clase padre JFrame
        configurarVentana();        // configuramos la ventana
        inicializarComponentes();   // inicializamos los atributos o componentes
    }

    private void configurarVentana() {

        ImageIcon imgVentana = new ImageIcon("src/Iconos/iconoPrincipal.png");

        this.setTitle("Proyecto 1 \"Analizador de Copias\"");
        this.setSize(1200, 700);
        this.setLocationRelativeTo(null);
        this.setLayout(null);
        this.setResizable(false);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setIconImage(imgVentana.getImage());
    }

    private void inicializarComponentes() {

        // creamos los componentes
        texto1 = new JLabel();
        caja1 = new JTextField();
        texto2 = new JLabel();
        caja2 = new JTextField();
        boton = new JButton();
        mb = new JMenuBar();

        setJMenuBar(mb);

        //Menu Archivo agregando Items
        archivo = new JMenu("Archivo");
        mb.add(archivo);
        ma1 = new JMenuItem("Abrir");
        ma1.addActionListener(this);
        archivo.add(ma1);
        ma2 = new JMenuItem("Guardar");
        ma2.addActionListener(this);
        archivo.add(ma2);
        ma3 = new JMenuItem("Guardar Como");
        ma3.addActionListener(this);
        archivo.add(ma3);
        ma4 = new JMenuItem("Salir");
        ma4.addActionListener(this);
        archivo.add(ma4);

        //Menu analizar proyectos
        analizarProyecto = new JMenu("Archivo");
        mb.add(analizarProyecto);
        mAnalizar = new JMenuItem("Analizar Proyectos");
        mAnalizar.addActionListener(this);
        analizarProyecto.add(mAnalizar);

        //Menu reportes
        mReportes = new JMenu("Reportes");
        mb.add(mReportes);
        mMostrarRep = new JMenuItem("Mostrar");
        mMostrarRep.addActionListener(this);
        mReportes.add(mMostrarRep);
        mReportes.add(mMostrarRep);

        LayoutManager LayoutManage = null;

        //Creando paneles para menus
        setLayout(new FlowLayout());
        JTextField inputField = new JTextField(40);

        JButton sendBtn = new JButton("Send");
        JPanel inputPanel = new JPanel();
        inputPanel.setLayout(new BoxLayout(inputPanel, BoxLayout.LINE_AXIS));
        inputPanel.add(inputField);
        inputPanel.add(sendBtn);

        this.add(inputPanel);

    }

    public static void main(String[] args) {
        VentanaUsuario V = new VentanaUsuario();      // creamos una ventana
        V.setVisible(true);             // hacemos visible la ventana creada
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        String nombre = caja1.getText();                                 // obtenemos el contenido de la caja de texto
        //   JOptionPane.showMessageDialog(this, "Hola " + nombre + ".");    // mostramos un mensaje (frame, mensaje)    }4

        Container f = this.getContentPane();
        if (e.getSource() == ma1) {
            f.setBackground(new Color(255, 0, 0));
        }
        if (e.getSource() == ma2) {
            f.setBackground(new Color(0, 255, 0));
        }
        if (e.getSource() == ma3) {
            this.add(panel1);
        }
        if (e.getSource() == ma4) {
            System.exit(0);
        }

    }
}
