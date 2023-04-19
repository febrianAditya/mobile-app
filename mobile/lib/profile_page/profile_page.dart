import 'package:flutter/material.dart';
import 'package:mobile/custom_colors.dart';
import 'package:url_launcher/url_launcher.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Future<void> goToWebPage(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: frameDrop,
      // AppBar
      appBar: PreferredSize(
        preferredSize: const Size(100, 40),
        child: AppBar(
          // Shadow 
          elevation: 0,
          backgroundColor: const Color(0xffECF2FF),
          title: const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                top: 20
              ),
              child: Text(
                "Profile Page",
                style: TextStyle(
                  fontFamily: 'JosefinSans',
                  color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
            )
            
            
          )
        ),
      ),

      body: Stack(
        children: <Widget> [
          Column(
            children: [

              Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                  color: frameLightDrop,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(34),
                    bottomLeft: Radius.circular(34)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      // spreadRadius: 5,
                      blurRadius: 7,
                      // offset: Offset(0, 3)
                    )
                  ]
                ),   
                child: Stack(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 22
                      ),
                      child: Text(
                        "Febrian Aditya",
                        style: TextStyle(
                          fontSize: 26,
                          fontFamily: 'JosefinSans'
                        ),
                      ),
                    ),          
                    Padding(
                      padding: EdgeInsets.only(
                        top: 46,
                        left: 24
                      ),
                      child: Text(
                        "Developer LearnApp",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter',
                          color: Color(0XFF146C94)
                        ),
                      ),
                    ),             
                    Padding(
                      padding: EdgeInsets.only(
                        top: 75.0,
                        left: 120.0,
                      ),
                      child: Image(
                        image: AssetImage("assets/images/febrian_pict.png"),
                        height: 500,
                        width: 800,
                      ),
                    ),  
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  // bottom: 20
                ),
                child: Text(
                  "Contact Me For Informations",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Inter",
                    color: Colors.white
                  ),
                ),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [

                  Transform.translate(
                    offset: const Offset(0, 15),
                    child: Transform.scale(
                      scale: 1.5,
                      child: IconButton(
                        onPressed: () async {
                          await goToWebPage("https://www.linkedin.com/in/febrian-aditya-76b7701a0/");
                        },
                        icon: Image.asset("assets/icons/linkedin_white.png")
                      ),
                    ),
                  )
                ],
              )

            ],
          ),
          
        ],
      ),

    );
  }
}