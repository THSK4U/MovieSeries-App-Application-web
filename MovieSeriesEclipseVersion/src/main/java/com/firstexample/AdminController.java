package com.firstexample;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.firstexample.dao.ModerateurDao;
import com.firstexample.model.Moderateur;
import com.firstexample.model.Utilisateur;

@Controller
public class AdminController {

	private final ModerateurDao mode;

	@Autowired
    public AdminController(ModerateurDao mode) {
        this.mode = mode;
    }
    @GetMapping("/AdminUsers")
    public String Users(Model model) {
    	List<Moderateur> Mode = mode.getAllData();
        model.addAttribute("mode", Mode);
            return "AdminUsers";
    }
    @GetMapping("/saveUsers")
    public String save(@ModelAttribute Moderateur moderateur, Model model) {
            mode.saveData(moderateur);
            model.addAttribute("Smessage", "enregistré avec succès !");
            return "redirect:/AdminUsers/";
    }
}
