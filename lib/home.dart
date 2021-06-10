import 'dart:convert';

import 'package:demo/DataModal.dart';

import 'package:http/http.dart' as http;
import 'package:demo/imports.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String url = 'http://www.json-generator.com/api/json/get/bVPwlLYdRu?indent=2';
  List listMeniItems;

  Color appBarColor =  Color(0xFFEEEEEE);
  DataModal _dataModal = new DataModal();
  var menuname;
  var description;

  Future getMenuName() async {
    final response = await http.get(Uri.parse(url));

    _dataModal = dataModalFromJson(response.body);
    menuname = _dataModal.menuName;

    return menuname;
  }

  Future<List> getItems() async {
    final response = await http.get(Uri.parse(url));
    Map<String, dynamic> map = json.decode(response.body);
    listMeniItems = map['menuitems'];

    return listMeniItems.map((data) => Menuitem.fromJson(data)).toList();
  }

  Future getDescription() async {
    final response = await http.get(Uri.parse(url));
    Map<String, dynamic> map = json.decode(response.body);

    description = map['menu_details'];

    return description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
        appBar: PreferredSize(
            child: FutureBuilder(
              future: getMenuName(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  var data = snapshot.data;
                  return AppBar(
                   backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    title: Text("$data".toUpperCase(),style: TextStyle(color: Colors.black),),
                  );
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return AppBar(
                    elevation: 0.0,
                   backgroundColor: Colors.transparent,
                    title: Text(""),
                  );
                } else {
                  return AppBar(
                    elevation: 0.0,
                   backgroundColor: Colors.transparent,
                    title: Text(""),
                  );
                }
              },
            ),
            preferredSize: Size(50, 50)),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Divider(
                  color: Colors.teal,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: FutureBuilder(
                      future: getDescription(),
                      builder: (context, snapshot) {
                        var data = snapshot.data;
                        if (snapshot.hasData) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Description",
                                  style: TextStyle(fontSize: 20)),
                              Text(data['description'],
                                  style: TextStyle(fontSize: 20)),
                            ],
                          );
                        } else if (snapshot.hasError) {
                          return Text(snapshot.error);
                        } else {
                          return Text("");
                        }
                      }),
                ),
                Divider(
                  color: Colors.teal,
                ),
                Expanded(
                  child: FutureBuilder<List>(
                    future: getItems(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List data = snapshot.data;
                        return ListView.builder(
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 80,
                                  decoration: BoxDecoration(
                                      color: HexColor("#ffffff"),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "${data[index].name}".toUpperCase(),
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(data[index].price,
                                            style: TextStyle(fontSize: 20)),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      }
                      return Container();
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
