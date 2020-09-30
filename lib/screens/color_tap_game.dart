import 'dart:math';

import 'package:flutter/material.dart';

class ColorChangeTapGame extends StatefulWidget {
  @override
  _ColorChangeTapGameState createState() => _ColorChangeTapGameState();
}

class _ColorChangeTapGameState extends State<ColorChangeTapGame> {
  Color kutuRengi =Colors.transparent;
  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height =MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Theme.of(context).primaryColorDark,
        child: Stack(
          
          children: [
            Positioned(
              bottom: height*4/7+height/20,
              left: width/5,
              right: width/5,
              child: Container(
                child: RaisedButton(
                  onPressed: (){
                    rstgele();
                  },


                  child: Text("Başla"),

                ),
              ),
            ),
            Positioned(
              bottom: width/50,
              left: (width-width*7/8)/2,
              child: Container(
                height: height*4/7,
                width: width*7/8,
                decoration: BoxDecoration(
                  border: Border.all(color:Theme.of(context).cursorColor,width:7 ),
                  color: kutuRengi,
                ),
              ),
            )


          ],
        ),
      ),
    );
  }

  rstgele() {
    Future.delayed(Duration(seconds: Random().nextInt(5)),()
    {
      kutuRengi=Colors.red;
      setState(() {

      });
      Future.delayed(Duration(seconds: 10),(){
        setState(() {
          kutuRengi=Colors.yellow;
        });
      }

      );


    }
    );
  }
}
