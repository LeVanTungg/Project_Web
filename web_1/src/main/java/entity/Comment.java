package entity;

public class Comment {
		private int cid;
		private String content;
		public Comment() {
			// TODO Auto-generated constructor stub
		}
		public Comment(int cid, String content) {
			this.cid = cid;
			this.content = content;
		}
		public int getCid() {
			return cid;
		}
		public void setCid(int cid) {
			this.cid = cid;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		@Override
		public String toString() {
			return "Comment [cid=" + cid + ", content=" + content + "]";
		}
		
		
}
