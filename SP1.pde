void setup() {
  size(482*2, 214*2);
  background(32, 52, 79);
  drawLine(255, 5, width/2, 0, width/2, height);
  Country[] countries = {
    new Country("RUSSIA", 'A'),
    new Country("SAUDI ARABIA", 'A'),
    new Country("EGYPT", 'A'),
    new Country("URUGUAY", 'A'),

    new Country("PORTUGAL", 'B'),
    new Country("SPAIN", 'B'),
    new Country("MOROCCO", 'B'),
    new Country("IRAN", 'B'),

    new Country("FRANCE", 'C'),
    new Country("AUSTRALIA", 'C'),
    new Country("PERU", 'C'),
    new Country("DENMARK", 'C'),

    new Country("ARGENTINA", 'D'),
    new Country("ICELAND", 'D'),
    new Country("CROATIA", 'D'),
    new Country("NIGERIA", 'D'),
  };

  for (int i = 0; i <countries.length; i++) {
    countries[i].drawCountry(50, 50 + i * 40, 80, 30, 255, 255, 255);
  }
}
