package spring.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import spring.Model.User;
import spring.Service.UserService;

@Controller
public class AdminController {

	@Autowired
	private UserService userService;

	// Create new user handler
	@RequestMapping("/adduser")
	public String AddUser() {
		return "adduser";
	}

	@RequestMapping(path = "/add_user_form", method = RequestMethod.POST)
	public RedirectView Add_User_Form(@ModelAttribute User user, HttpServletRequest request) {
		RedirectView rv = new RedirectView();
		this.userService.createUser(user);
		rv.setUrl(request.getContextPath() + "/admindashboard");
		return rv;
	}

	// Delete an user handler
	@RequestMapping(path = "/deleteuser/{userID}", method = RequestMethod.GET)
	public RedirectView DeleteUser(@PathVariable("userID") int id, HttpServletRequest request) {
		RedirectView rv = new RedirectView();
		this.userService.deleteUser(id);
		rv.setUrl(request.getContextPath() + "/admindashboard");
		return rv;
	}

	// Update an user Handler

	@RequestMapping(path = "/updateuser/{userID}", method = RequestMethod.GET)
	public String UpdateUser(@PathVariable("userID") int id, Model model) {
		User user = this.userService.selectUser(id);
		model.addAttribute("user", user);
		return "updateuser";
	}

	@RequestMapping(path = "/update_user_form", method = RequestMethod.POST)
	public RedirectView UpdateUserForm(@ModelAttribute User user, HttpServletRequest request) {
		RedirectView rd = new RedirectView();
		System.out.print(user);
		this.userService.createUser(user);
		rd.setUrl(request.getContextPath() + "/admindashboard");
		return rd;
	}

}
