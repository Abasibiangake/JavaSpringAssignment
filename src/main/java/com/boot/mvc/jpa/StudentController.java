package com.boot.mvc.jpa;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class StudentController implements ErrorController {
	
	@Autowired
	private StudentRepository stdRepo;
	
	@RequestMapping("/")
	public String home() {
		
		return "index";
	}
	
	@RequestMapping("/error")
	public String errorMessage() {
		
		return "error";
	}
	@RequestMapping("/registration")
	public String register() {
		return "register";
	}
	
	@PostMapping("/register")
    public @ResponseBody String add(@RequestParam("studentId") int studentId,
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            @RequestParam("firstname") String firstname,
            @RequestParam("lastname") String lastname,
            @RequestParam("address") String address,
            @RequestParam("city") String city,
            @RequestParam("postalCode") String postalCode,
            @RequestParam("stdPhoneNumber") int stdPhone,
            @RequestParam("doctorFirstName" ) String doctorName,
            @RequestParam("docPhoneNumber") int docPhone)
    {
		Student student=new Student(studentId,username,password,firstname,lastname,
				address, city,postalCode,stdPhone, doctorName,docPhone );
		stdRepo.save(student);
        return "A student info added";
        
    }
	
	@RequestMapping("/sport")
	public String sportRegister(HttpServletRequest request, HttpServletResponse response) {
		String username = request.getParameter("username");
        
		String password = request.getParameter("password");
		
		Iterable<Student> iterator = stdRepo.findAll();
		System.out.println("\n\n********************Question 2 of lab 5.2: *******************");
		System.out.println("\nList of all the Student Name: ");
        iterator.forEach(item -> System.out.println(item));
		System.out.println("\n\n********************Test 2: *******************");
		System.out.println(stdRepo.findByUserName(username) );
			
		Student loginStd = stdRepo.findByUserName(username);
		System.out.println("\n\n********************Test 3: *******************");
		System.out.println(loginStd.getPassword());
		
		if (username.equals(loginStd.getUserName()) && password.equals((loginStd.getPassword()))) {
			return "sportregistration";
		}
		else
			return "you entered the wrong user detail. Try Again!";
		
	}
	
	@RequestMapping("/checkout")
	public String checkout() {
		return "checkout";
	}
	
	@PostMapping("/payment")
	public @ResponseBody String paymentSuccessful() {
		return "This is a confirmation message that your payment has been received for the registered sport. "
				+ "/nWe would update your profile shortly!!";
	}
	
	@RequestMapping("/profile")
	public @ResponseBody String userProfile() {
		return "profilepage";
	}
	

}
