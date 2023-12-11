import 'package:chat_app2/helper/helper_function.dart';
import 'package:chat_app2/pages/auth/login_page.dart';
import 'package:chat_app2/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDwye5LIYD0F3HRVb1C6WNohT1RF_DUa2w",
            appId: "1:749115678649:web:3cfb2ae992a111bb366068",
            messagingSenderId: "749115678649",
            projectId: "chatappflutter-d5867")
    );
  }else{
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool _isSignedIn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserLoggedInStatus();
  }
  getUserLoggedInStatus() async{

    await HelperFunctions.getUserLoggedInStatus().then((value) {
      if (value!= null){
        _isSignedIn = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: _isSignedIn ? HomePage() : LoginPage(),
    );
  }
}

