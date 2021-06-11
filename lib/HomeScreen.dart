import 'dart:convert';

import 'package:demo/DataModal.dart';

import 'package:http/http.dart' as http;
import 'package:demo/imports.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String url = 'http://www.json-generator.com/api/json/get/bVPwlLYdRu?indent=2';
  List listMeniItems;

  Color appBarColor = Color(0xFFEEEEEE);
  DataModal _dataModal = new DataModal();
  var menuname;
  var description;

  Future getApiData() async {
    final response = await http.get(Uri.parse(url));

    _dataModal = dataModalFromJson(response.body);

    setState(() {
      menuname = _dataModal.menuName;
    });

    Map<String, dynamic> map = json.decode(response.body);

    setState(() {
      listMeniItems = map['menuitems'];
      listMeniItems.map((data) => Menuitem.fromJson(data)).toList();
    });

    setState(() {
      description = map['menu_details'];
    });
  }

  @override
  void initState() {
    getApiData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          (menuname == null) ? "" : "$menuname".toUpperCase(),
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Description", style: TextStyle(fontSize: 20)),
                      Text(
                          (description == null)
                              ? ""
                              : description['description'],
                          style: TextStyle(fontSize: 20)),
                    ],
                  )),
              Divider(),
              Expanded(
                  child: Container(
                child: ListView.builder(
                    itemCount: (listMeniItems.length == null)
                        ? 0
                        : listMeniItems.length,
                    itemBuilder: (context, index) {
                      return (listMeniItems == null)
                          ? Container()
                          : Padding(
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
                                        "${listMeniItems[index]['name']}"
                                            .toUpperCase(),
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(listMeniItems[index]['price'],
                                          style: TextStyle(fontSize: 20)),
                                    ),
                                  ],
                                ),
                              ),
                            );
                    }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
