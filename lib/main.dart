import "package:flutter/material.dart";

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 30, left: 10, right: 10 ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: height * 0.4,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/tt.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(right:100 ,top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Number 10",
                          style:
                          TextStyle(color: Colors.grey, fontSize: 25),
                        ),
                        SizedBox(
                          height: height*0.02,
                        ),
                        Text(
                          "Thanjavur",
                          style:
                          TextStyle(color: Colors.black, fontSize: 23),
                        ),
                        Text(
                          "Thanjavur , Tamil Nadu",
                          style:
                          TextStyle(color: Colors.black, fontSize: 23),
                        ),
                        SizedBox(height: height*0.03,),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FlatButton(
                          onPressed: () {},
                          child: Text(
                            "Share",
                            style: TextStyle(
                                color: Colors.orange.shade400,
                                fontSize: 20),
                          )),
                      FlatButton(
                          onPressed: () {},
                          child: Text(
                            "Explore",
                            style: TextStyle(
                                color: Colors.orange.shade400,
                                fontSize: 20),
                          )),
                      SizedBox(
                        height: height*0.28,
                      )
                    ],
                  ),

                  ],
                ),
              )),
        ],
      ),
    );
  }
}
