package spring.Controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import spring.Model.User;
import spring.Service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	//Login Page Handlers
	@RequestMapping("")
	public String Home() {
		return "redirect:/login";
	}
	
	@RequestMapping("/login")
	public String Login() {
		return "login";
	}
	
	//Register Page Handlers
	@RequestMapping("/register")
	public String Register() {
		return "register";
	}
	
	@RequestMapping(path="/register_form", method=RequestMethod.POST)
	public String Register_Form(@ModelAttribute User user) 
	{
		this.userService.createUser(user);
		return "/login";
	}
	
	//Login form details handler
	@RequestMapping(path="/handle_form", method=RequestMethod.POST)
	public RedirectView Handle_Form(@ModelAttribute User user, HttpServletRequest request) {
		
		RedirectView rv = new RedirectView();
		boolean ans = this.userService.authenticate(user.getEmail(), user.getPassword());
		
		if (ans == true) {
			if (user.getEmail().equalsIgnoreCase("admin2024@gmail.com")) {
				rv.setUrl(request.getContextPath() + "/admindashboard");
			}
			else{
				rv.setUrl(request.getContextPath() + "/userdashboard");
			}
		}
		else {
			rv.setUrl(request.getContextPath() + "/login");
		}	
		return rv;			
	}
	
}
