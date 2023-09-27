
abstract class Accountant {
  void graphicCount ();
}

class DataBase extends Accountant{
  String url;
  
  DataBase(this.url); // Create this take a lot of time

  @override
  void graphicCount() {
    print('supose this is a grapic');
  }
  
}

class ProxyBD extends Accountant{
  String url;
  bool isInitialized = false;
  late DataBase dataBase;

  ProxyBD(this.url);

  @override
  void graphicCount() {
    if (!isInitialized){
      dataBase = DataBase(url);
      print('Data base create');
      dataBase.graphicCount();
      isInitialized = !isInitialized;
    } else  {
      dataBase.graphicCount();
    }
  }

}