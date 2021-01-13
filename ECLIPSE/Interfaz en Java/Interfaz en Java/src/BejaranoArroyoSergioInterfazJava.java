import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.DefaultListModel;
import javax.swing.JButton;
import java.awt.Color;
import javax.swing.JList;
import javax.swing.DropMode;
import javax.swing.JEditorPane;

public class BejaranoArroyoSergioInterfazJava extends JFrame {

	private JPanel contentPane;
	private JTextField txtMiNombre;
	private JTextField txtMisApellidos;
	private JTextField textField_2;
	private JTextField txtMiNombre_1;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					BejaranoArroyoSergioInterfazJava frame = new BejaranoArroyoSergioInterfazJava();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public BejaranoArroyoSergioInterfazJava() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 500, 315);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("Agregar Persona:");
		lblNewLabel.setBounds(10, 11, 100, 14);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Nombre:");
		lblNewLabel_1.setBounds(10, 50, 75, 14);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_1_1 = new JLabel("Apellidos:");
		lblNewLabel_1_1.setBounds(10, 90, 75, 14);
		contentPane.add(lblNewLabel_1_1);
		
		JLabel lblNewLabel_1_1_1 = new JLabel("Edad:");
		lblNewLabel_1_1_1.setBounds(10, 130, 75, 14);
		contentPane.add(lblNewLabel_1_1_1);
		
		txtMiNombre = new JTextField();
		txtMiNombre.setText("Mi Nombre");
		txtMiNombre.setBounds(95, 47, 150, 20);
		contentPane.add(txtMiNombre);
		txtMiNombre.setColumns(10);
		
		txtMisApellidos = new JTextField();
		txtMisApellidos.setText("Mis Apellidos");
		txtMisApellidos.setColumns(10);
		txtMisApellidos.setBounds(95, 87, 150, 20);
		contentPane.add(txtMisApellidos);
		
		textField_2 = new JTextField();
		textField_2.setText("24");
		textField_2.setColumns(10);
		textField_2.setBounds(95, 127, 150, 20);
		contentPane.add(textField_2);
		
		JButton btnNewButton = new JButton("A\u00F1adir");
		btnNewButton.setBounds(260, 46, 89, 23);
		contentPane.add(btnNewButton);
		
		JButton btnEliminar = new JButton("Eliminar");
		btnEliminar.setBounds(260, 130, 89, 14);
		contentPane.add(btnEliminar);
		
		JLabel lblNewLabel_2 = new JLabel("Informaci\u00F3n:");
		lblNewLabel_2.setBounds(10, 175, 100, 14);
		contentPane.add(lblNewLabel_2);
		
		JLabel lblNewLabel_2_1 = new JLabel("Nombre:");
		lblNewLabel_2_1.setBounds(10, 200, 100, 14);
		contentPane.add(lblNewLabel_2_1);
		
		JLabel lblNewLabel_2_1_1 = new JLabel("Apellidos:");
		lblNewLabel_2_1_1.setBounds(10, 223, 100, 14);
		contentPane.add(lblNewLabel_2_1_1);
		
		JLabel lblNewLabel_2_1_1_1 = new JLabel("Edad:");
		lblNewLabel_2_1_1_1.setBounds(10, 248, 100, 14);
		contentPane.add(lblNewLabel_2_1_1_1);
		
		JLabel lblNewLabel_3 = new JLabel("Mi Nombre");
		lblNewLabel_3.setBounds(215, 200, 75, 14);
		contentPane.add(lblNewLabel_3);
		
		JLabel lblNewLabel_3_1 = new JLabel("Mis Apellidos");
		lblNewLabel_3_1.setBounds(210, 223, 75, 14);
		contentPane.add(lblNewLabel_3_1);
		
		JLabel lblNewLabel_3_1_1 = new JLabel("24");
		lblNewLabel_3_1_1.setBounds(235, 248, 75, 14);
		contentPane.add(lblNewLabel_3_1_1);
		
		txtMiNombre_1 = new JTextField();
		txtMiNombre_1.setBackground(new Color(51, 102, 153));
		txtMiNombre_1.setText("Mi Nombre");
		txtMiNombre_1.setBounds(367, 11, 107, 20);
		contentPane.add(txtMiNombre_1);
		txtMiNombre_1.setColumns(10);
		
		JEditorPane editorPane = new JEditorPane();
		editorPane.setBounds(367, 31, 107, 231);
		contentPane.add(editorPane);
		String nombres[]= {"Sergio"};
	}
}
