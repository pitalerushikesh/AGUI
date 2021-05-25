import 'package:agui/values/values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/menu.png"),
            tooltip: "Menu",
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildHeader(),
                cardHeader(size),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    "Your Current Booking",
                    style: GoogleFonts.alegreyaSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: btncolor,
                    ),
                  ),
                ),
                buildCurrBookCard(size),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    "Packages",
                    style: GoogleFonts.alegreyaSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: btncolor,
                    ),
                  ),
                ),
                buildPackage(
                  btnCardcolor: pink,
                  bgcolor: lightpink,
                  size: size,
                  title: "One Day Package",
                  cost: "₹2799",
                  desc:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                ),
                buildPackage(
                    btnCardcolor: Colors.blue,
                    bgcolor: pkgCardColor,
                    size: size,
                    title: "Two Days Package",
                    cost: "₹7497",
                    desc:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
              ],
            ),
            Positioned(
              top: 50,
              right: 2,
              child: Image.asset(
                "assets/images/lady.png",
                scale: 0.75,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildPackage({
    required Size size,
    required String title,
    required String cost,
    required String desc,
    required Color btnCardcolor,
    required Color bgcolor,
  }) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 32.0, right: 32.0, top: 4.0, bottom: 4.0),
      child: Container(
        height: size.height * 0.2,
        width: size.width,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    "assets/images/1.png",
                  ),
                  SizedBox(
                    height: 28,
                    width: 95,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        primary: Colors.white,
                        backgroundColor: btnCardcolor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    title,
                    style: GoogleFonts.alegreyaSans(
                        fontSize: 20.0,
                        color: btncolor,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    cost,
                    style: GoogleFonts.alegreyaSans(
                        fontSize: 20.0,
                        color: btncolor,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                desc,
                style: TextStyle(
                  fontSize: 10.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCurrBookCard(Size size) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "One Day Package",
                    style: GoogleFonts.alegreyaSans(
                        fontSize: 20.0,
                        color: pink,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 28,
                    width: 95,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Start",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        primary: Colors.white,
                        backgroundColor: pink,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "From",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.4,
                  ),
                  Text(
                    "To",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  buildDateTime(
                    size: size,
                    image: "assets/images/calendar.png",
                    label: "12.08.2020",
                  ),
                  SizedBox(
                    width: size.width * 0.23,
                  ),
                  buildDateTime(
                    size: size,
                    image: "assets/images/calendar.png",
                    label: "13.08.2020",
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  buildDateTime(
                    size: size,
                    image: "assets/images/clock.png",
                    label: "11 pm",
                  ),
                  SizedBox(
                    width: size.width * 0.33,
                  ),
                  buildDateTime(
                    size: size,
                    image: "assets/images/clock.png",
                    label: "07 pm",
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  buildbluebtn(
                      label: "Rate Us", image: "assets/images/star.png"),
                  buildbluebtn(
                      label: "Geolocation", image: "assets/images/loc.png"),
                  buildbluebtn(
                      label: "Survillience", image: "assets/images/radio.png"),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildDateTime({
    required Size size,
    required String image,
    required String label,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset(image),
        SizedBox(
          width: size.width * 0.02,
        ),
        Text(
          label,
          style: GoogleFonts.alegreyaSans(
            fontWeight: FontWeight.w700,
            color: Colors.grey,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }

  Widget buildbluebtn({
    required String label,
    required String image,
  }) {
    return SizedBox(
      height: 25,
      width: 90,
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(image),
            Text(
              label,
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
          ],
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          primary: Colors.white,
          backgroundColor: btncolor,
        ),
      ),
    );
  }

  Widget cardHeader(Size size) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        height: size.height * 0.25,
        width: size.width,
        decoration: BoxDecoration(
          color: lightpink,
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Nanny And Babysitting",
                style: GoogleFonts.alegreyaSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: btncolor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Services",
                style: GoogleFonts.alegreyaSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: btncolor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text("Book Now"),
                ),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  primary: Colors.white,
                  backgroundColor: btncolor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: ListTile(
        leading: ClipRRect(
          child: Image.asset("assets/images/pro.png"),
        ),
        title: Text(
          "Welcome",
          style: GoogleFonts.alegreyaSans(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        subtitle: Text(
          "Emily Cyrus",
          style: GoogleFonts.alegreyaSans(
            color: pink,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
