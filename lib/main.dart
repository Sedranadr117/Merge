import 'package:flutter/material.dart';

void main() {
  runApp(const BirthdayCard());
}

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            children: <Widget>[
              Image.asset(
                "assets/images/Bithday.jpg",
                fit: BoxFit.cover,
                height: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 450, 10, 190),
                child: Column(
                  children: [
                    Text(
                      "Happy",
                      style: TextStyle(
                          fontFamily: "Pacifico",
                          fontSize: 50,
                          color: Color.fromARGB(255, 110, 29, 49)),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      "Wish You All The Best ",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 110, 29, 49),
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pacifico"),
                    ),
                    Spacer(
                      flex: 2,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
