package spring.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.Model.User;
import spring.Service.UserService;

@Controller
public class DashboardController {

	@Autowired
	private UserService userService;

	// Dashboard Handlers
	@RequestMapping("/admindashboard")
	public String Admin(Model model) {
		List<User> user1 = this.userService.selectAllUsers();
		model.addAttribute("users", user1);
		return "admindashboard";
	}

	@RequestMapping("/userdashboard")
	public String User() {
		return "userdashboard";
	}

}
