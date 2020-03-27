import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:practice1/assets/colors.dart';
import 'package:scoped_model/scoped_model.dart';
import 'constants/icons.dart';
import 'model/category.dart';
import 'model/listdata.dart';
import 'model/scopemodel.dart';

class ForumPage extends StatefulWidget {
  ForumPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ForumPageState createState() => new _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {

  List<CategoryIcon>listCategory;
  @override
  void initState() {
    super.initState();
    listCategory=new List();
    print("reading");
   loadCategory();
  }

  MyScopeModel model;
   Container topCategoyIcons(model) {
     return new Container(

       alignment: Alignment.center,
       decoration: new BoxDecoration(
           gradient: new LinearGradient(
             colors: [
               AppColorsTheme.myTheme.titleBarGradientStartColor,
               AppColorsTheme.myTheme.titleBarGradientEndColor
             ],
             begin: const FractionalOffset(0.0, 0.0),
             end: const FractionalOffset(0.0, 1.0),
             stops: [0.0, 1.0],
             tileMode: TileMode.clamp,
           )),
       child: new Container(
         margin: EdgeInsets.only(top: 20,left: 10,right: 10),
         alignment: Alignment.bottomCenter,

         padding: EdgeInsets.only(bottom: 10),
         decoration: new BoxDecoration(
           color: AppColorsTheme.myTheme.secondaryGradientColor,
           // border: new Border.all(color: Colors.black, width: 1.0),
           borderRadius: new BorderRadius.only(
             topLeft: new Radius.circular(30.0),
             topRight: new Radius.circular(30.0),
           ),
         ),
         child: new Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             listCategory[0],
             listCategory[1],
             listCategory[2],
             listCategory[3],

           ],
         ),
       ),
     );
   }

   Container categoryMetric(model) {
     return new Container(
       padding: const EdgeInsets.all(5.0),
       margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
       decoration: new BoxDecoration(
         gradient: new LinearGradient(
           colors: [
             AppColorsTheme.myTheme.secondaryGradientColor,
             AppColorsTheme.myTheme.secondaryGradientColor
           ],
           begin: const FractionalOffset(0.0, 0.5),
           end: const FractionalOffset(0.0, 1.0),
           stops: [0.0, 1.0],
           tileMode: TileMode.clamp,
         ),
         // border: new Border.all(color: Colors.black, width: 1.0),
         borderRadius: new BorderRadius.only(
           bottomLeft: new Radius.circular(30.0),
           bottomRight: new Radius.circular(30.0),
         ),
       ),
       child: new Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           listCategory[4],
           listCategory[5],
           listCategory[6],
           listCategory[7],

         ],
       ),
     );
   }


   listView(MyScopeModel model) {return
     new ListView.builder(
       physics: NeverScrollableScrollPhysics(),
       itemBuilder: (BuildContext context, int index) =>
       new EntryItem(myForums[model.selectedTyep][index]),
       itemCount: myForums[model.selectedTyep].length,
       shrinkWrap: true,
     );}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        centerTitle: false,
        elevation: 0.0,
        title: new Text(
          widget.title,
          textScaleFactor: 1.3,
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: _onSearchPressed,
          ),
        ],
      ),
      body: new Container(
        child:ScopedModelDescendant<MyScopeModel>(
          builder: (context,child,model){

            this.model=model;

            return  SingleChildScrollView(
              child: Column(
                children: <Widget>[ (listCategory.length>4)?topCategoyIcons(model):Container(), Divider(height: 1,color: Colors.white,), (listCategory.length>7)?categoryMetric(model):Container(), listView(model)],
              ),
            );
          },
        ),


      ),
    );
  }
  void _onSearchPressed() {
    Navigator.pop(context);
  }

   loadCategory() {
    DefaultAssetBundle.of(context).loadString("assets/category.json")
        .then((s) {

      List list=json.decode(s) as List;
      print(list);
      setState(() { listCategory= list.map((e) => fromJson(e)).toList();});/*{
        setState(() {
          print("reading");
            listCategory.add();
          print("${listCategory.length}");
        })
      });*/
    })
        .catchError((error) {

      print(error);
    });
  }
}

