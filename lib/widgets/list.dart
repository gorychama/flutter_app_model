import 'package:flutter/material.dart';
import 'package:flutter_app_model/Const.dart';

class list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return Center(child:
    Container(child:
    Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ Container(
          margin: EdgeInsets.symmetric(vertical: 30.0),
          height: 40.0,
          padding: const EdgeInsets.only(left:50.0,right: 50.0),
          // alignment:,
          child: ListView(
            scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[
              Container(
                width: 40,
                decoration:BoxDecoration(
                    color: Colors.blue[900],
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image:AssetImage(Const.listicon[0]))

                )
              ),
                Container(
                    width: 20,
                  // color: Colors.blue[900],


                ),
              Container(
                width: 40.0,
                  decoration:BoxDecoration(
                      color: Colors.blue[900],
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:AssetImage(Const.listicon[1]))

                  )              ),
                Container(
                  width: 20,
                  // color: Colors.blue[900],


                ),
              Container(
                width: 40.0,
                  decoration:BoxDecoration(
                      color: Colors.blue[900],
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:AssetImage(Const.listicon[2]))

                  )              ),
                Container(
                  width: 20,
                  // color: Colors.blue[900],


                ),
              Container(
                width: 40.0,
                  decoration:BoxDecoration(
                      color: Colors.blue[900],
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:AssetImage(Const.listicon[3]))

                  )              )
    ]
    ))]
    )
    )
    )

    ;

  }

}
