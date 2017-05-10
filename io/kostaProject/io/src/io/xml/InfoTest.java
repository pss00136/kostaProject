package io.xml;

import java.awt.BorderLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.RandomAccessFile;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.BevelBorder;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

class InfoTest implements ActionListener{

	JFrame frame;
	JTextField tf_name, tf_id, tf_tel, tf_age, tf_gender, tf_home ;
	JButton b_add, b_show, b_modify, b_delete, b_cancel, b_exit;
	JTextArea ta;	


	public InfoTest() {

		frame		= new JFrame("DBTest");


		tf_name	= new JTextField(15);
		tf_id		= new JTextField(15);
		tf_tel		= new JTextField(15);
		tf_age		= new JTextField(15);
		tf_gender	= new JTextField(15);
		tf_home		= new JTextField(15);

		b_add		= new JButton("Add", new ImageIcon("img/add.gif"));
		b_add.setVerticalTextPosition(SwingConstants.BOTTOM);
		b_add.setHorizontalTextPosition(SwingConstants.CENTER);		
		b_add.setBorder(new BevelBorder(BevelBorder.RAISED));
		b_add.setToolTipText("추가");


		b_show		= new JButton("Show");
		b_modify	= new JButton("Modify");
		b_delete	= new JButton("Delete");
		b_cancel	= new JButton("Cancel");
		b_exit		= new JButton("Exit");
		ta			= new JTextArea(20, 50);


	}

	void setup(){

		JPanel p_center  = new JPanel();
		JPanel p_west	 = new JPanel();
		JPanel p_south 	 = new JPanel();

		// west영역 붙이기
		// 화면출력만 하는 라벨 생성 및 붙이기 

		/************************
		 * 이미지 라벨 
		 */
		JLabel ll_name = new JLabel("Name", new ImageIcon("img/cute/1.gif"),JLabel.CENTER);		
		JLabel ll_id   = new JLabel("ID",   new ImageIcon("img/cute/2.gif"),SwingConstants.CENTER);
		JLabel ll_tel  = new JLabel("Tel",  new ImageIcon("img/cute/3.gif"),SwingConstants.CENTER);
		JLabel ll_sex  = new JLabel("Sex",  new ImageIcon("img/cute/4.gif"),SwingConstants.CENTER);
		JLabel ll_age  = new JLabel("Age",  new ImageIcon("img/cute/5.gif"),SwingConstants.CENTER);
		JLabel ll_home = new JLabel("Home", new ImageIcon("img/cute/6.gif"),SwingConstants.CENTER);


		p_west.setLayout( new GridLayout(6,2));
		p_west.add( ll_name);
		p_west.add( tf_name );
		p_west.add( ll_id);
		p_west.add( tf_id );
		p_west.add( ll_tel);
		p_west.add( tf_tel );
		p_west.add( ll_sex);
		p_west.add( tf_gender );
		p_west.add( ll_age);
		p_west.add( tf_age );
		p_west.add( ll_home);
		p_west.add( tf_home );


		// center 영역
		p_center.setLayout(new BorderLayout());
		p_center.add("Center", ta );

		// south 영역
		p_south.setLayout( new GridLayout(1,6));
		p_south.add( b_add );
		p_south.add( b_show );
		p_south.add( b_modify );
		p_south.add( b_delete );
		p_south.add( b_cancel );
		p_south.add( b_exit );

		frame.getContentPane().setLayout( new BorderLayout() );
		frame.getContentPane().add("West", p_west );
		frame.getContentPane().add("Center", p_center );
		frame.getContentPane().add("South", p_south );

		frame.pack();
		frame.setTitle("InfoTest");
		frame.setVisible(true);	
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}

	public void eventProc(){


		// 버튼 이벤트 등록
		b_add.addActionListener( this );
		b_show.addActionListener( this );
		b_modify.addActionListener( this );
		b_delete.addActionListener( this );
		b_cancel.addActionListener( this );
		b_exit.addActionListener( this );

		tf_tel.addActionListener(this);

	}

	public void actionPerformed( ActionEvent ev ){

		Object evt = ev.getSource();
		if( evt== b_add ){
			saveData();
		}	else if( evt == b_show ){
			readData();
		} 	else if( evt == tf_tel ){
			search();
		}	else if( evt == b_delete ){
			removeData();
		}
	}

