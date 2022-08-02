import 'package:flutter/physics.dart';
import 'dart:async';
import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:untitled/helper/Db_Helper.dart';
import 'package:path/path.dart';


 class DB{
   DB._();
    static final DB instance = DB._();
     static Database? _database;

     get database async{
       if(_database != null)
         return _database;
       return await _initDataBase();
     }
     _initDataBase() async{
       return await openDatabase(
         join(await getDatabasesPath(),'inventario.db'),
         version: 1,
         onCreate: _onCreate,
       );
     }

     _onCreate(db, version) async{
        await db.execute(_itens);
     }
    String get _itens => '''
    CREATE TABLE Item(
       id INTEGET PRIMARY KEY AUTOINCREMENT,
       operador int,
       codigo varchar(10),
       quantidade decimal(19,6)
      );''';
}