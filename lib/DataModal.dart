
import 'dart:convert';

DataModal dataModalFromJson(String str) => DataModal.fromJson(json.decode(str));

String dataModalToJson(DataModal data) => json.encode(data.toJson());

class DataModal {
    DataModal({
        this.menuName,
        this.menuitems,
        this.menuDetails,
    });

    String menuName;
    List<Menuitem> menuitems;
    MenuDetails menuDetails;

    factory DataModal.fromJson(Map<String, dynamic> json) => DataModal(
        menuName: json["menu_name"],
        menuitems: List<Menuitem>.from(json["menuitems"].map((x) => Menuitem.fromJson(x))),
        menuDetails: MenuDetails.fromJson(json["menu_details"]),
    );

    Map<String, dynamic> toJson() => {
        "menu_name": menuName,
        "menuitems": List<dynamic>.from(menuitems.map((x) => x.toJson())),
        "menu_details": menuDetails.toJson(),
    };
}

class MenuDetails {
    MenuDetails({
        this.description,
    });

    String description;

    factory MenuDetails.fromJson(Map<String, dynamic> json) => MenuDetails(
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "description": description,
    };
}

class Menuitem {
    Menuitem({
        this.price,
        this.name,
    });

    String price;
    String name;

    factory Menuitem.fromJson(Map<String, dynamic> json) => Menuitem(
        price: json["price"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "price": price,
        "name": name,
    };
}
