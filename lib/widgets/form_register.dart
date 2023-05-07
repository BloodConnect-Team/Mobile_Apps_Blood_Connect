import 'package:blood_connect/color/color.dart';
import 'package:flutter/material.dart';

class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Fajar Rivaldi",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  prefixIcon: Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.black45)),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.person,
                        color: PrimaryColor,
                        size: 30,
                      ),
                    ),
                  ),
                  prefix: VerticalDivider(
                    width: 10,
                    color: Colors.amber,
                  )),
            ),
          ),
        ),
        //Form email register
        Container(
          margin: EdgeInsets.all(10),
          child: SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Your Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  prefixIcon: Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.black45)),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.email,
                        color: PrimaryColor,
                      ),
                    ),
                  ),
                  prefix: VerticalDivider(
                    width: 10,
                    color: Colors.amber,
                  )),
            ),
          ),
        ),
        //Form Password Register
        Container(
          margin: EdgeInsets.all(10),
          child: SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "********",
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  prefixIcon: Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.black45)),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.key,
                        color: PrimaryColor,
                        size: 30,
                      ),
                    ),
                  ),
                  prefix: VerticalDivider(
                    width: 10,
                    color: Colors.amber,
                  )),
            ),
          ),
        ),
        //Form Golongan Darah User
        Container(
          margin: EdgeInsets.all(10),
          child: SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "O+",
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  prefixIcon: Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.black45)),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.bloodtype,
                        color: PrimaryColor,
                        size: 30,
                      ),
                    ),
                  ),
                  prefix: VerticalDivider(
                    width: 10,
                    color: Colors.amber,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
