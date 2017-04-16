/**
 * @author Laura Martinez (lauracam@andrew.cmu.edu)
 * Last Modified: March 29, 2013
 * 
 * This is the controller of the web application, receives two parameters: a phone number and a message
 */

package edu.andrew.lauracam;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;


public class Sms2PhoneServlet extends HttpServlet {
	
	/**
     * The doGet method uses GET to capture the data from a client
     * @param req the HTTP request
     * @param resp the HTTP response
     * @throws ServletException
     * @throws IOException
     */
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// Create an instance of the model
		Sms2PhoneModel s2p = new Sms2PhoneModel();
		
		//Call the method that will make the phone call given the phone number and the message that have been sent using GET
		s2p.makeCall(req.getParameter("phone"), req.getParameter("msg"));
		
		//Set the response
		req.setAttribute("response", s2p.getResult());

		//Show the view as a XML
		RequestDispatcher view = req.getRequestDispatcher("result.jsp"); 
        view.forward(req, resp);
	}
}
