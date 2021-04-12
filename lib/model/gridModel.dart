import 'package:flutter_app_model/Const.dart';

class gridModel {

  // element label
  String name;

  // image of eache element
  String image;

  // route page to redirect on tap action
  String route;

  gridModel(this.name,this.image,this.route);
}

List<gridModel> gridsample = [
  new gridModel(Const.gridnamemodel[0],Const.gridimage[0],Const.gridroute[0]),
  new gridModel(Const.gridnamemodel[1],Const.gridimage[1],Const.gridroute[1]),
  new gridModel(Const.gridnamemodel[2],Const.gridimage[2],Const.gridroute[2]),
  new gridModel(Const.gridnamemodel[3],Const.gridimage[3],Const.gridroute[3]),
];