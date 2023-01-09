package entity;

public class Cate {
	private int cid;
	private String cate;
	public Cate() {
		// TODO Auto-generated constructor stub
	}
	public Cate(int cid, String cate) {
		super();
		this.cid = cid;
		this.cate = cate;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	@Override
	public String toString() {
		return "Cate [cid=" + cid + ", cate=" + cate + "]";
	}
	
}
