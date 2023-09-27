import 'factory.dart';
import 'observer.dart';
import 'proxy.dart';

void main() {
  proxyPattern();
}

void observerPattern(){
  Stoplight stoplight = Stoplight();
  Pedestrian ped = Pedestrian();
  print('The pedestrian waiting for the stoplight');
  stoplight.addObserver(ped);
  while(!ped.continueWalk()){
    print('continue waiting');
    stoplight.changeStatus();
  }
  print('The pedestrina is free to contienue walking');
}

void factoryPattern() {
  print('We need 10 meters of wire for a house and 40 meters for a school');
  Wire forHouse = WireFactory.lowVoltage(10);
  print('For the house we use a wire with radius: ${forHouse.getRadius()}');
  Wire forSchool = WireFactory.mediumVoltage(40);
  print('For the school we use a wire with radius: ${forSchool.getRadius()}');
}

void proxyPattern(){
  String url = 'direction of data base';
  print('When the client want to initialized a Data Base we use the proxy');
  ProxyBD proxyBD = ProxyBD(url);
  print('Now when try to use the method, i create the data base');
  print('I put a print in the method to notice when the data base is create');
  proxyBD.graphicCount();
  proxyBD.graphicCount();
}