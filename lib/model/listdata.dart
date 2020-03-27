import 'package:flutter/material.dart';
import 'package:practice1/assets/colors.dart';

class ListEntry {
  final String title;
  final String icon;
  final String description;
  final int views;
  final int responses;
  final bool answered;

  ListEntry(this.title, this.icon, this.description, this.views, this.responses, this.answered);
}



class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final ListEntry entry;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(3.0),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
      decoration: new BoxDecoration(
        color: AppColorsTheme.myTheme.secondaryGradientColor,
        borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
      ),
      child: new ListTile(
        title: new Text(entry.title,style: TextStyle(color: Colors.white
        ),),

        onTap: () {Navigator.pushNamed(context, '/forum/1');},
      ),
    );
  }
}