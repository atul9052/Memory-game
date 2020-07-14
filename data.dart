import 'package:fluttergame/ui/gamepage.dart';
int points =700;
bool selected = false;
String selectedimageassetpath = "";
int selectedtileindex;
List <Tilemodel> visiblepairs = new List<Tilemodel>();
List <Tilemodel> pairs = new List<Tilemodel>();
List<Tilemodel> getpairs(){
  List<Tilemodel> pairs = new List<Tilemodel>();
  Tilemodel tilemodel = new Tilemodel();
tilemodel.setimageasstpath("assets/fox.png");
tilemodel.setisselected(false);
pairs.add(tilemodel);
pairs.add(tilemodel);


   tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/hippo.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);

  tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/horse.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);

  tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/monkey.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);

  tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/panda.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);

  tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/parrot.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);

  tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/zoo.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);

  tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/rabbit.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);

  return pairs;
}

List<Tilemodel> getquestions(){
  List<Tilemodel> pairs = new List<Tilemodel>();
  Tilemodel tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/question.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);


  tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/question.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);

  tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/question.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);

  tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/question.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);

  tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/question.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);

  tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/question.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);

  tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/question.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);

  tilemodel = new Tilemodel();
  tilemodel.setimageasstpath("assets/question.png");
  tilemodel.setisselected(false);
  pairs.add(tilemodel);
  pairs.add(tilemodel);

  return pairs;
}