class BookInfo {
  String title;
  String authors;
  String imageURL;
  float rating;
  
  BookInfo(
    String inputTitle,
    String inputAuthors,
    String inputImageURL,
    float inputRating
    ) {
      title = inputTitle;
      authors = inputAuthors;
      imageURL = inputImageURL;
      rating = inputRating;
  }
}