	void removeData(){

	}
	void search(){
		File f = new File("info.xml");
		
		try {
			//Document 객체를 만드는 구조
			DocumentBuilderFactory docFac = DocumentBuilderFactory.newInstance();
			DocumentBuilder docBuild = docFac.newDocumentBuilder();
			Document doc = docBuild.parse(f);	
			doc.getDocumentElement().normalize();		
			NodeList personlist = doc.getElementsByTagName("person");
			
			for(int i=0; i<personlist.getLength(); i++){
				Node temp =  personlist.item(i);
				NodeList childList = temp.getChildNodes();
				for(int j=0; j<childList.getLength(); j++){
					Node node = childList.item(j);
					if(("tel").equals(node.getNodeName())){
						String inputTel = tf_tel.getText();
						if(inputTel.equals(node.getTextContent())){
							Node n1 = node.getPreviousSibling();
							tf_id.setText(n1.getTextContent());
							Node n2 = n1.getPreviousSibling();
							tf_name.setText(n2.getTextContent());
							Node n3 = node.getNextSibling();
							tf_gender.setText(n3.getTextContent());
							Node n4 = n3.getNextSibling();
							tf_age.setText(n4.getTextContent());
							Node n5 = n4.getNextSibling();
							tf_home.setText(n5.getTextContent());		
						}
					}
				}
			}
		} catch (Exception e) {
			System.out.println("읽기실패:" + e.getMessage());
		}
		
	}
	
	void readData(){
		File f = new File("info.xml");
		
		try {
			//Document 객체를 만드는 구조
			DocumentBuilderFactory docFac = DocumentBuilderFactory.newInstance();
			DocumentBuilder docBuild = docFac.newDocumentBuilder();
			Document doc = docBuild.parse(f);
			
			doc.getDocumentElement().normalize();
			
			NodeList personlist = doc.getElementsByTagName("person");
			System.out.println("사람수: "+ personlist.getLength());
			
			ta.setText("");
			
			for(int i=0; i<personlist.getLength(); i++){
				Node temp =  personlist.item(i);
				NodeList childList = temp.getChildNodes();
				for(int j=0; j<childList.getLength(); j++){
					ta.append(childList.item(j).getTextContent());
					
				}
				ta.append("\n");
			}
			
			System.out.println("루트: " + doc.getDocumentElement().getNodeName());
		} catch (Exception e) {
			System.out.println("읽기실패" + e.getMessage());
		}
	}
	
	void saveData(){
		File f = new File("info.xml");
		try {	//입출력이 모두 가능한 RandomAccessFile
			RandomAccessFile raf = new RandomAccessFile(f, "rw");	//r:읽기 rw:읽기와 쓰기
			long pos = raf.length() -7;
			if(pos<0){
				String tag = "<info>" + makeTags() + "</info>";
				raf.write(tag.getBytes());
			}else{
				//기존에 있던 text 뒤에 추가되는것이 아니라 덮어씌움
				//따라서 </info>가 시작되는 지점으로 가서 새로운 person을 추가하고 다시  </info>를 써서 완료한다
				raf.seek(pos);	//중간부터 읽기, RandomAccessFile의 기능
				String tag = makeTags() + "</info>";
				raf.write(tag.getBytes());
			}
			raf.close();
			clearTextFields();
		} catch (Exception e) {
			System.out.println("쓰기실패:" + e.getMessage());
		}
	}

	String makeTags(){
		StringBuffer tagBuf = new StringBuffer();
		tagBuf.append("<person>");
		tagBuf.append("<name>" + tf_name.getText() + "</name>");
		tagBuf.append("<id>" + tf_id.getText() + "</id>");
		tagBuf.append("<tel>" + tf_tel.getText() + "</tel>");
		tagBuf.append("<gender>" + tf_gender.getText() + "</gender>");
		tagBuf.append("<age>" + tf_age.getText() + "</age>");
		tagBuf.append("<home>" + tf_home.getText() + "</home>");
		tagBuf.append("</person>");
		return tagBuf.toString();
	}

	void clearTextFields(){
		tf_tel.setText("");
		tf_name.setText("");
		tf_id.setText("");
		tf_age.setText("");
		tf_home.setText("");
		tf_gender.setText("");
	}
	public static void main(String args[]) {		
		InfoTest mainFrame = new InfoTest();
		mainFrame.setup();
		mainFrame.eventProc();
	}
}
