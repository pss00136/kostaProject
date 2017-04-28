package io.objectstream;


import java.io.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class ObjectStreamTest
{
	public static void main( String [] args )
	{
		UIForm2  ui = new UIForm2();
		ui.addToLayout();
		ui.eventProc();
	}
}


//-----------------------------------------
// ȭ���� �����ϴ� Ŭ����
class UIForm2 extends JFrame
{
	// ����Ÿ�� ������ ����
	String name;
	int		age;
	double 	height;
	char	bloodType;
	
	// ȭ�� GUI�� ������ ����
	JTextField tfName, tfAge, tfHeight, tfBloodType;
	JButton	   bSave, bLoad;
	
	
	UIForm2()
	{
		tfName 		= new JTextField(10);
		tfAge 		= new JTextField(10);
		tfHeight 	= new JTextField(10);
		tfBloodType = new JTextField(10);
		
		bSave		= new JButton("�����ϱ�", new ImageIcon("../img/save.gif"));
		bLoad		= new JButton("�о����", new ImageIcon("../img/load.gif"));
		
	}
	
	// ȭ�� �����ϴ� �޼�
	void addToLayout()
	{
		JPanel pCenter = new JPanel();
		pCenter.setLayout( new GridLayout(5 ,2,10,10) );
		pCenter.add( new JLabel("�̸�") );
		pCenter.add( tfName );
		pCenter.add( new JLabel("����") );
		pCenter.add( tfAge );
		pCenter.add( new JLabel("����") );
		pCenter.add( tfHeight );
		pCenter.add( new JLabel("������") );
		pCenter.add( tfBloodType );
		
		pCenter.add( bSave );
		pCenter.add( bLoad );
		
		getContentPane().add("Center", pCenter);
		
		setSize( 400, 300 );
		setVisible( true );
		
		setDefaultCloseOperation( JFrame.EXIT_ON_CLOSE );

	}
	
	
	// �̺�Ʈ ó���ϴ� �޼ҵ� 
	void eventProc()
	{
		EventHandler hdlr = new EventHandler();
		bSave.addActionListener( hdlr );
		bLoad.addActionListener( hdlr );
		
	}
	
	class EventHandler implements ActionListener{
		public void actionPerformed(ActionEvent ev){
			JButton evt = (JButton)ev.getSource();
			// "�����ϱ�" ��ư�� ������ �� 
			if( evt == bSave){
				/*
				1. �ؽ�Ʈ�ʵ忡�� �Է°� ���ͼ� ������ ����
				2. ������½�Ʈ�� ���� ( filter ���� )
				3. ��Ʈ���� ���
				4. ��Ʈ�� �ݱ�
				5. �ؽ�Ʈ�ʵ� �ʱ�ȭ 
				*/
				name		= tfName.getText();
				age			= Integer.parseInt( 	tfAge.getText() );
				height		= Double.parseDouble(	tfHeight.getText() );
				bloodType 	= (tfBloodType.getText()).charAt(0);
				
				Record rec = new Record(name, age, height, bloodType);
				try{
					ObjectOutputStream out = new ObjectOutputStream(
						new FileOutputStream("src\\temp\\data9.txt"));
					out.writeObject( rec );
					out.close();
				}catch( IOException ex ){
					System.out.println("�������:" + ex.getMessage());
					ex.printStackTrace();
				}
				
				tfName.setText("");
				tfAge.setText("");
				tfHeight.setText("");
				tfBloodType.setText("");
			}
			// "�о����" ��ư�� ������ 
			else if( evt == bLoad ){
				/*
				1. �����Է½�Ʈ�� ���� (filter ���� )
				2. ��Ʈ������ ����Ÿ �о ������ ����
				3. ��Ʈ�� �ݱ�
				4. �ؽ�Ʈ�ʵ忡 ������(����)�� ���� 
				
				*/
				try {
					ObjectInputStream ois = new ObjectInputStream(new FileInputStream("src\\temp\\data9.txt"));
					Record r = (Record)ois.readObject();
					
					tfName.setText(r.getName());
					tfAge.setText(String.valueOf(r.getAge()));
					tfHeight.setText(String.valueOf(r.getHeight()));
					tfBloodType.setText(String.valueOf(r.getBloodType()));
					ois.close();
				}catch (Exception ex ) {
					System.out.println("���ܹ߻�" + ex.getMessage());					
				}
				
			}
		}
	}
}