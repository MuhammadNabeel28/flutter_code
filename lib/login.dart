import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),
          fit: BoxFit.cover,
          ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:  Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 50, top: 150),
                child: const Text(
                  'Welcome\nBack', style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.normal,
                 fontSize: 33
                ),
                ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5, right: 35, left: 35),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                   fillColor: Colors.grey.shade100,
                   filled: true,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,

                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                   fillColor: Colors.grey.shade100,
                   filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                 const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sign in', style: 
                    TextStyle(
                      fontSize: 27, 
                      fontWeight: FontWeight.w700
                      ),
                    ),
                   CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff4c505b),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward), 
                      ),
                  )
                  ],

                ),
              ]),
            ),
          ],
        ),

      ),
    );
  }
}