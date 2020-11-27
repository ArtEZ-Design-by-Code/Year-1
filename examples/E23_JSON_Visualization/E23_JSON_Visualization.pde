String[] months = {
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December"
};

void setup() {
  size(1200, 600);
  
  background(0);
  
  PImage map = loadImage("map.jpg");
  image(map, 0, 0, width, height);
  
  JSONArray myJSONArray = loadJSONArray("data.json");
  
  for (int i=0; i<myJSONArray.size(); i++) {
    JSONObject myJSONObject = myJSONArray.getJSONObject(i);
    
    String timestamp = myJSONObject.getString("timestamp");
    float longitude = myJSONObject.getFloat("longitude");
    float latitude = myJSONObject.getFloat("latitude");
    
    JSONArray jsonTags = myJSONObject.getJSONArray("tags");
    String[] tags = new String[jsonTags.size()];
    
    for (int j = 0; j<tags.length; j++) {
      tags[j] = jsonTags.getString(j);
    }
    
    float x = map(longitude, -180, 180, 0, width);
    float y = map(latitude, -90, 90, height, 0);
    
    String dateString = timestamp.substring(0, 10);
    String[] dateArray = split(dateString, "-");

    int year = parseInt(dateArray[0]);
    int monthIndex = parseInt(dateArray[1]) - 1;
    String month = months[monthIndex];
    int day = parseInt(dateArray[2]);
   
    // Presentation:
    
    pushMatrix();
    translate(x, y);
    fill(255, 0, 0);
    noStroke();
    ellipse(0, 0, 10, 10);
    
    fill(0);
    noStroke();
    text(day + " " + month + " " + year, 10, 0);
    
    fill(255);
    noStroke();
    for (int j=0; j<tags.length; j++) {
      text(tags[j], 10, (j + 2) * 15);
    }
    popMatrix();
  }
}
