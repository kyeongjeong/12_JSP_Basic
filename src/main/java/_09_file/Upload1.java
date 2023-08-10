package _09_file;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.taglibs.standard.lang.jstl.EnumeratedMap;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload1")
public class Upload1 extends HttpServlet {

	private static final long serialVersionUID = 1L;   
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*	    
			# 파일 업로드를 수행하는 MultipartRequest 객체 생성 ( 핵심 역할 )
			
			[ 생성자의 인수 설명 ]
					
		    - 첫번째 인자는 폼에서 가져온 인자 값을 얻기 위해 request객체를 전달한다. 
			- 두번째 인자는 업로드 될 파일의 위치를 입력한다.
		    - 세번째 인자는 업로드한 모든 파일의 용량의 합의 최대치를 의미하며 최대 크기를 넘는경우 Exception이 발생한다.
		    - 네번째 인자는 한글 이름이 넘어올 경우 한글에 문제되지 않도록 인코딩을 지정한다.
			- 다섯번째 인자는 똑같은 파일을 업로드 할 경우 중복되지 않도록 파일이름을 변환해 주는 기능을 갖는다.	
		 */

		/*
			8bit     > 1Byte
			1024Byte > 1KB
			1024KB   > 1MB
			1024MB   > 1GB
			1024GB   > 1TB
		*/
		
		// 파일의 저장 경로는 웹서비스의 접근 경로가 아닌 물리적인 실제 경로를 적어주어야 한다.
		String saveDirectory = "C:\\Users\\15_web_ckj\\eclipse-workspace\\12_jsp_basic\\src\\main\\webapp\\chapter09_file\\file_repository";
		
		// MultipartRequest 이 코드가 실제로 파일 업로드를 담당하는 부분이다.
		MultipartRequest multipartRequest = new MultipartRequest(request, saveDirectory, 1024 * 1024 * 100, "utf-8", new DefaultFileRenamePolicy());
		
		/*
		multipart/form-data형식으로 전송 되었기 때문에 request.getParameter가 불가능하고
		MultipartRequest 객체의 getParamter메서드를 사용해야 한다.
		request.getParameter("uploader"); 불가능
		 */
		
		//String uploader = request.getParameter("uploader");
		String uploader = multipartRequest.getParameter("uploader");
				
		Enumeration<?> files = multipartRequest.getFileNames(); // <input type="file">인 모든 엘리먼트를 반환
		
		if (files.hasMoreElements()) { // 다음정보가 있으면
			
			String element = (String)files.nextElement();  // <input type="file"> 1개를 반환
			
			String originalFileName = multipartRequest.getOriginalFileName(element); // 서버에 업로드 '한' 파일명을 반환
			String filesystemName   = multipartRequest.getFilesystemName(element);	// 서버에 업로드 '된' 파일명을 반환
			String contentType      = multipartRequest.getContentType(element);		// 파일의 타입을 반환
			long length             = multipartRequest.getFile(element).length();	// 파일의 크기를 반환 (long타입)
			
			System.out.println("uploader : "         + uploader);
			System.out.println("element : "          + element);
			System.out.println("originalFileName : " + originalFileName);
			System.out.println("filesystemName : "   + filesystemName);
			System.out.println("contentType : "      + contentType);
			System.out.println("length : "           + length);
			
		}
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String  jsScript = "<script>";
				jsScript += "alert('파일을 업로드 하였습니다.');";
				jsScript += "location.href='fileMain';";
				jsScript += "</script>";
		out.print(jsScript);
	}
}
