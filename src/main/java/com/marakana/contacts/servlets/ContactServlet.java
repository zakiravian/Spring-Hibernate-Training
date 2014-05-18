package com.marakana.contacts.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marakana.contacts.entities.Address;
import com.marakana.contacts.entities.Contact;
import com.marakana.contacts.repositories.AddressRepository;
import com.marakana.contacts.repositories.ContactRepository;


@WebServlet("/contact")
public class ContactServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private final AddressRepository addressRepository = new AddressRepository();
	private final ContactRepository contactRepository = new ContactRepository();


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		if(request.getParameter("add") != null) {
			request.getRequestDispatcher("jsp/addContact.jsp").forward(request, response);
		} else {
			// TODO
			super.doGet(request, response);
		}
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 
		if(request.getParameter("add") != null) {
						
			String name = request.getParameter("name");
			String street = request.getParameter("street");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String zip = request.getParameter("zip");
						
			Address address = new Address(street,city,state,zip);
			try {
				addressRepository.create(address);
				Contact contact = new Contact(name, address.getId());
				contactRepository.create(contact);								
				response.sendRedirect("contacts");
				
			} catch (SQLException sqlExp) {
				throw new ServletException(sqlExp);
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			
		} else {
			// TODO
			super.doPost(request, response);
		}
		
		
		
		
		
		
	}
	
	
}
