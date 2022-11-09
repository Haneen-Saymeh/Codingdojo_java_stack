package com.haninz.lookify.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.haninz.lookify.models.Song;
import com.haninz.lookify.services.SongService;

@Controller
public class SongController {
	private final SongService songService;
	
	public SongController(SongService songService) {
		this.songService=songService;
	}
	
	@GetMapping("/")
	public String welcome() {
		return "welcome.jsp";
	}
	
	@GetMapping("/dashboard")
	public String dash(Model model) {
		List <Song> songs = songService.findAllsongs();
		model.addAttribute("songs", songs);
		return "dashboard.jsp";
	}
	
	@GetMapping("/songs/new")
	public String newsong(@ModelAttribute("song")Song song) {
		
		return "newsong.jsp";
	}
	
	@PostMapping("/songs/create")
	public String newsong(@Valid @ModelAttribute("song")Song song,BindingResult result) {
		if (result.hasErrors()) {
			return "newsong.jsp";
		}
		else {
			songService.creatsong(song);
			return "redirect:/dashboard";
			
		}
		
		
	}
	
	@DeleteMapping("/songs/{id}")
	public String delSong(@PathVariable("id") Long id) {
		Song song = songService.findone(id);
		songService.delsong(id);
		
		return "redirect:/dashboard";
		
	}
	

	@GetMapping("/songs/{id}")
	public String onesong(@PathVariable("id") Long id,Model model) {
		Song thesong= songService.findone(id);
		model.addAttribute("thesong", thesong);
		return "onesong.jsp";
	}
	
	@GetMapping("/search/topten")
	public String toptensth(Model model){
	List <Song> topSongs = songService.findTop();
	model.addAttribute("topsongs", topSongs);
	return "topsongs.jsp";
		
	}
	
	
	
	@GetMapping("/search/art")
	public String onesong(@RequestParam(value="artist") String artist,Model model) {
	List	<Song> songsby= songService.searchartist(artist);
		model.addAttribute("songsby", songsby);
		return  "songsby.jsp";
	}
	
	
		
		

}
