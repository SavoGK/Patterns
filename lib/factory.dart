
class Wire {
  double radius = 0;
  int long = 0;
  Wire(this.radius, this.long);

  double getRadius() => radius;
  int getLong() => long;
}

enum TypeWire {
  lowVoltage, mediumVoltage, highVoltage
}

class WireFactory {
  static Wire lowVoltage ( int long) => Wire(1.5, long);
  static Wire mediumVoltage ( int long) => Wire(4, long);
  static Wire highVoltage ( int long) => Wire(7.5, long);

}