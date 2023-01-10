package entity;

import java.util.Date;

public class Article {
	private int id;
	private String title;
	private String content;
	private String thumbnail;
	private String imageLink;
	private Date createOn;
	private int tagid;
	private String publicDate;
	private int countView;
	public Article() {
		// TODO Auto-generated constructor stub
	}
	public Article(int id, String title, String content, String thumbnail, String imageLink, Date createOn, int tagid) {
	
		this.id = id;
		this.title = title;
		this.content = content;
		this.thumbnail = thumbnail;
		this.imageLink = imageLink;
		this.createOn = createOn;
		this.tagid = tagid;
	}
	public Article(int id, String title, String content, String thumbnail, String imageLink, String createOn, int tagid) {
		
		this.id = id;
		this.title = title;
		this.content = content;
		this.thumbnail = thumbnail;
		this.imageLink = imageLink;
		this.publicDate = createOn;
		this.tagid = tagid;
	}
	public Article(int id, String title, String content, String thumbnail, String imageLink, String createOn, int tagid, int view) {
			
			this.id = id;
			this.title = title;
			this.content = content;
			this.thumbnail = thumbnail;
			this.imageLink = imageLink;
			this.publicDate = createOn;
			this.tagid = tagid;
			this.countView = view;
		}
	
	public int getCountView() {
		return countView;
	}
	public void setCountView(int countView) {
		this.countView = countView;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getImageLink() {
		return imageLink;
	}
	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}
	public Date getCreateOn() {
		return createOn;
	}
	public void setCreateOn(Date createOn) {
		this.createOn = createOn;
	}
	public int getTagid() {
		return tagid;
	}
	public void setTagid(int tagid) {
		this.tagid = tagid;
	}
	public String getPublicDate() {
		return publicDate;
	}
	public void setPublicDate(String publicDate) {
		this.publicDate = publicDate;
	}
	
	
}
