package com.lqg.action.product;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lqg.action.BaseAction;
import com.lqg.model.PageModel;
import com.lqg.model.product.BookItem;
import com.lqg.model.product.Video;
import com.lqg.model.product.UploadFile;
import com.lqg.util.StringUitl;
import com.opensymphony.xwork2.ModelDriven;
/**
 * 锟斤拷品Action
 * @author Li Qiuguo
 */
@Scope("prototype")
@Controller("videoAction")
public class VideoAction extends BaseAction implements ModelDriven<Video>{
	private static final long serialVersionUID = 1L;
	/**
	 * 锟斤拷锟絠d锟介看锟斤拷品锟斤拷息(锟介看锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟�
	 * @return String
	 * @throws Exception
	 */
	public String select() throws Exception {
		if(video.getId() != null && video.getId() > 0){
			video = videoDao.get(video.getId());
			video.setBrowseTimes(video.getBrowseTimes() + 1);
			videoDao.update(video);
		}
		return SELECT;
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷id锟斤拷询锟斤拷锟斤拷锟斤拷品锟斤拷息
	 * @return String
	 * @throws Exception
	 */
	public String getByBookItemId() throws Exception{
		if(video.getBookItem().getId() != null){
			String where = "where bookItem.id = ?";
			Object[] queryParams = {video.getBookItem().getId()};
			pageModel = videoDao.find(pageNo, pageSize, where, queryParams);
		}
		return LIST;
	}
	/**
	 * 锟斤拷品锟斤拷锟斤拷
	 * @return
	 * @throws Exception
	 */
	public String findNewVideo() throws Exception{
		Map<String, String> orderby = new HashMap<String, String>();//锟斤拷锟斤拷Map锟斤拷锟斤拷
		orderby.put("createTime", "desc");//为Map锟斤拷锟较革拷值
		pageModel = videoDao.find(1, 5, orderby );//执锟叫诧拷锟揭凤拷锟斤拷
		image.put("url", "01.gif");//锟斤拷锟矫革拷锟斤拷锟斤拷图片
		return "list";//锟斤拷锟斤拷锟斤拷品锟叫憋拷页锟斤拷
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷品
	 * @return
	 * @throws Exception
	 */
	public String findThankVideo() throws Exception{
		Map<String, String> orderby = new HashMap<String, String>();//锟斤拷锟斤拷Map锟斤拷锟斤拷
		orderby.put("thankCount", "desc");//为Map锟斤拷锟较革拷值
		pageModel = videoDao.find(1, 5, orderby );//执锟叫诧拷锟揭凤拷锟斤拷
		image.put("url", "03.gif");
		return "list";//锟斤拷锟斤拷锟斤拷品锟叫憋拷页锟斤拷
	}
	/**
	 * 锟狡硷拷锟斤拷品
	 * @return
	 * @throws Exception
	 */
	public String findCommendVideo() throws Exception{
		Map<String, String> orderby = new HashMap<String, String>();//锟斤拷锟斤拷Map锟斤拷锟斤拷
		orderby.put("createTime", "desc");//为Map锟斤拷锟较革拷值
		String where = "where recommended = ?";//锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟�
		Object[] queryParams = {true};//锟斤拷锟矫诧拷锟斤拷值
		pageModel = videoDao.find(where, queryParams, orderby, 1, 5);//执锟叫诧拷询锟斤拷锟斤拷
		image.put("url", "06.gif");
		return "list";//锟斤拷锟斤拷锟斤拷品锟叫憋拷页锟斤拷
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷品
	 * @return
	 * @throws Exception
	 */
	public String findEnjoyVideo() throws Exception{
		Map<String, String> orderby = new HashMap<String, String>();//锟斤拷锟斤拷Map锟斤拷锟斤拷
		orderby.put("browserTimes", "desc");//为Map锟斤拷锟较革拷值
		pageModel = videoDao.find(1, 5, orderby );//执锟叫诧拷锟揭凤拷锟斤拷
		image.put("url", "07.gif");
		return "list";//锟斤拷锟斤拷锟斤拷品锟叫憋拷页锟斤拷
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷模锟斤拷锟窖�
	 * @return String
	 * @throws Exception
	 */
	public String findByName() throws Exception {
		if(video.getName() != null){
			String where = "where name like ?";//锟斤拷询锟斤拷锟斤拷锟斤拷锟斤拷锟�
			Object[] queryParams = {"%" + video.getName() + "%"};//为锟斤拷锟斤拷值
			pageModel = videoDao.find(pageNo, pageSize, where, queryParams );//执锟叫诧拷询锟斤拷锟斤拷
		}
		image.put("url", "04.gif");
		return LIST;//锟斤拷锟斤拷锟叫憋拷锟斤拷页
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷锟窖�
	 * @return String
	 * @throws Exception
	 */
	public String findByBrowseTimes() throws Exception{
		Map<String, String> orderby = new HashMap<String, String>();//锟斤拷锟斤拷Map锟斤拷锟斤拷
		orderby.put("browseTimes", "desc");//为Map锟斤拷锟较革拷值
		pageModel = videoDao.find(1, 8, orderby );//执锟叫诧拷锟揭凤拷锟斤拷
		return "list";//锟斤拷锟斤拷product_click_list.jsp页锟斤拷
	}
	/**
	 * 锟斤拷锟狡硷拷锟斤拷询
	 * @return String
	 * @throws Exception
	 */
	public String findByCommend() throws Exception{
		Map<String, String> orderby = new HashMap<String, String>();//锟斤拷锟斤拷Map锟斤拷锟斤拷
		orderby.put("thankCount", "desc");//为Map锟斤拷锟较革拷值
		String where = "where recommended = ?";//锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟�
		Object[] queryParams = {true};//锟斤拷锟矫诧拷锟斤拷值
		pageModel = videoDao.find(where, queryParams, orderby, pageNo, pageSize);//执锟叫诧拷询锟斤拷锟斤拷
		return "findList";//锟斤拷锟斤拷product_find_list.jsp页锟斤拷
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷锟斤拷询
	 * @return String
	 * @throws Exception
	 */
	public String findByThankCount() throws Exception{
		Map<String, String> orderby = new HashMap<String, String>();//锟斤拷锟斤拷Map锟斤拷锟斤拷
		orderby.put("thankCount", "desc");//为Map锟斤拷锟较革拷值
		pageModel = videoDao.find(1, 6, orderby );//执锟叫诧拷询锟斤拷锟斤拷
		return "findList";//锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷品锟叫憋拷
	}
	
	
	/**
	 * 锟斤拷锟斤拷锟狡�
	 */
	@Override
	public String add() throws Exception {
		createBookItemTree();
		return INPUT;
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷品
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception{
		if(file != null ){//锟斤拷锟斤拷募锟铰凤拷锟斤拷锟轿拷锟�
			//锟斤拷取锟斤拷锟斤拷锟斤拷锟侥撅拷锟铰凤拷锟�
			String path = ServletActionContext.getServletContext().getRealPath("/upload");
			File dir = new File(path);
			if(!dir.exists()){//锟斤拷锟斤拷募锟斤拷胁锟斤拷锟斤拷锟�
				dir.mkdir();//锟斤拷锟斤拷锟侥硷拷锟斤拷
			}
			String fileName = StringUitl.getStringTime() + ".jpg";//锟皆讹拷锟斤拷图片锟斤拷锟�
			FileInputStream fis = null;//锟斤拷锟斤拷锟斤拷
			FileOutputStream fos = null;//锟斤拷锟斤拷锟�
			try {
				fis = new FileInputStream(file);//锟斤拷锟斤拷洗锟斤拷募锟斤拷锟斤拷锟絀nputStream实锟斤拷
				fos = new FileOutputStream(new File(dir,fileName)); //锟斤拷锟斤拷写锟斤拷锟斤拷锟斤拷锟斤拷锟街凤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷
				byte[] bs = new byte[1024 * 4]; //锟斤拷锟斤拷锟街斤拷锟斤拷锟斤拷实锟斤拷
				int len = -1;
				while((len = fis.read(bs)) != -1){//循锟斤拷锟斤拷取锟侥硷拷
					fos.write(bs, 0, len);//锟斤拷指锟斤拷锟斤拷锟侥硷拷锟斤拷锟斤拷写锟斤拷锟�
				}
				UploadFile uploadFile = new UploadFile();//实锟斤拷锟斤拷锟�
				uploadFile.setPath(fileName);//锟斤拷锟斤拷锟侥硷拷锟斤拷锟�
				video.setClipFile(uploadFile);//锟斤拷锟斤拷锟较达拷路锟斤拷
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				fos.flush();
				fos.close();
				fis.close();
			}
		}
		//锟斤拷锟斤拷锟狡凤拷锟斤拷锟斤拷锟狡凤拷锟斤拷ID锟斤拷为锟秸ｏ拷锟津保达拷锟斤拷品锟斤拷锟斤拷锟较�
		if(video.getBookItem() != null && video.getBookItem().getId() != null){
			video.setBookItem(bookItemDao.load(video.getBookItem().getId()));
		}
		//锟斤拷锟斤拷洗锟斤拷募锟斤拷锟斤拷洗锟斤拷募锟絀D锟斤拷为锟秸ｏ拷锟津保达拷锟侥硷拷锟斤拷锟较达拷路锟斤拷锟斤拷息
		if(video.getClipFile() != null && video.getClipFile().getId() != null){
			video.setClipFile(uploadFileDao.load(video.getClipFile().getId()));
		}
		videoDao.saveOrUpdate(video);//锟斤拷锟斤拷锟斤拷品锟斤拷息
		return list();
	}
	/**
	 * 锟斤拷询锟斤拷品
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception{
		pageModel = videoDao.find(pageNo, pageSize);//锟斤拷锟矫癸拷锟斤拷锟侥诧拷询锟斤拷锟斤拷
		return LIST;//锟斤拷锟截猴拷台锟斤拷品锟叫憋拷页锟斤拷
	}
	/**
	 * 锟洁辑锟斤拷品
	 * @return String
	 * @throws Exception
	 */
	public String edit() throws Exception{
		this.video = videoDao.get(video.getId());//执锟叫凤拷装锟侥诧拷询锟斤拷锟斤拷
		createBookItemTree();//锟斤拷锟斤拷锟狡凤拷锟斤拷锟斤拷锟斤拷
		return EDIT;//锟斤拷锟斤拷锟斤拷品锟斤拷息锟洁辑页锟斤拷
	}
	/**
	 * 删锟斤拷锟斤拷品
	 * @return String
	 * @throws Exception
	 */
	public String del() throws Exception{
		videoDao.delete(video.getId());//执锟斤拷删锟斤拷锟斤拷锟�
		return list();//锟斤拷锟斤拷锟斤拷品锟叫憋拷锟斤拷曳锟斤拷锟�
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷锟斤拷
	 */
	private void createBookItemTree(){
		String where = "where level=1";//锟斤拷询一锟斤拷锟节碉拷
		PageModel<BookItem> pageModel = bookItemDao.find(-1, -1,where ,null);//执锟叫诧拷询锟斤拷锟斤拷
		List<BookItem> allCategorys = pageModel.getList();
		map = new LinkedHashMap<Integer, String>();//锟斤拷锟斤拷锟铰的硷拷锟斤拷
		for(BookItem category : allCategorys){//锟斤拷锟斤拷锟斤拷锟叫碉拷一锟斤拷锟节碉拷
			setNodeMap(map,category,false);//锟斤拷锟节碉拷锟斤拷拥锟組ap锟斤拷锟斤拷锟斤拷
		}
	}
	/**
	 * 锟斤拷锟节碉拷锟斤拷锟矫碉拷Map锟斤拷
	 * @param map 锟斤拷锟斤拷锟組ap
	 * @param node 锟斤拷锟�
	 * @param flag 锟角凤拷为末锟节碉拷
	 */
	private void setNodeMap(Map<Integer, String> map,BookItem node,boolean flag){
		if (node == null) {//锟斤拷锟节碉拷为锟斤拷
			return;//锟斤拷锟截空ｏ拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟�
		}
		int level = node.getLevel();//锟斤拷取锟节点级锟斤拷
		StringBuffer sb = new StringBuffer();//锟斤拷锟斤拷锟街凤拷锟斤拷锟�
		if (level > 1) {//锟斤拷锟斤拷歉锟节碉拷
			for (int i = 0; i < level; i++) {
				 sb.append("锟斤拷");//锟斤拷涌崭锟�
			}
			sb.append(flag ? "锟斤拷" : "锟斤拷");//锟斤拷锟轿╋拷诘锟斤拷锟斤拷"锟斤拷"锟斤拷锟斤拷之锟斤拷锟�锟斤拷"
		}
		map.put(node.getId(), sb.append(node.getName()).toString());//锟斤拷锟节碉拷锟斤拷拥募锟斤拷锟斤拷锟�
		Set<BookItem> children = node.getChildren();//锟斤拷取锟斤拷锟接节碉拷	
		// 锟斤拷锟斤拷锟斤拷锟�
		if(children != null &&  children.size() > 0){//锟斤拷锟节点不为锟斤拷
			int i = 0;
			// 锟斤拷锟斤拷锟斤拷锟斤拷锟�
			for (BookItem child : children) {
				boolean b = true;
				if(i == children.size()-1){//锟斤拷锟斤拷咏诘愠わ拷燃锟�为i,说锟斤拷为末锟节碉拷
					b = false;//锟斤拷锟矫诧拷锟斤拷锟斤拷为false
				}
				setNodeMap(map,child,b);//锟斤拷锟铰碉拷锟矫该凤拷锟斤拷
			}
		}
	}
	/**
	 * 锟斤拷证锟斤拷品锟斤拷息锟角凤拷锟斤拷效
	 */
	public void validateSave() {
		if(!StringUitl.validateString(video.getName())){
			addFieldError("name", "锟斤拷品锟斤拷撇锟斤拷锟轿拷眨锟�");
		}
		if(!StringUitl.validateInt(video.getGoodCount())){
			addFieldError("baseprice", "锟缴癸拷锟桔革拷锟斤拷写锟斤拷锟斤拷");
		}
		if(!StringUitl.validateInt(video.getBadCount())){
			addFieldError("marketprice", "锟叫筹拷锟桔革拷锟斤拷写锟斤拷锟斤拷");
		}
		if(!StringUitl.validateInt(video.getThankCount())){
			addFieldError("sellprice", "锟斤拷锟桔价革拷锟斤拷写锟斤拷锟斤拷");
		}
		if(!StringUitl.validateString(video.getDesc())){
			addFieldError("name", "锟斤拷品说锟斤拷锟斤拷锟斤拷为锟秸ｏ拷");
		}
		createBookItemTree();
	}


	// 锟斤拷品锟斤拷锟斤拷
	private Video video = new Video();
	// 锟较达拷锟侥硷拷
	private File file;
	// 锟斤拷锟斤拷锟斤拷锟�
	private Map<Integer, String> map;
	// 锟斤拷页锟斤拷锟�
	private PageModel<Video> pageModel;
	
	Map<String, String> image = new HashMap<String, String>();
	
	public Map<String, String> getImage() {
		return image;
	}
	public void setImage(Map<String, String> image) {
		this.image = image;
	}
	@Override
	public Video getModel() {
		return video;
	}
	public Video getVideo() {
		return video;
	}
	public void setVideo(Video video) {
		this.video = video;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public Map<Integer, String> getMap() {
		return map;
	}
	public void setMap(Map<Integer, String> map) {
		this.map = map;
	}
	public PageModel<Video> getPageModel() {
		return pageModel;
	}
	public void setPageModel(PageModel<Video> pageModel) {
		this.pageModel = pageModel;
	}
}
