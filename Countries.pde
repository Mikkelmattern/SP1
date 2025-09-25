class Country {
  String country;
  char group;

  Country(String country, char group) {
    this.country = country;
    this.group = group;}
    
    void drawCap(){
    rect(x2, y2, 30, 20);}
      
    void drawCountry(int x1, int y1, int w, int h, float c1, float c2, float c3) {
      fill(255);
      rect(x1, y1, w, h);
      textSize(10);
      text(country, x1-20, y1);
      fillColor();
      rect(x1+w, y1, 10, 30);
      
      
    }
    void fillColour() {
      char g = Character.toUpperCase(group);
      if (g == 'A' || g == 'C') {
        fill(3, 194, 252);
      } else if (g == 'B' || g == 'D')
      {
        fill(252, 198, 3);
      }
    }
