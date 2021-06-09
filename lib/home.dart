import 'package:demo/imports.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#ffffff"),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            child: Column(
              children: [
                Image.asset("assets/google_finance.png",fit: BoxFit.cover,height: 100,),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock,
                      size: 15,
                      color: HexColor(
                        "#696969",
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "Procced with your Login",
                      style: TextStyle(
                        color: HexColor(
                          "#696969",
                        ),
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 10,),
                CustomTextFiled(
                  hintText: "User Name",
                ),
                CustomTextFiled(
                  hintText: "Password",
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Forgot Password?"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: HexColor("#6457a6")),
                    width: 250,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      "Login".toUpperCase(),
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("────────────── OR ──────────────",
                    style: TextStyle(color: HexColor("#686868"))),
                SizedBox(
                  height:10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 180,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: HexColor("#696969")),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/google_logo.png",
                              fit: BoxFit.cover,
                              width: 30,
                            ),
                            Text("Google Sign in"),
                          ],
                        ),
                      ),
                      Container(
                        width: 180,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/facebook_logos.png",
                              fit: BoxFit.cover,
                              width: 40,
                            ),
                            Text("Facebook Sign in"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Dont have Account Yet?  ",
                      style:
                          TextStyle(color: HexColor("#696969"), fontSize: 20)),
                  TextSpan(
                      text: "Register",
                      style: TextStyle(
                          color: HexColor("#696969"),
                          fontSize: 20,
                          fontWeight: FontWeight.w500))
                ])),
                SizedBox(
                  height: 80,
                ),
                Text(
                  "©company Name. All Rights Reserved",
                  style: TextStyle(color: Colors.teal, fontSize: 14),
                ),
                Text(
                  "Terms of Use",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: HexColor(
                        "#696969",
                      ),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
