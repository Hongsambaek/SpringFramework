package kr.or.ddit.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CommonController {

   private static final Logger log = LoggerFactory.getLogger(CommonController.class);
   
   @GetMapping("/accessError")
   public void accessDenied(Authentication auth, Model model) {
      log.info("# access denined....!");
      log.info("auth : " + auth);
      
      /*
          auth 출력 정보
          org.springframework.security.authentication.UsernamePasswordAuithenticationToken@418yddd:
          Principal : org.springframework.security.core.Userdetails.User@84h7f4f
          Username : member;
          Password : [PROTECTED];
          Enabled : true;
          AccountNonExpired : true;
          credentialsNonExpired : true;
          AccountNotLocked : true,
          Granted Authroities : ROLE_MEMBER,
          Credentials : [PROTEECTED];
          Authenticated : true;
          Details : org.springframework.security.web.authentication.WebAutehnticationDetails@23r89u34d;
          SessionId : BILEUDEDUH243HUDSKLAJD;
       */
      
      model.addAttribute("msg", "Access Denied");
   }
   
}
