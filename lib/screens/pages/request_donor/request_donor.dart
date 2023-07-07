import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/screens/pages/request_donor/request_succes.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class RequestDonor extends StatefulWidget {
  const RequestDonor({super.key});

  @override
  State<RequestDonor> createState() => _RequestDonorState();
}

class _RequestDonorState extends State<RequestDonor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.circular(10.0)),
                child: SelectFormField(
                  icon: Icon(
                    Icons.location_city_outlined,
                    color: primaryColor,
                  ),
                  labelText: 'Rumah Sakit',
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Username",
                          hintText: 'Nama',
                          prefixIcon: Icon(Icons.location_on_outlined),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          prefixIconColor: primaryColor),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.circular(10.0)),
                child: SelectFormField(
                  icon: Icon(
                    Icons.bloodtype_outlined,
                    color: primaryColor,
                  ),
                  labelText: 'Jenis Darah',
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.circular(10.0)),
                child: SelectFormField(
                  icon: Icon(
                    Icons.bloodtype_outlined,
                    color: primaryColor,
                  ),
                  labelText: 'Golongan Darah',
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Jumlah Kantong",
                        hintText: '10 kantong',
                        prefixIcon: Icon(Icons.bloodtype_outlined),
                        prefixIconColor: primaryColor,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: '0812XXXXXXXXX',
                          hintText: 'Nomor Hp',
                          prefixIcon: Icon(Icons.call),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          prefixIconColor: primaryColor),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'note',
                          label: Text("Catatan"),
                          prefixIcon: Icon(Icons.book_online_outlined),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          prefixIconColor: primaryColor),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 280,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (builder) => RequestSucces()));
                  },
                  child: const Text('Ajukan'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
