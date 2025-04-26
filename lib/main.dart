import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:remobridgeapplication/view/home_page.dart';
import 'package:remobridgeapplication/view/qrcode_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCcEKYVTRhShTPy4ygXZ5yjlXkk3kU2ONM" ,// dotenv.env['APIKEY']!,
          appId: "1:298456778897:web:a851de03ca8213c269d730",//dotenv.env['APPID']!,
          messagingSenderId: "298456778897", //dotenv.env['MESSAGINGSENDERID']!,
          projectId: "remobridgeapplication", //dotenv.env['PROJECTID']!
      ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'REMOBRIDGE -APPLICATION',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const HomePage()),
        GetPage(name: "/qrcode", page: () => const QrcodePage()),
      ],
    );
  }
}
