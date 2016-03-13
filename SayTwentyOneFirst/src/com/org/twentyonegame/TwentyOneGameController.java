package com.org.twentyonegame;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


@Controller
@SessionAttributes("username")
public class TwentyOneGameController {
	
	@Autowired
	CustomValidator validator;
	
	@RequestMapping("/login")
	public String login(Model model) {
	     //return new ModelAndView("login", "command", new Login());
		model.addAttribute("login" , new Login());
		return "login";
	}
	
	TwentyOneGameController()
	{}
	
    @RequestMapping(value = "/startgame")
    public ModelAndView displayStartGame(@ModelAttribute("login")Login login, 
    		   ModelMap model , BindingResult result) {
    		      //model.addAttribute("username", login.getUserName());
    	
    	validator.validate(login, result);
        
        //Check validation errors
        if (result.hasErrors()) {
        	
        	ModelAndView modelAndView = new ModelAndView();
	         modelAndView.addObject("username", login.getUserName());
	         modelAndView.setViewName("login");
            return modelAndView;
        }
    		      
    		      ModelAndView modelAndView = new ModelAndView();
    		      modelAndView.addObject("username", login.getUserName());
    		      modelAndView.setViewName("startgame");
    		        return modelAndView;
    		     
    }
    
    @RequestMapping(value = "/startgamedirect")
    public ModelAndView redirectStartGame(@ModelAttribute("login")Login login, 
    		   ModelMap model) {
    		      //model.addAttribute("username", login.getUserName());
    		      
    		      ModelAndView modelAndView = new ModelAndView();
    		        //modelAndView.addObject("username", login.getUserName());
    		        modelAndView.setViewName("startgame");
    		        return modelAndView;
    		     
    }
    
    
    
    @RequestMapping(value = "/counter")
    public String displayCounterpage(Model model)
    {
    	Counter counter = new Counter();
    	model.addAttribute("counter" , counter);
    	return "counter";
    }
    
    
    @RequestMapping(value = "/process")
    public String processInput(@ModelAttribute("counter")Counter counter, ModelMap model)
    {
    	int player = Integer.valueOf(counter.getCount());
    	int computer = 4 - player;
    	int sum = counter.getSum() + player;
    	if(sum == 21)
    	{
    		 model.addAttribute("winner", counter.getUser());
    		 return "winner";
    	}
    	
    	sum = sum + computer;
    	if(sum == 21)
    	{
    		model.addAttribute("winner", "Computer");
   		    return "winner";
    	}
    	else
    	{
    		
    		 model.addAttribute("sum", sum);
    		 model.addAttribute("cntPlayerOne", computer);
    		 model.addAttribute("cntPlayerTwo", player);
    		 //model.addAttribute("username", counter.getUser());
    		 Counter c = new Counter();
    		 c.setSum(sum);
    		 c.setCntPlayerOne(computer);
    		 c.setCntPlayerTwo(player);
    		 //c.setUser(counter.getUser());
    		 model.addAttribute(c);
    		 return "counter";
    	}
    	
    	
    	
    }
}
