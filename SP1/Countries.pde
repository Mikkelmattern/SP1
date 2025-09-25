class Country {
  String country;
  char group;
   PImage flag;
  // Konstruktør
  Country(String country, char group, String flagFile) {
    this.country = country;
    this.group = group;
    flag = loadImage(flagFile);
  }

  //Laver landet i en metode
  void drawCountry(int x, int y, int w, int h) {
    // Laver hvid box
    noStroke();
    fill(255);
    rect(x, y, w, h);
    // Skriver landets tekst i venstre side af boxen
    int countryTextMargin0 = 5;
    int countryTextMargin1 = 10;
    textAlign (LEFT, CENTER);
    textSize(h*0.4);
    fill(0);
    text(country, x+w/countryTextMargin0+countryTextMargin1, y+h/2);
    //Laver cappen på siden i gruppens farve
    fillGroupColour();
    noStroke();
    rect(x+w, y, 10, h);
      // Sætter flaget ind, hvis der er et
    if(flag != null){
      image(flag, x, y, w/5, h);}
  }
  //Sætter cappens farve afhængigt af gruppen
  void fillGroupColour() {
    char g = Character.toUpperCase(group);
    if (g == 'A' || g == 'C') {
      fill(3, 194, 252);
    } else if (g == 'B' || g == 'D')
    {
      fill(252, 198, 3);
    } else {
      fill(0);
    }
  }
  // Skriver "GROUP" og gruppens navn på de givne koordinater
  void drawGroupText(int x, int y) {
    int marginForGroupText = 5;
    fillGroupColour();
    textAlign(CENTER, TOP);
    textSize(20);
    text("GROUP " + group, x, y+marginForGroupText);
  }
}
