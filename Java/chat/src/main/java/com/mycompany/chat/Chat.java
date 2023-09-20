package com.mycompany.chat;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.UIManager;
import javax.swing.WindowConstants;

public class Chat extends JFrame{
    JTextArea area = new JTextArea();
    JTextField txt = new JTextField();
    JButton btn = new JButton("=");
    JPanel pane = new JPanel();
    JPanel south = new JPanel();
    public Chat(){
        initComponent();
    }
    private void initComponent(){
        setTitle("Chat");
        setSize(360, 480);
        this.setLayout(new BorderLayout());
        this.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        
        pane.setLayout(new BorderLayout());
        south.setLayout(new FlowLayout(FlowLayout.LEFT));
        txt.setPreferredSize(new Dimension(200,30));
        btn.setPreferredSize(new Dimension(80,30));
        south.add(txt);
        south.add(btn);
        
        pane.add(area, BorderLayout.CENTER);
        pane.add(south, BorderLayout.SOUTH);
        
        this.add(pane);
        
        btn.addActionListener(new ActionListener(){
            @Override
            public void actionPerformed(ActionEvent e){
                if("".equals(txt.getText()) || txt.getText() == null){
                    return;
                }
                else{
                    area.append(txt.getText()+"\n");
                    txt.setText(null);
                }
            }
        });
    }
    
    public String calculate(String str){
        if(str.contains("+")){
            String[] equ = str.split("/+");
            Integer answer = Integer.parseInt(equ[0]) + Integer.parseInt(equ[1]);
            return str + " = " + answer;
        }
        return "false";
    }
    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable(){
            @Override
            public void run(){
                try{
                   UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
               }
               catch (Exception ex) {
                   System.out.println(ex.getMessage());
               }
                new Chat().setVisible(true);
            }
        });
    }
}
