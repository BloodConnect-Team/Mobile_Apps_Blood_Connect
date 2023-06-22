import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/screens/pages/request_donor/request_succes.dart';
import 'package:flutter/material.dart';

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
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Rumah Sakit',
                          prefixIcon: Icon(Icons.location_city),
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
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Nama Pasien',
                          prefixIcon: Icon(Icons.location_history),
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
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Golongan Darah',
                          prefixIcon: Icon(Icons.bloodtype_rounded),
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
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Jenis Darah',
                          prefixIcon: Icon(Icons.bloodtype_sharp),
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
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Jumlah Kantong',
                        prefixIcon: Icon(Icons.bloodtype_rounded),
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
                          hintText: 'Catatan',
                          prefixIcon: Icon(Icons.book),
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
