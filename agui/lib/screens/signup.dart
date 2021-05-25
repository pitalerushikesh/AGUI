import 'package:agui/screens/bottomBar.dart';
import 'package:agui/values/values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String dropdownValue = 'City';
  String dropdownValue2 = 'Relation With Child';

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
                    "Sign up to continue",
                    style: GoogleFonts.poppins(
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  SIgnInCard(
                    size: size,
                    dropdownValue: dropdownValue,
                    dropdownValue2: dropdownValue2,
                  ),
                  Text(
                    "Skip",
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
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
}

class SIgnInCard extends StatefulWidget {
  SIgnInCard({
    required this.size,
    required this.dropdownValue,
    required this.dropdownValue2,
  });

  final Size size;
  final String dropdownValue;
  final String dropdownValue2;

  @override
  _SIgnInCardState createState() => _SIgnInCardState();
}

class _SIgnInCardState extends State<SIgnInCard> {
  bool _isRadioSelected = false;
  int _radioValue = 0;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }

  String _genderRadioBtnVal = "Male";
  void _handleGenderChange(String value) {
    print(value);
    setState(() {
      _genderRadioBtnVal = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: widget.size.height * 0.06,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
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
                  labelText: "Parent Name",
                  suffixIcon: Icon(
                    Icons.person_outlined,
                    color: pink,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: widget.size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
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
            height: widget.size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
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
                  labelText: "Email Id",
                  suffixIcon: Icon(
                    Icons.mail_outline,
                    color: pink,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: widget.size.height * 0.02,
          ),
          Container(
            width: widget.size.width * 0.75,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: pink,
                ),
              ),
            ),
            child: DropdownButtonFormField<String>(
              icon: Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 35,
                ),
              ),
              iconEnabledColor: pink,
              value: widget.dropdownValue,
              elevation: 0,
              style: TextStyle(
                color: Colors.black54,
              ),
              onChanged: (newValue) {},
              items: <String>[
                'City',
                'Mumbai',
                'New Delhi',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: widget.size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Text(
                    "Number Of Children",
                    style: GoogleFonts.questrial(
                      color: pink,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio<String>(
                          value: "One",
                          groupValue: _genderRadioBtnVal,
                          onChanged: (value) {
                            setState(() {
                              _genderRadioBtnVal = "One";
                            });
                          },
                        ),
                        Text("One"),
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: "Two",
                          groupValue: _genderRadioBtnVal,
                          onChanged: (value) {
                            setState(() {
                              _genderRadioBtnVal = "Two";
                            });
                          },
                        ),
                        Text("Two"),
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: "Three",
                          groupValue: _genderRadioBtnVal,
                          onChanged: (value) {
                            setState(() {
                              _genderRadioBtnVal = "Three";
                            });
                          },
                        ),
                        Text("Three"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Container(
            width: widget.size.width * 0.75,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: pink,
                ),
              ),
            ),
            child: DropdownButtonFormField<String>(
              icon: Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 35,
                ),
              ),
              iconEnabledColor: pink,
              value: widget.dropdownValue2,
              elevation: 0,
              style: TextStyle(
                color: Colors.black54,
              ),
              onChanged: (newValue) {},
              items: <String>[
                'Relation With Child',
                'Friendly',
                'Not Friendly',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomBar(),
                  ),
                );
              },
              child: Text("Next"),
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
                "Already Have An Account ? ",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                "Sign In",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
        ],
      ),
    );
  }
}
