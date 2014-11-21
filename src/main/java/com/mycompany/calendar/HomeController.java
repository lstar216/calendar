package com.mycompany.calendar;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Qualifier;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.calendar.domain.CalendarUser;
import com.mycompany.calendar.domain.Event;
import com.mycompany.calendar.domain.EventAttendee;
import com.mycompany.calendar.service.CalendarService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	CalendarService calendarService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	//url패턴이 /이면 이 함수를 수행합니다.
	public String home(Locale locale, Model model) {
		/*
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
			*/
		List<CalendarUser> caluser = calendarService.getAllUsers();
		model.addAttribute("caluser", caluser);
		//캘린더서비스에 추가해준 getAllUsers함수를 이용하여 모든 유저들을 받아와 유저배열에 저장한 후, 모델객체에 속성으로 넣어줍니다.
		List<Event> event=calendarService.getAllEvents();
		model.addAttribute("event", event);
		//캘린더서비스의 getAllEvents함수를 이용해 모든 이벤트를 받아와 저장하고 모델객체에 속성을 주입합니다.
		List<EventAttendee> attendee=calendarService.getAllEventAttendees();
		model.addAttribute("attendee", attendee);
		//캘린더서비스에 추가해준 getAllEventAttendees함수를 이용해 모든 EventAttendee를 받아와 저장후, 모델객체에 속성으로 넣어줍니다.
		return "home";
		//WEB-INF/vies/home.jsp에 model 등 정보를 넘겨줍니다. 경로지정은 servlet-context에 있음. 
	}
	
}
