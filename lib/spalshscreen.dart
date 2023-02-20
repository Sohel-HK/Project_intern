import 'package:flutter/material.dart';
import 'Bottom_Controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value){
      Navigator.push(context, MaterialPageRoute(builder: (_)=>const BottomNavController()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Loading...",style: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.w700),),
            SizedBox(height: 15),
            const CircularProgressIndicator(color: Colors.green,),
          ],
        ),
      ),
    );
  }
}
