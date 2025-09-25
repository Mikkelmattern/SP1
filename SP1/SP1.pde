void setup() {

  size(482*2, 214*2); // Billedets størrelse

  background(32, 52, 79); // Blå baggrund

  drawLine(5, width/2, 0, width/2, height); // Kalder på metoden der laver den hvide streg i midten

  // Laver alle landende i et array
  Country[] countries = {

    new Country("RUSSIA", 'A', "Russia_flag.png"),
    new Country("SAUDI ARABIA", 'A', "SaudiArabia_flag.png"),
    new Country("EGYPT", 'A', "Egypt_flag.png"),
    new Country("URUGUAY", 'A', "Uruguay_flag.png"),

    new Country("PORTUGAL", 'B', "Portugal_flag.png"),
    new Country("SPAIN", 'B', "Spain_flag.png"),
    new Country("MOROCCO", 'B', "Morocco_flag.png"),
    new Country("IRAN", 'B', "Iran_flag.png"),

    new Country("FRANCE", 'C', "France_flag.png"),
    new Country("AUSTRALIA", 'C', "Austraila_flag.png"),
    new Country("PERU", 'C', "Peru_flag.png"),
    new Country("DENMARK", 'C', "Denmark_flag.png"),

    new Country("ARGENTINA", 'D', "Argentina_flag.png"),
    new Country("ICELAND", 'D', "Iceland_flag.png"),
    new Country("CROATIA", 'D', "Croatia_flag.png"),
    new Country("NIGERIA", 'D', "Nigeria_flag.png"),
  };
  int boxW = 360, boxH = 38; // Størrelsen på boksene
 // For-loop der kører landene igennem og deler den op i to rækker
  for (int i = 0; i <countries.length; i++) {
    int col = (i < 8) ? 0 : 1;
    int row = i % 8;
    int x = (col == 0) ? (width / 4) - (boxW / 2) : 
    (width * 3 / 4) - (boxW / 2); // Sætter boksene i den ene eller den anden kolonne afhængigt af om col er 1 eller 0, og sætter dem i midten
    
    // Skaber hullet mellem grupperne i samme kolonne
    int baseY = (countries[i].group == 'A' || countries[i].group == 'C') ? (60 + row * 44)-30:
      60 + row * 44;
      
      // Tegner teksten, boksene og cappen
    countries[i].drawCountry(x, baseY, boxW, boxH);
  }
  // Kalder på drawGroupText
  int groupTextMargin = 10;
  countries[0].drawGroupText(width/4, 0); //Group A
  countries[4].drawGroupText(width/4*3, 0); // Group B
  countries[8].drawGroupText(width/4, height/2-groupTextMargin); // Group C
  countries[12].drawGroupText(width/4*3, height/2-groupTextMargin); // Group D
}
