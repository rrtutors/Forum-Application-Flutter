import 'package:flutter/material.dart';
import 'package:practice1/model/category.dart';
import 'package:practice1/model/listdata.dart';

const myIcons = <String, IconData> {
  'landscape': Icons.landscape,
  'headset': Icons.headset,
  'movie': Icons.movie,
  'place': Icons.place,
  'cake': Icons.cake,
  'book': Icons.book,
  'games': Icons.games,
  'mobile_screen_share': Icons.mobile_screen_share,
};


CategoryIcon fromJson(m)
{
  IconData icon=myIcons['${m['icon']}'];
  print("Icons");
  print(icon);
  return CategoryIcon(icon,m['name'],m['id']);
}

var myForums=<int,List<ListEntry>>{
  1:[
    new ListEntry("Nature 1", "test", "description 1", 54, 2, true),
    new ListEntry("Nature 2", "test", "description 2",  154, 3,false),
    new ListEntry("Nature 3", "test", "description 3", 971, 0, false),
    new ListEntry("Nature 4", "test", "description 4",  124, 2,true),
    new ListEntry("Nature 5", "test", "description 5",  412, 5,true),
    new ListEntry("Nature 6", "test", "description 6",  12, 1,true),
  ],
  2:[
    new ListEntry("Music 1", "test", "description 1", 54, 2, true),
    new ListEntry("Music 2", "test", "description 2",  154, 3,false),
    new ListEntry("Music 3", "test", "description 3", 971, 0, false),
    new ListEntry("Music 4", "test", "description 4",  124, 2,true),
    new ListEntry("Music 5", "test", "description 5",  412, 5,true),
    new ListEntry("Music 6", "test", "description 6",  12, 1,true),
  ],
  3:[
    new ListEntry("Movies 1", "test", "description 1", 54, 2, true),
    new ListEntry("Movies 2", "test", "description 2",  154, 3,false),
    new ListEntry("Movies 3", "test", "description 3", 971, 0, false),
    new ListEntry("Movies 4", "test", "description 4",  124, 2,true),
    new ListEntry("Movies 5", "test", "description 5",  412, 5,true),
    new ListEntry("Movies 6", "test", "description 6",  12, 1,true),
  ],
  4:[
    new ListEntry("Places 1", "test", "description 1", 54, 2, true),
    new ListEntry("Places 2", "test", "description 2",  154, 3,false),
    new ListEntry("Places 3", "test", "description 3", 971, 0, false),
    new ListEntry("Places 4", "test", "description 4",  124, 2,true),
    new ListEntry("Places 5", "test", "description 5",  412, 5,true),
    new ListEntry("Places 6", "test", "description 6",  12, 1,true),
  ],
  5:[
    new ListEntry("Food 1", "test", "description 1", 54, 2, true),
    new ListEntry("Food 2", "test", "description 2",  154, 3,false),
    new ListEntry("Food 3", "test", "description 3", 971, 0, false),
    new ListEntry("Food 4", "test", "description 4",  124, 2,true),
    new ListEntry("Food 5", "test", "description 5",  412, 5,true),
    new ListEntry("Food 6", "test", "description 6",  12, 1,true),
  ],
  6:[
    new ListEntry("Books 1", "test", "description 1", 54, 2, true),
    new ListEntry("Books 2", "test", "description 2",  154, 3,false),
    new ListEntry("Books 3", "test", "description 3", 971, 0, false),
    new ListEntry("Books 4", "test", "description 4",  124, 2,true),
    new ListEntry("Books 5", "test", "description 5",  412, 5,true),
    new ListEntry("Books 6", "test", "description 6",  12, 1,true),
  ],
  7:[
    new ListEntry("Games 1", "test", "description 1", 54, 2, true),
    new ListEntry("Games 2", "test", "description 2",  154, 3,false),
    new ListEntry("Games 3", "test", "description 3", 971, 0, false),
    new ListEntry("Games 4", "test", "description 4",  124, 2,true),
    new ListEntry("Games 5", "test", "description 5",  412, 5,true),
    new ListEntry("Games 6", "test", "description 6",  12, 1,true),
  ],
  8:[
    new ListEntry("Technology 1", "test", "description 1", 54, 2, true),
    new ListEntry("Technology 2", "test", "description 2",  154, 3,false),
    new ListEntry("Technology 3", "test", "description 3", 971, 0, false),
    new ListEntry("Technology 4", "test", "description 4",  124, 2,true),
    new ListEntry("Technology 5", "test", "description 5",  412, 5,true),
    new ListEntry("Technology 6", "test", "description 6",  12, 1,true),
  ]

};
