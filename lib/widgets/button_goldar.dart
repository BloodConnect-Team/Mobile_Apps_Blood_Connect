import 'package:blood_connect/providers/donor_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonGoldar extends StatefulWidget {
  const ButtonGoldar({super.key});

  @override
  State<ButtonGoldar> createState() => _ButtonGoldarState();
}

class _ButtonGoldarState extends State<ButtonGoldar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Provider.of<DonorProvider>(context, listen: false)
                      .changeGoldarFilter("");
                },
                child: Container(
                  padding: Provider.of<DonorProvider>(context).goldar == ""
                      ? EdgeInsets.all(10)
                      : EdgeInsets.all(0),
                  decoration: Provider.of<DonorProvider>(context).goldar == ""
                      ? BoxDecoration(
                          color: Color.fromARGB(255, 250, 92, 92),
                          borderRadius: BorderRadius.circular(10))
                      : BoxDecoration(),
                  child: Text(
                    'Semua',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<DonorProvider>(context, listen: false)
                      .changeGoldarFilter("A+");
                },
                child: Container(
                  padding: Provider.of<DonorProvider>(context).goldar == "A+"
                      ? EdgeInsets.all(10)
                      : EdgeInsets.all(0),
                  decoration: Provider.of<DonorProvider>(context).goldar == "A+"
                      ? BoxDecoration(
                          color: Color.fromARGB(255, 250, 92, 92),
                          borderRadius: BorderRadius.circular(10))
                      : BoxDecoration(),
                  child: Text(
                    'A+',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<DonorProvider>(context, listen: false)
                      .changeGoldarFilter("A-");
                },
                child: Container(
                  padding: Provider.of<DonorProvider>(context).goldar == "A-"
                      ? EdgeInsets.all(10)
                      : EdgeInsets.all(0),
                  decoration: Provider.of<DonorProvider>(context).goldar == "A-"
                      ? BoxDecoration(
                          color: Color.fromARGB(255, 250, 92, 92),
                          borderRadius: BorderRadius.circular(10))
                      : BoxDecoration(),
                  child: Text(
                    'A-',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<DonorProvider>(context, listen: false)
                      .changeGoldarFilter("B+");
                },
                child: Container(
                  padding: Provider.of<DonorProvider>(context).goldar == "B+"
                      ? EdgeInsets.all(10)
                      : EdgeInsets.all(0),
                  decoration: Provider.of<DonorProvider>(context).goldar == "B+"
                      ? BoxDecoration(
                          color: Color.fromARGB(255, 250, 92, 92),
                          borderRadius: BorderRadius.circular(10))
                      : BoxDecoration(),
                  child: Text(
                    'B+',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<DonorProvider>(context, listen: false)
                      .changeGoldarFilter("B-");
                },
                child: Container(
                  padding: Provider.of<DonorProvider>(context).goldar == "B-"
                      ? EdgeInsets.all(10)
                      : EdgeInsets.all(0),
                  decoration: Provider.of<DonorProvider>(context).goldar == "B-"
                      ? BoxDecoration(
                          color: Color.fromARGB(255, 250, 92, 92),
                          borderRadius: BorderRadius.circular(10))
                      : BoxDecoration(),
                  child: Text(
                    'B-',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              GestureDetector(
                onTap: () {
                  Provider.of<DonorProvider>(context, listen: false)
                      .changeGoldarFilter("O+");
                },
                child: Container(
                  padding: Provider.of<DonorProvider>(context).goldar == "O+"
                      ? EdgeInsets.all(10)
                      : EdgeInsets.all(0),
                  decoration: Provider.of<DonorProvider>(context).goldar == "O+"
                      ? BoxDecoration(
                          color: Color.fromARGB(255, 250, 92, 92),
                          borderRadius: BorderRadius.circular(10))
                      : BoxDecoration(),
                  child: Text(
                    'O +',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<DonorProvider>(context, listen: false)
                      .changeGoldarFilter("O-");
                },
                child: Container(
                  padding: Provider.of<DonorProvider>(context).goldar == "O-"
                      ? EdgeInsets.all(10)
                      : EdgeInsets.all(0),
                  decoration: Provider.of<DonorProvider>(context).goldar == "O-"
                      ? BoxDecoration(
                          color: Color.fromARGB(255, 250, 92, 92),
                          borderRadius: BorderRadius.circular(10))
                      : BoxDecoration(),
                  child: Text(
                    'O -',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<DonorProvider>(context, listen: false)
                      .changeGoldarFilter("AB+");
                },
                child: Container(
                  padding: Provider.of<DonorProvider>(context).goldar == "AB+"
                      ? EdgeInsets.all(10)
                      : EdgeInsets.all(0),
                  decoration:
                      Provider.of<DonorProvider>(context).goldar == "AB+"
                          ? BoxDecoration(
                              color: Color.fromARGB(255, 250, 92, 92),
                              borderRadius: BorderRadius.circular(10))
                          : BoxDecoration(),
                  child: Text(
                    'AB+',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<DonorProvider>(context, listen: false)
                      .changeGoldarFilter("AB-");
                },
                child: Container(
                  padding: Provider.of<DonorProvider>(context).goldar == "AB-"
                      ? EdgeInsets.all(10)
                      : EdgeInsets.all(0),
                  decoration:
                      Provider.of<DonorProvider>(context).goldar == "AB-"
                          ? BoxDecoration(
                              color: Color.fromARGB(255, 250, 92, 92),
                              borderRadius: BorderRadius.circular(10))
                          : BoxDecoration(),
                  child: Text(
                    'AB-',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
  final getColor = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return colorPressed;
    } else {
      return color;
    }
  };

  return MaterialStateProperty.resolveWith(getColor);
}
