import 'package:demo/imports.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(4),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                    backgroundColor: Colors.transparent,
                    child: Image.asset(
                      "assets/facebook_logos.png",
                      fit: BoxFit.cover,
                    )),
                title: Text(
                  "Facebook",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "hello",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.teal),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("10:20pm"),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                        width: 15.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: Text(
                          "1",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        )),
                  ],
                ),
              ),
              // child: Column(
              //   mainAxisSize: MainAxisSize.min,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         CircleAvatar(Column(
              //   mainAxisSize: MainAxisSize.min,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         CircleAvatar(
              //             radius: 25,
              //             backgroundColor: Colors.transparent,
              //             child: Image.asset(
              //               "assets/facebook_logos.png",
              //               fit: BoxFit.cover,
              //             )),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "NirmalKumar",
              //               style: TextStyle(fontWeight: FontWeight.bold),
              //             ),
              //             SizedBox(
              //               height: 6,
              //             ),
              //             Text(
              //               "hello",
              //               style: TextStyle(color: Colors.teal),
              //             )
              //           ],
              //         ),
              //         Column(
              //           children: [
              //             Text("10:20pm"),
              //             SizedBox(
              //               height: 6,
              //             ),
              //             Container(
              //                 width: 15,
              //                 alignment: Alignment.center,
              //                 decoration: BoxDecoration(
              //                   shape: BoxShape.circle,
              //                   color: Colors.green,
              //                 ),
              //                 child: Text(
              //                   "1",
              //                   style: TextStyle(
              //                       fontSize: 12, color: Colors.white),
              //                 )),
              //           ],
              //         ),
              //       ],
              //     ),
              //     Divider()
              //   ],
              // ),
              //             radius: 25,
              //             backgroundColor: Colors.transparent,
              //             child: Image.asset(
              //               "assets/facebook_logos.png",
              //               fit: BoxFit.cover,
              //             )),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "NirmalKumar",
              //               style: TextStyle(fontWeight: FontWeight.bold),
              //             ),
              //             SizedBox(
              //               height: 6,
              //             ),
              //             Text(
              //               "hello",
              //               style: TextStyle(color: Colors.teal),
              //             )
              //           ],
              //         ),
              //         Column(
              //           children: [
              //             Text("10:20pm"),
              //             SizedBox(
              //               height: 6,
              //             ),
              //             Container(
              //                 width: 15,
              //                 alignment: Alignment.center,
              //                 decoration: BoxDecoration(
              //                   shape: BoxShape.circle,
              //                   color: Colors.green,
              //                 ),
              //                 child: Text(
              //                   "1",
              //                   style: TextStyle(
              //                       fontSize: 12, color: Colors.white),
              //                 )),
              //           ],
              //         ),
              //       ],
              //     ),
              //     Divider()
              //   ],
              // ),
            );
          }),
    );
  }
}
