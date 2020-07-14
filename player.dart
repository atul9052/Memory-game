import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttergame/data.dart';
class gameapp extends StatefulWidget {
  @override
  _gameappState createState() => _gameappState();
}

class _gameappState extends State<gameapp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pairs = getpairs();
    pairs.shuffle();
    visiblepairs = pairs;
    selected = true;
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        visiblepairs = getquestions();
        selected = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Text("$points/800"),
          Text("Points"),
          SizedBox(
            height: 20,
          ),
          points != 800 ?
          GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100, mainAxisSpacing: 0.0),
              children: List.generate(visiblepairs.length, (index) {
                return Tile(
                  imageAssetpath: visiblepairs[index].getimageassetpath(),
                  parent: this,
                  integer: index,
                );
              })):Container(
    child: Text("replay"),
    )
        ],
      ),
    );
  }
}

class Tile extends StatefulWidget {
  String imageAssetpath;

  int integer;
  _gameappState parent;

  Tile({this.imageAssetpath, this.parent, this.integer});

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selected) {
          setState((){
            visiblepairs[widget.integer].setisselected(true);
          });
          if (selectedimageassetpath != ""){
            if (selectedimageassetpath == pairs[widget.integer].getimageassetpath()) {
              print("correct choice");
              selected=true;
              Future.delayed(const Duration(seconds: 2), () {
                points = points + 100;
                setState((){});
                 selected = false;
                widget.parent.setState(() {
                pairs[widget.integer].setimageasstpath("");
                pairs[selectedtileindex].setimageasstpath("");
                });
                selectedimageassetpath ="";
              });
            }
            else {selected=true;
              Future.delayed(const Duration(seconds: 2), (){
                selected=false;
                widget.parent.setState(() {
                  pairs[widget.integer].setisselected(false);
                  pairs[selectedtileindex].setisselected(false);
                });
                selectedimageassetpath ="";
              });
                  //wrong choice
              print("wrong choice");
            }
          } else {
            selectedtileindex = widget.integer;
            selectedimageassetpath = pairs[widget.integer].getimageassetpath();
          }
          setState(() {
            pairs[widget.integer].setisselected(true);
          });
        }
      },
      child: Container(
        margin: EdgeInsets.all(5),
        child: pairs[widget.integer].getimageassetpath() != ""
            ? Image.asset(pairs[widget.integer].getisselected()
                ? pairs[widget.integer].getimageassetpath()
                : widget.imageAssetpath)
            : Image.asset("assets/correct.png"),
      ),
    );
  }
}
