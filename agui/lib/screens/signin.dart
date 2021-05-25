import 'package:agui/screens/signup.dart';
import 'package:agui/values/values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Image.asset(
                    "assets/images/signlogo.png",
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    "Sign in to continue",
                    style: GoogleFonts.poppins(
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  SIgnInCard(size: size),
                  Text(
                    "Skip",
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 280,
                left: 5,
                child: Image.asset(
                  "assets/images/pin.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget buildLogo() {
  //   return Container(
  //     child: SvgPicture.asset(
  //       "assets/svg/signlogo.svg",
  //       placeholderBuilder: (BuildContext context) => Center(
  //         child: CircularProgressIndicator(),
  //       ),
  //     ),
  //   );
  // }
}

class SIgnInCard extends StatelessWidget {
  const SIgnInCard({
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.06,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 30.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: pink,
                  ),
                ),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  labelText: "Mobile Number",
                  suffixIcon: Icon(
                    Icons.phone_android_outlined,
                    color: pink,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ),
                );
              },
              child: Text("Verify"),
              style: ElevatedButton.styleFrom(
                  primary: pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don't Have An Account ? ",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            "Forget Password?",
            style: TextStyle(
              color: pink,
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
        ],
      ),
    );
  }
}
