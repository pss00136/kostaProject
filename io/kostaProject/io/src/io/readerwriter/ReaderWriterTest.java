package io.readerwriter;

import java.io.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class ReaderWriterTest
{
	public static void main( String args[])
	{
		UIForm3 ui = new UIForm3();
		ui.addLayout();
		ui.eventProc();	
	}	
}

//========================================
//	화면을 관리하는 클래스 
//----------------------------------------
class UIForm3 extends JFrame
{
	JTextArea	ta;
	JButton 		bSave, bLoad, bClear;
	
	UIForm3()
	{
		ta		= new JTextArea();		
		bSave 	= new JButton("파일저장");
		bLoad	= new JButton("파일읽기");
		bClear	= new JButton("화면지우기");
	}
	
	void addLayout()
	{
		JPanel pCenter 	= new JPanel();
		pCenter.setLayout( new BorderLayout() );
		pCenter.add("Center", new JScrollPane(ta) );
	
		JPanel pSouth	= new JPanel();
		pSouth.add( bSave );
		pSouth.add( bLoad );
		pSouth.add( bClear );
		
		getContentPane().add("Center", pCenter );
		getContentPane().add("South",  pSouth );
		
		setSize( 400, 350 );
		setVisible( true );
		
		setDefaultCloseOperation( JFrame.EXIT_ON_CLOSE );
	}
	
	void eventProc()
	{
		EventHandler hdlr = new EventHandler();
		
		bSave.addActionListener(hdlr);
		bLoad.addActionListener(hdlr);
		bClear.addActionListener(hdlr);
		
		addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {	
				int result = JOptionPane.showConfirmDialog(null, "종료하시겠습니까?");
				if(result == JOptionPane.OK_OPTION){
					System.exit(0);
				}else{
					setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
				}
			}
		} );	
		
	}
	
	class EventHandler implements ActionListener{
		public void actionPerformed(ActionEvent ev){
			Object evt = ev.getSource();
			
			// "파일저장" 버튼이 눌렸을 때 
			if( evt == bSave){
				JFileChooser fc = new JFileChooser();
				int result = JOptionPane.showConfirmDialog(null, "저장하시겠습니까?");
				if(result == JOptionPane.OK_OPTION){
					int returnVal = fc.showSaveDialog(null);
					if(returnVal == JFileChooser.APPROVE_OPTION){
						File f = fc.getSelectedFile();	// File: 자바에서 파일과 디렉토리를 관리하는 클래스
						try {
//							FileWriter out = new FileWriter(f);		
//							out.write(ta.getText());
//							out.close();
							
							//인코딩설정추가를 위해 OutputStreamWriter로 변경 / 자바의 기본인코딩설정:MS949
							OutputStreamWriter out = new OutputStreamWriter(new FileOutputStream(f),"MS949");
							out.write(ta.getText());
							out.close();
						} catch (Exception e) {
							System.out.println("저장실패:" + e.getMessage());
						}
					}
				}else if(result == JOptionPane.CANCEL_OPTION || result==JOptionPane.CLOSED_OPTION){
					setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
				}
			
			}
			// "파일읽기" 버튼이 눌렸을 때 
			if( evt == bLoad){
				JFileChooser fc = new JFileChooser();
				int returnVal = fc.showOpenDialog(null);
				if(returnVal == JFileChooser.APPROVE_OPTION){
					File f = fc.getSelectedFile();
					try {
//						FileReader in = new FileReader(f);
//						in.getEncoding();
//						StringBuffer txt = new StringBuffer();
//						while(in.read()!=-1){
//							txt.append((char)in.read());
//						}
//						ta.setText(txt.toString());
//						in.close();
						
						//인코딩설정추가를 위해 InputStreamReader로 변경 / 자바의 기본인코딩설정:MS949
						InputStreamReader in = new InputStreamReader(new FileInputStream(f),"MS949");
						StringBuffer txt = new StringBuffer();
						while(in.read()!=-1){
							txt.append((char)in.read());
						}
						ta.setText(txt.toString());
						in.close();
						
					} catch (Exception e) {
						System.out.println("불러오기실패:" + e.getMessage());
					}
				}
			}
			// "화면지우기" 버튼이 눌렸을 때 
			if( evt == bClear){
				ta.setText("");
				
			}
		}

		private String toString(StringBuffer txt) {
			// TODO Auto-generated method stub
			return null;
		}

		private StringBuffer toString(char read) {
			// TODO Auto-generated method stub
			return null;
		}
	}
}