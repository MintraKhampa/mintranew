import 'package:flutter/material.dart';
import 'package:test1/utility/my_constant.dart';

class switch1 extends StatelessWidget {
  bool toggleValue = false;
  // const switch1({Key? key}) : super(key: key);
  @override
  // Widget @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("One Switch"),
          backgroundColor: Myconstat.orange1,
        ),
        body: Center(
            child: Material(
                // color: Myconstat.grey,
                elevation: 8,
                shape: CircleBorder(),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                    splashColor: Myconstat.grey,
                    onTap: () {
                      onTap: () => print("Container pressed"), // handle your onTap here
                      child: Container(height: 200, width: 200),
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.black, width: 7),
                          shape: BoxShape.circle,
                        ),
                        child: Ink.image(
                          image: NetworkImage(
                            'https://image.shutterstock.com/image-vector/power-button-icon-vector-illustration-260nw-1436904815.jpg',
                          ),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(72, 165, 10, 5),
                            child: Text(
                              'OFF',
                              style: TextStyle(
                                  fontSize: 18, color: Myconstat.grey),
                            ),
                          ),
                        ))))));
  }
}
