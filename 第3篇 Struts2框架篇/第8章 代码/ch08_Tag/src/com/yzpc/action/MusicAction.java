package com.yzpc.action;
import com.opensymphony.xwork2.ActionSupport;
import com.yzpc.model.Music;
public class MusicAction extends ActionSupport {
	private Music music;
	//此处省略music属性的setXxx()和getXxx()方法
	public Music getMusic() {
		return music;
	}
	public void setMusic(Music music) {
		this.music = music;
	}
	@Override
	public String execute() throws Exception {
		
		
		return "success";
	}	
}
