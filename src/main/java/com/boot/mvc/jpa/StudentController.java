package com.boot.mvc.jpa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class StudentController {
	
	@Autowired
	private StudentRepository stdRepo;
	
	@RequestMapping("/")
	public String home() {
		return "index";
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
	public String sportRegister() {
		return "sportregistration";
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
	
	@PostMapping("/profile")
	public @ResponseBody String userProfile() {
		return "This would be the profile Page";
	}
	

}
