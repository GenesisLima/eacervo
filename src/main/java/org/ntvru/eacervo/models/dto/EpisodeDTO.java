package org.ntvru.eacervo.models.dto;

import java.util.Date;

public class EpisodeDTO {

	private int episodeId;
	private String episodeName;
	private Date episodeExhibitionDate;
	private int episodeDuration;
	private String productName;
	
	
	public EpisodeDTO() {
		
	}
	
	


	public EpisodeDTO(int episodeId, String episodeName, Date episodeExhibitionDate, int episodeDuration,
			String productName) {
		super();
		this.episodeId = episodeId;
		this.episodeName = episodeName;
		this.episodeExhibitionDate = episodeExhibitionDate;
		this.episodeDuration = episodeDuration;
		this.productName = productName;
	}




	public int getEpisodeId() {
		return episodeId;
	}


	public void setEpisodeId(int episodeId) {
		this.episodeId = episodeId;
	}


	public String getEpisodeName() {
		return episodeName;
	}


	public void setEpisodeName(String episodeName) {
		this.episodeName = episodeName;
	}


	public Date getEpisodeExhibitionDate() {
		return episodeExhibitionDate;
	}


	public void setEpisodeExhibitionDate(Date episodeExhibitionDate) {
		this.episodeExhibitionDate = episodeExhibitionDate;
	}


	public int getEpisodeDuration() {
		return episodeDuration;
	}


	public void setEpisodeDuration(int episodeDuration) {
		this.episodeDuration = episodeDuration;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}

	
	
}
