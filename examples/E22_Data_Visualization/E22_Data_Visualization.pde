BookVisual[] bookVisuals;

void setup() {
  size(1280, 720);
  
  textFont(createFont("ComicSansMS", 18));
  
  colorMode(HSB, 360, 100, 100);
  
  Table booksTable = loadTable("books.csv", "header");
  
  int numberOfRows = booksTable.getRowCount();
  int maxNumberOfBooks = 100;
  int actualNumberOfBooks = min(numberOfRows, maxNumberOfBooks);
  
  bookVisuals = new BookVisual[actualNumberOfBooks];
  
  for (int i=0; i<actualNumberOfBooks; i++) {
    TableRow row = booksTable.getRow(i);
  
    String titleFromCSV = row.getString("title");
    float ratingFromCSV = row.getFloat("average_rating");
    String authorsFromCSV = row.getString("authors");
    String imageURLFromCSV = row.getString("small_image_url");
    
    BookInfo oneSingleBook = new BookInfo(titleFromCSV, authorsFromCSV, imageURLFromCSV, ratingFromCSV);
    
    bookVisuals[i] = new BookVisual(oneSingleBook);
  }
}

void draw() {
  background(0, 0, 100);
  
  for (int i=0; i<bookVisuals.length; i++) {
    bookVisuals[i].update();
    bookVisuals[i].display();
  }
  
  surface.setTitle(frameRate + "fps");
}
