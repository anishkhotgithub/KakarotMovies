package com.example.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.Image;
import com.example.repository.ImageRepository;

@Service
public class ImageServices 
{
	@Autowired
	private ImageRepository imageRepository;
	
	public void saveImage(Image image) {
		imageRepository.save(image);	
	}

	public List<Image> getAllActiveImages() {
		return imageRepository.findAll();
	}

	public Optional<Image> getImageById(Long id) {
		return imageRepository.findById(id);
	}
}
