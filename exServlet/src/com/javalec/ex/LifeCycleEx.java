package com.javalec.ex;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LifeCycleEx
 */
@WebServlet("/LC")
public class LifeCycleEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LifeCycleEx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost");
	}
	
	@Override //����2��
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init");
	}
	
	@Override //����3
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroy");
	}
	
	//��ó���۾�, init, destroyó�� �������̵��� �ƴ� ������ �޼ҵ带 ����� ������̼��� ����Ѵ�
	@PostConstruct //����1��
	private void initPostConstruct() {
		// TODO Auto-generated method stub
		System.out.println("initPostConstruct");
	}
	
	//�ڿ����� �� ��ó��.
	@PreDestroy //����4
	private void destroyPreDestroy() {
		// TODO Auto-generated method stub
		System.out.println("destroyPreDestroy");
	}

}
