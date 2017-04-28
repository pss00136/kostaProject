package file;

import java.awt.*;
import java.awt.List;
import java.awt.event.*;
import java.io.*;
import java.util.*;

import javax.swing.*;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.filechooser.FileNameExtensionFilter;

class FileIO extends JFrame{
	//******멤버변수
	JLabel lPath;
	JButton bFileOpen, bNewFile, bFileDel;
	JList liView;
	File f;
	File list[];
	String stPath[];
	Font font;
	
	//******객체선언
	public FileIO() {
		lPath = new JLabel("C:\\imsi");
		bFileOpen = new JButton("파일보기");
		bNewFile = new JButton("새 파일만들기");
		bFileDel = new JButton("파일삭제");
		liView = new JList();
		
		f = new File("c:\\imsi");
		list = f.listFiles();
		stPath = new String[list.length];
		for(int i=0; i<list.length; i++){
			File temp = list[i];
			if(!temp.isDirectory()){
				stPath[i]=list[i].toString();
			}
		}
		font = new Font("고딕",Font.BOLD, 15);
	}
	
	//******메소드
	void addLayout(){
		setLayout(new BorderLayout());
		JPanel pNorth = new JPanel();
			pNorth.add(new JLabel("경로:"));
			pNorth.add(lPath);
		JPanel pEast = new JPanel();
			pEast.setLayout(new GridLayout(3,1));
			pEast.add(bFileOpen);
			pEast.add(bNewFile);
			pEast.add(bFileDel);
		add(pNorth,BorderLayout.NORTH);
		add(liView, BorderLayout.CENTER);
		add(pEast, BorderLayout.EAST);
		setSize(600, 500);
		setVisible(true);
	}
	
	void setStyle(){
		liView.setFont(font);
		lPath.setFont(font);
	}
	
	void eventProc(){
		BtnHandler bHdlr = new BtnHandler();
		bFileOpen.addActionListener(bHdlr);
		bNewFile.addActionListener(bHdlr);
		bFileDel.addActionListener(bHdlr);
		
		//종료하기 이벤트
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
	
	class BtnHandler implements ActionListener{
		@Override
		public void actionPerformed(ActionEvent e) {
			JButton evt = (JButton)e.getSource();
			String path = (String) liView.getSelectedValue();

			if(evt==bFileOpen){	
				liView.setListData(stPath);
			}else if(evt==bNewFile){		//"새 파일만들기"버튼이 눌렸을때
				int random = (int) (Math.random()*100+1);
				File f2= new File("c:\\imsi\\"+ random +".txt");
				try {
					f2.createNewFile();
				} catch (Exception e1) {
					System.out.println("생성 실패:" + e1.getMessage());
				}
			}else if(evt==bFileDel){		//"파일삭제"버튼이 눌렸을때
				try {
					path = (String) liView.getSelectedValue();
					File f3= new File(path);
					System.out.println(path);
					f3.delete();
				} catch (NullPointerException e2) {
					System.out.println("예외발생:선택한 삭제가 없습니다 " + e2.getMessage());
				} catch(Exception e1){
					System.out.println("삭제실패:"+ e1.getMessage());
				}
			}
			
			//변경된 JList 보여주기
			list = f.listFiles();
			String[] tempPath = new String[list.length];
			for(int i=0; i<list.length; i++){
				File temp = list[i];
				if(!temp.isDirectory()){
					tempPath[i]=list[i].toString();
				}
			}
			liView.setListData(tempPath);	
		}
	}
	
}

public class FileTest {
	public static void main(String[] args) {
		
//		File f = new File("c:\\imsi");
//		File list[] = f.listFiles();
//		for(int i=0; i<list.length; i++){
//			File temp = list[i];
//			if(temp.isDirectory()){
//				System.out.println("[" + temp + "]");
//			}else{
//				System.out.println(temp.getName() + "\n" + temp.length() + " byte");
//			}
//		}
//		File f2= new File("c:\\imsi\\x.txt");
//		try {
//			f2.createNewFile();
//		} catch (Exception e) {
//			
//		}
//		File f3= new File("c:\\imsi\\a.txt");
//		f3.delete();
		
		FileIO fio = new FileIO();
		fio.addLayout();
		fio.setStyle();
		fio.eventProc();
			
		
	}
}
