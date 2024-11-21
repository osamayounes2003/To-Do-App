import 'package:flutter/material.dart';
import 'package:to_do_list/core/data_base/cache_helper.dart';
import 'package:to_do_list/core/utils/theme.dart';
import 'on_boarding/on_boarding_screen.dart';

void main() async{
  //هون واجهتني مشكلة انو الترتيب مهم أول شي الانشور ثاني شي الكاش
  WidgetsFlutterBinding.ensureInitialized() ;
  await CacheHelper().init() ;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeApp(),
      home: IntroScreen()
    );
  }
}


