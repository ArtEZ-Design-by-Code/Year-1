class PhoneBrand {
  String name;
  ArrayList<Phone> phones;
  
  PhoneBrand(String inputName) {
    this.name = inputName;
    this.phones = new ArrayList<Phone>();
  }
  
  void print() {
    println(name);
    
    for (Phone phone: phones) {
      phone.print();
    }
  }
}
