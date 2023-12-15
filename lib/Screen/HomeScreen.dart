import 'package:flutter/material.dart';

import '../Style/Style.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenUI();
  }
}

class HomeScreenUI extends State<HomeScreen> {
  int? SUM = 0;

  @override
  Widget build(BuildContext context) {
    IncreaseNumber() {
      setState(() {
        SUM = (SUM! + 1);
      });
    }

    DecreaseNumber() {
      setState(() {
        if(SUM == 0){
          ErrorToast("You can't Decrease!");
        }else{
          SUM = (SUM! - 1);
        }
      });
    }

    ResetNumber() {
      setState(() {
          SUM = 0;
      });
    }

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Score App"),
      ),

      floatingActionButton:FloatingActionButton(onPressed: (){ResetNumber();}, child: Icon(Icons.refresh),),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Text("Score", style: HeadTextStyle(colorGreen, 50),),
            sizedBox,
                Text(
                  SUM.toString(),
                  style: HeadTextStyle(colorDarkBlue, 100),
                ),

                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: AppButtonStyle(colorDarkBlue),
                      child: Text('Increase', style: HeadTextStyle(colorWhite, 20),),
                      onPressed: () {
                        IncreaseNumber();
                      },
                    ),

                    SizedBox(width: 5,),

                    ElevatedButton(
                      style: AppButtonStyle(colorRed),
                      child: Text('Decrease', style: HeadTextStyle(colorWhite, 20),),
                      onPressed: () {
                        DecreaseNumber();
                      },
                    ),

                  ],
                ),
              ],
            ),
        ),

    );
  }
}
