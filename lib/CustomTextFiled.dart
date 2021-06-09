import 'package:demo/imports.dart';

class CustomTextFiled extends StatelessWidget {
  final String hintText;

  const CustomTextFiled({Key key, this.hintText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: HexColor("#ededed"),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Center(
            child: TextFormField(
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: hintText,hintStyle: TextStyle(
                    color: HexColor("#9b9aa0"),
                    fontWeight: FontWeight.w500
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
