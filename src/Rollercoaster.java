import javax.swing.JOptionPane;

public class Rollercoaster {

	public static void main(String[] args) {
		
	String a = JOptionPane.showInputDialog("how tall are you in inches?");
		
	int b = Integer.parseInt(a);
	if (b >= 48) {
		JOptionPane.showMessageDialog(null, "You can ride the rollercoaster!");
	}
	else {
		JOptionPane.showMessageDialog(null, "Sorry, you are not tall enough!");
	}
		
		
		
		
		
		
	}
}
