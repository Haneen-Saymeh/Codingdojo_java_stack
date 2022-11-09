package com.haninz.lookify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.haninz.lookify.models.Song;
import com.haninz.lookify.repositories.SongRepository;

@Service
public class SongService {
	private final SongRepository songRepository;

	
	public SongService(SongRepository songRepository) {
		this.songRepository= songRepository;
		
	}
	
	public Song creatsong(Song song) {
		return songRepository.save(song);
	}
	
	public Song findone(Long id) {
		Optional <Song> optionalSong = songRepository.findById(id);
		if (optionalSong.isPresent()) {
			return optionalSong.get();
		}
		else {
			return null;
		}
	}
	
	public List<Song> findAllsongs(){
		return songRepository.findAll();
	}
	
	public void delsong(Long id) {
		Song song = findone(id);
		songRepository.delete(song);
		
	}
	
	public List<Song> findTop(){
		return songRepository.findTop10ByOrderByRatingDesc();
	}
	
	public List<Song> searchartist(String artist){
		return songRepository.findByArtist(artist);
	}
}
