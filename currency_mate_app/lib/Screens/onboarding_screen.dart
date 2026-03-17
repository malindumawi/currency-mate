import 'package:currency_mate_app/Screens/onboard_content.dart';
import 'package:flutter/material.dart';


// ignore: use_key_in_widget_constructors
class Onboarding extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _OnboardingState createState() => _OnboardingState();
}


class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: contents.length,
              itemBuilder: (_,i){
                return Column(
                  children: [
                    Image.asset(
                      contents[i].image,
                      height: 300,
                      ),
                      Text(
                      contents[i].title, 
                      style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        contents[i].description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xff1D3557,
                          ),
                        )
                      )
                  ],
                );
              }
              ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length, 
                (index) => Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff1D3557),
                  ),
                ),
              ),
            ),
          )
          //Container(
            //height: 55,
            //width: double.infinity,
            //margin: const EdgeInsets.all(50),
            //child: FlatButton(
              //child: const Text("Next.."),
              //onPressed: (){},
              //color: const Color(0xff1D3557),
              //textColor: Colors.white,
              //shape: RoundedRectangleBorder(
                  //borderRadius: BorderRadius.circular(15)
              //),
           // ),
          //),
        ],
      ),
    );
  }
}  
