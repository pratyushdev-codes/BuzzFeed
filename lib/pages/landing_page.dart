import 'package:flutter/material.dart';
import 'package:newsapp/pages/home.dart';
import 'package:newsapp/widgets/custom_tag.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Material(
            elevation: 1.0,
            borderRadius: BorderRadius.circular(30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "images/intro.jpeg",
                height: MediaQuery.of(context).size.height / 1.9,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 350, // Adjust the position as needed
            left: 20, // Adjust the position as needed
            child: CustomTag(
              backgroundColor: Colors.white12,
              children: [
                Text(
                  ' News for the Day  ➜   ',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white70,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 270.0),
                Text(
                  "News from around the world for you",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Best time to read, take your time to read a\n            little more about this world!",
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 40.0),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blueAccent),
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
