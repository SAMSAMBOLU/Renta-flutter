// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sample/screens/Sign%20in/CustomerSignIn.dart';
// import 'package:sample/screens/Sign%20up/customer_signup.dart';


class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpForm(),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
        //  backgroundColor: Colors.teal,
        // title: Text('Sign Up Form'),
      // ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
            child: Text("Welcome to Renta",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
           Center(child:Text("Sign up to Renta as customer", style: TextStyle(fontSize: 18)) ,
           ),
            SizedBox(height: 20,),
            SizedBox(height: 20.0),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',labelStyle: TextStyle(fontSize: 20),
                prefixIcon: Icon(Icons.person,color: Colors.black,size: 36.0),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _usernameController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.supervised_user_circle_sharp, color: Colors.black, size: 36.0),
                labelText: 'Username',labelStyle: TextStyle(fontSize: 20),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, color: Colors.black,size: 36.0),
                labelText: 'Password',labelStyle: TextStyle(fontSize: 20),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.teal
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomerSignIn()),
                  );
                  // Implement your sign-up logic here
                  // String name = _nameController.text;
                  // String Username= _usernameController.text;
                  // String password = _passwordController.text;
                  // print('Name: $name, Username: $_usernameController, Password: $password');
                },
                child: Text('Sign Up',style: TextStyle(fontSize: 20)),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 50,height: 20,),
                Text("Already have an account?", style: TextStyle(fontSize: 20),),

                InkWell(
                  onTap:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CustomerSignIn()),
                    );
                  }, 
                  child: Text("sign in", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}




// class SignUpForm extends StatefulWidget {
//   @override
//   _SignUpFormState createState() => _SignUpFormState();
// }

// class _SignUpFormState extends State<SignUpForm> {
//   TextEditingController _nameController = TextEditingController();
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(20.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           SizedBox(height: 20.0),
//           TextField(
//             controller: _nameController,
//             decoration: InputDecoration(
//               labelText: 'Name',
//               border: OutlineInputBorder(),
//             ),
//           ),
//           SizedBox(height: 20.0),
//           TextField(
//             controller: _emailController,
//             keyboardType: TextInputType.emailAddress,
//             decoration: InputDecoration(
//               labelText: 'Email',
//               border: OutlineInputBorder(),
//             ),
//           ),
//           SizedBox(height: 20.0),
//           TextField(
//             controller: _passwordController,
//             obscureText: true,
//             decoration: InputDecoration(
//               labelText: 'Password',
//               border: OutlineInputBorder(),
//             ),
//           ),
//           SizedBox(height: 20.0),
//           ElevatedButton(
//             onPressed: () {
//               // Implement your sign-up logic here
//               String name = _nameController.text;
//               String email = _emailController.text;
//               String password = _passwordController.text;
//               print('Name: $name, Email: $email, Password: $password');
//             },
//             child: Text('Sign Up'),
//           ),
//         ],
//       ),
//     );
//   }
// }