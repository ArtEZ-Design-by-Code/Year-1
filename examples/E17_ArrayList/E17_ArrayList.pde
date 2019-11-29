ArrayList<PhoneBrand> phoneBrands;

void setup() {
  phoneBrands = new ArrayList<PhoneBrand>();
  
  Table phoneTable = loadTable("phones.csv", "header");
  
  for (int i=0; i<phoneTable.getRowCount(); i++) {
    TableRow phoneRow = phoneTable.getRow(i);
    
    String phoneRowBrand = phoneRow.getString("brand");
    String phoneRowName = phoneRow.getString("name");
    
    Phone phone = new Phone(phoneRowName);
    boolean brandExists = false;
    
    for (int j=0; j < phoneBrands.size(); j++) { // Looping through an ArrayList option A
      PhoneBrand phoneBrand = phoneBrands.get(j);
      
      if (phoneBrand.name.equals(phoneRowBrand)) {
        phoneBrand.phones.add(phone);
        brandExists = true;
        break;
      }
    }
    
    if (!brandExists) {
      PhoneBrand phoneBrand = new PhoneBrand(phoneRowBrand);
      phoneBrand.phones.add(phone);
      phoneBrands.add(phoneBrand);
    }
  }
  
  for (PhoneBrand phoneBrand: phoneBrands) { // Looping through an ArrayList option B
    phoneBrand.print();
  }
}
