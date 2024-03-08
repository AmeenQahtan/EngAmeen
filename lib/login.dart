import 'package:flutter/material.dart';
import 'package:maly1/forgetpass.dart';
import 'package:maly1/loginup.dart';
import 'package:maly1/singup.dart';

class LoginScrren extends StatefulWidget {
  const LoginScrren({super.key});

  @override
  State<LoginScrren> createState() => _LoginScrrenState();
}

class _LoginScrrenState extends State<LoginScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Welcom',
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 3),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget> [
              const SizedBox(height: 20),

              Image.asset('assets/images/logo.jpg',
                width: 250, height: 250,
              ),
              const SizedBox(height: 50,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'User name',
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.remove_red_eye),
                  enabledBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 45,),
              MaterialButton(
                  elevation: 5.0,
                  color: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 80
                  ),
                  child: const Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return const LoginUp();
                    }));
                  }
              ),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const Password();
                  }));                },
                child: Text('Forget the password'
                    ,style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    )
                ),
              ),
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const SingUp();
                  }));
                },
                child: Text('Sing Up'
                    ,style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

