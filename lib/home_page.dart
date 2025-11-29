
import 'package:first/workspace.dart';
import 'package:flutter/material.dart';
import 'calendar.dart';
class LoginScreenState extends StatefulWidget {
  const LoginScreenState({super.key,});

  @override
  State<LoginScreenState> createState() => _LoginScreenState();
}

  class _LoginScreenState extends State<LoginScreenState> {
  bool rememberMe = false;
  bool obscure = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF003E9F),
//         title: Text(
//           "Login",
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, // bold text
//             fontSize: 30,),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(top: 110.0),
//               child: Center(
//                 child: Container(
//                     width: 200,
//                     height: 100,
//                     decoration: BoxDecoration(
//                         // color: Colors.red,
//                         // border:BoxBorder.all(style: BorderStyle.solid,color: Colors.black,width:5, ),
//                         borderRadius: BorderRadius.circular(50.0)),
//                     child: Image.asset('lib/assets/images/logo.png')),
//               ),
//             ),
//             Padding(
//               //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
//               padding: EdgeInsets.fromLTRB(40,20,40,0),
//               child: TextField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Phone number, email or username',
//                     hintText: 'Enter valid email id as abc@gmail.com'),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 40.0, right: 40.0, top: 20, bottom: 0),
//               //padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Password',
//                     hintText: 'Enter secure password'),
//               ),
//             ),
//
//             SizedBox(
//               height: 65,
//               width: 330,
//               child: Container(
//                 child: Padding(
//                   padding:  EdgeInsets.only(top: 20.0),
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xFF003E9F),
//                     ),
//                     child: Text('Log in ',
//                       style: TextStyle(color: Colors.white, fontSize: 20,),
//                     ),
//                     onPressed: () {
//                       print('Successfully log in ');
//                       Navigator.push(context, MaterialPageRoute(builder: (_)=>Workspace()));
//                     },
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Container(
//                 child: Center(
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 62),
//                         child: Text('Forgot your login details? '),
//                       ),
//
//                       Padding(
//                         padding: const EdgeInsets.only(left: 1.0),
//                         child: InkWell(
//                             onTap: () {
//                               print('hello');
//                             },
//                             child: Text(
//                               'Get help logging in.', style: TextStyle(
//                                 fontSize: 14, color: Colors.blue),)),
//                       )
//                     ],
//                   ),
//                 )
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E7CE1), // Top-Bottom gradient look
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.90,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),

                // Logo
                Container(
                  height: 55,
                  width: 140,
                  padding: EdgeInsets.all(4),
                  child: Image.asset(
                    "lib/assets/images/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Welcome to LexIq",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),

                SizedBox(height: 25),

                // Email field
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: "Email Id / Advocate Id",
                    ),
                  ),
                ),

                SizedBox(height: 15),

                // Password field
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    obscureText: obscure,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: Icon(
                            obscure ? Icons.visibility_off : Icons.visibility),
                        onPressed: () {
                          setState(() => obscure = !obscure);
                        },
                      ),
                      hintText: "Password",
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Login Button
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF00205F), Color(0xFF01A4E9)],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      print('Successfully log in');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Workspace()),
                      );
                    },
                    child: Center(
                      child: Text(
                        "LogIn",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                // Remember me + Forgot Password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: rememberMe,
                          activeColor: Colors.blue,
                          onChanged: (v) {
                            setState(() => rememberMe = v!);
                          },
                        ),
                        Text("Remember me"),
                      ],
                    ),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                // Divider
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("or Sign with"),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),

                SizedBox(height: 15),


                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget socialIcon(String url) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            color: Colors.black12,
            spreadRadius: 1,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Image.network(url, height: 32),
    );
  }
}
