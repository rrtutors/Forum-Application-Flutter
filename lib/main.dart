import 'package:flutter/material.dart';
import 'package:practice1/forum.dart';
import 'package:practice1/forum_detail.dart';
import 'package:practice1/login/login.dart';
import 'package:practice1/model/scopemodel.dart';
import 'assets/colors.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(new MyApp());
MyScopeModel model=new MyScopeModel();
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<MyScopeModel>(
      model:model ,
      child: new MaterialApp(
        title: 'Forum',
        theme: new ThemeData(
          primarySwatch: AppColorsTheme.myTheme.primarySwatch,
        ),
        routes: <String, WidgetBuilder>{
          '/':      (BuildContext context) => new LoginPage(),
          '/forum': (BuildContext context) => new ForumPage(title: 'Forum',),
          '/forum/1': (BuildContext context) => new ForumDetailPage(),
        },
        initialRoute: '/',
      )
    );

  }
}
