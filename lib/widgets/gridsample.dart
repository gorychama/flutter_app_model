import 'package:flutter/material.dart';
import 'package:flutter_app_model/model/gridModel.dart';
import 'package:google_fonts/google_fonts.dart';



class GridSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return GridView.builder(
      // scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12),
        itemCount: 4,
        physics: ScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        itemBuilder: (BuildContext ctx, index) {
          return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(gridsample[index].route);
                // print('1 was clicked');
              },
              child:Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.fromLTRB(7, 7, 0, 0),
                child: Text(gridsample[index].name,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),textAlign: TextAlign.left,),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    image : DecorationImage(
                        fit: BoxFit.fill,
                        image:AssetImage(gridsample[index].image)) ,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 4.0,
                      spreadRadius: 0.0,
                      offset: Offset(3, 3),
                    ),]
                ),



              ));
        })

    ;

  }

}