class Tilemodel{
  String imageassetpath;
  bool isselected;
  Tilemodel({this.imageassetpath, this.isselected});
void setimageasstpath(String getimageassetpath){
  imageassetpath = getimageassetpath;
}
void setisselected(bool getisselected){
  isselected = getisselected;
}
String getimageassetpath(){
  return imageassetpath;
}
bool getisselected(){
  return isselected;
}
}