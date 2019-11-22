Ball[] bouncyBalls;

void setup() {
  size(1920, 1080);
  
  Table bookTable = loadTable("books.csv", "header");
  int nRows = min(bookTable.getRowCount(), 100);
  
  bouncyBalls = new Ball[nRows];
  
  for (int i=0; i<nRows; i++) {
    TableRow row = bookTable.getRow(i);
    String title = row.getString("original_title");
    float rating = row.getFloat("average_rating");
    float radius = constrain(map(rating, 4, 5, 5, 50), 5, 50);
    float year = row.getFloat("original_publication_year");
    color ballColor = color(
      constrain(map(year, 1950, 2000, 0, 255), 0, 255),
      0,
      constrain(map(year, 1950, 2000, 255, 0), 0, 255)
    );
    
    bouncyBalls[i] = new Ball(title, radius, ballColor);
  }
}

void draw() {
  background(255);
  
  for (int i=0; i<bouncyBalls.length; i++) {
    bouncyBalls[i].update();
    bouncyBalls[i].display();
  }
}
