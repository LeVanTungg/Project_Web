package entity;

public class Reader {
		private int readerID;
		private String readerName;
		public Reader() {
			// TODO Auto-generated constructor stub
		}
		public Reader(int readerID, String readerName) {
			super();
			this.readerID = readerID;
			this.readerName = readerName;
		}
		public int getReaderID() {
			return readerID;
		}
		public void setReaderID(int readerID) {
			this.readerID = readerID;
		}
		public String getReaderName() {
			return readerName;
		}
		public void setReaderName(String readerName) {
			this.readerName = readerName;
		}
		@Override
		public String toString() {
			return "Reader [readerID=" + readerID + ", readerName=" + readerName + "]";
		}
		
}
