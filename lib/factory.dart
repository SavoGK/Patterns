
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
  static Wire newWire (TypeWire tw, int long) {
    switch (tw) {
      case TypeWire.lowVoltage: return Wire(1.5, long);
      case TypeWire.mediumVoltage: return Wire(4, long);
      case TypeWire.highVoltage: return Wire(7.5, long);
    }
  }
}