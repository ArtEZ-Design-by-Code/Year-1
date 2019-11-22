void setup() {
  size(500, 500);
  
  Person dude = new Person("Michael", 24);
  dude.introduce();
  
  Person dudette = new Person("Jacqueline", 72);
  dudette.introduce();
}

class Person {
  String name;
  int age;
 
  Person(String inputName, int inputAge) { // constructor
    this.name = inputName;
    this.age = inputAge;
  }
  
  void introduce() {
    println("Hi, my name is " + this.name + " and I am " + this.age + " years old.");
  }
}
