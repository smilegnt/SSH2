package com.yzpc.action;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class FileUploadAction2 extends ActionSupport {
	private File uploadFile;		//用来封装上传的文件
	private String uploadFileContentType;//用来封装上传文件的类型
	private String uploadFileFileName;	//用来封装上传文件的文件名
	private String savePath;
	public File getUploadFile() {//获得上传文件
		return uploadFile;
	}
	public void setUploadFile(File uploadFile) {//设置上传文件
		this.uploadFile = uploadFile;
	}
	public String getUploadFileContentType() {//获得上传文件类型
		return uploadFileContentType;
	}
	public void setUploadFileContentType(String uploadFileContentType) {
		this.uploadFileContentType = uploadFileContentType;//设置上传文件类型
	}
	public String getUploadFileFileName() {//获得上传文件名
		return uploadFileFileName;
	}
	public void setUploadFileFileName(String uploadFileFileName) {
		this.uploadFileFileName = uploadFileFileName;//设置上传文件名
	}
	public String getSavePath() {//获得文件上传目录
		return savePath;
	}
	public void setSavePath(String savePath) {//设置文件上传目录
		this.savePath = savePath;
	}
	public String execute() throws Exception {
		InputStream is = new FileInputStream(uploadFile);//文件输入流
		String uploadPath = ServletActionContext.getServletContext()
				.getRealPath(savePath);// 设置上传文件目录
		File toFile = new File(uploadPath, this.getUploadFileFileName());// 设置目标文件
		OutputStream os = new FileOutputStream(toFile);// 创建一个输出流
		byte[] buffer = new byte[1024];//设置缓存
		int length = 0;
		while ((length = is.read(buffer)) > 0) {//读取myFile文件输出到toFile文件中
			os.write(buffer, 0, length);
		}
		is.close();//关闭输入流
		os.close();//关闭输出流
		return SUCCESS;
	}
}
