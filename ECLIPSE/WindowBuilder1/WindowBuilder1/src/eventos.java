import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class eventos extends JFrame {

	private JPanel contentPane;
	private JTextField textField;
	private JTextField textField_1;
	private JLabel lblNewLabel_1;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					eventos frame = new eventos();
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
	public eventos() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);

		JLabel lblNewLabel = new JLabel("Ingrese primer valor:");
		lblNewLabel.setBounds(25, 50, 146, 14);
		contentPane.add(lblNewLabel);

		JLabel lblIngreseSegundoValor = new JLabel("Ingrese segundo valor:");
		lblIngreseSegundoValor.setBounds(25, 96, 146, 14);
		contentPane.add(lblIngreseSegundoValor);

		textField = new JTextField();
		textField.setBounds(210, 47, 86, 20);
		contentPane.add(textField);
		textField.setColumns(10);

		textField_1 = new JTextField();
		textField_1.setColumns(10);
		textField_1.setBounds(210, 93, 86, 20);
		contentPane.add(textField_1);

		JButton btnNewButton = new JButton("Sumar");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				int v1 = Integer.parseInt(textField.getText());
				int v2 = Integer.parseInt(textField_1.getText());
				int suma = v1 + v2;
				lblNewLabel_1.setText(String.valueOf(suma));
			}
		});
		btnNewButton.setBounds(207, 150, 89, 23);
		contentPane.add(btnNewButton);

		lblNewLabel_1 = new JLabel("Resultado");
		lblNewLabel_1.setBounds(334, 154, 61, 14);
		contentPane.add(lblNewLabel_1);
	}
}