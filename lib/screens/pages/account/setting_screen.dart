import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/providers/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:select_form_field/select_form_field.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  TextEditingController usernameSetting = TextEditingController();
  TextEditingController emailSetting = TextEditingController();
  TextEditingController noHp = TextEditingController();

  String? selectedForm;

  String? selectedBlood;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
        ),
        title: const Text(
          'Pengaturan',
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0),
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.redAccent,
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(55.0), // Image radius
                    child: Image.network(
                        Provider.of<ProfileProvider>(context).photo,
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'username',
                    label: Text('Username'),
                    prefixIcon: Icon(Icons.person_2_outlined),
                    prefixIconColor: primaryColor,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'E-mail',
                    prefixIcon: Icon(Icons.email_outlined),
                    prefixIconColor: primaryColor,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black45),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: DropdownButton<String?>(
                  value: selectedForm,
                  onChanged: (value) {
                    setState(() {
                      selectedForm = value;
                    });
                  },
                  isExpanded: true,
                  iconSize: 40.0,
                  iconDisabledColor: primaryColor,
                  items: ["Lhokseumawe"]
                      .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                            child: Text(e.toString()),
                            value: e,
                          ))
                      .toList(),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.black45),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: DropdownButton<String?>(
                  value: selectedBlood,
                  onChanged: (value) {
                    setState(() {
                      selectedBlood = value;
                    });
                  },
                  isExpanded: true,
                  iconSize: 40.0,
                  iconDisabledColor: primaryColor,
                  items: ["A+", "A-", "B+", "B-", "O+", "O-", "AB-", "AB+"]
                      .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                            child: Text(e.toString()),
                            value: e,
                          ))
                      .toList(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: '0822xxxxxxx',
                    label: Text('Contoh : 0822115XXXXXX'),
                    prefixIcon: Icon(Icons.call),
                    prefixIconColor: primaryColor,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  child: Text('Simpan')),
            )
          ],
        ),
      ),
    );
  }
}
