import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies/splash/splash_screen.dart';
import 'package:movies/view/Home/HomeScreen.dart';

import 'package:provider/provider.dart';

import 'api/api.dart';

void main ( ){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black, // status bar color,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light

  ));
  runApp(ChangeNotifierProvider(child: MyApp() ,
  create: (ctx)  => ApiManager(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.route_name ,
      routes: {
        SplashScreen.route_name:(ctx)=> SplashScreen(),
        FirstScreen.route_name :(ctx)=> FirstScreen(),
      } ,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff121312) ,
      ),

    );
  }
}
