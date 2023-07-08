import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/providers/donor_provider.dart';
import 'package:blood_connect/screens/pages/request_donor/request_succes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:select_form_field/select_form_field.dart';

class RequestDonor extends StatefulWidget {
  const RequestDonor({super.key});

  @override
  State<RequestDonor> createState() => _RequestDonorState();
}

class _RequestDonorState extends State<RequestDonor> {
  TextEditingController namePasien = TextEditingController();
  TextEditingController jumlahKantong = TextEditingController();
  TextEditingController nomorHanpnone = TextEditingController();
  TextEditingController note = TextEditingController();
  TextEditingController kontakNama = TextEditingController();
  String bdrList = '';
  String goldar = '';
  String jenisDonor = '';

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
                // decoration: BoxDecoration(
                //     border: Border.all(color: Colors.black45),
                //     borderRadius: BorderRadius.circular(10.0)),
                child: SelectFormField(
                  decoration: InputDecoration(
                      label: Text("Rumah Sakit"),
                      prefixIcon: Icon(Icons.location_city),
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      prefixIconColor: primaryColor),
                  items: Provider.of<DonorProvider>(context)
                      .bdrs
                      .map((e) => {
                            'value': e["id"],
                            'label': e["BDRS"],
                            'icon': Icon(
                              Icons.local_hospital_outlined,
                              color: Colors.redAccent,
                            ),
                            'textStyle': TextStyle(color: Colors.red),
                          })
                      .toList(),
                  onChanged: (value) => bdrList = value,
                  onSaved: null,
                  type: SelectFormFieldType.dropdown,
                  labelText: 'Rumah Sakit',
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: namePasien,
                      decoration: InputDecoration(
                          labelText: "Nama Pasien",
                          hintText: 'Nama Pasien',
                          prefixIcon: Icon(Icons.person_2_outlined),
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
                  onChanged: (value) => goldar = value,
                  items: [
                    {
                      'value': 'A+',
                      'label': ' A+',
                      'icon': Icon(
                        Icons.bloodtype,
                        color: Colors.red,
                      ),
                    },
                    {
                      'value': 'A-',
                      'label': ' A-',
                      'icon': Icon(
                        Icons.bloodtype,
                        color: Colors.red,
                      ),
                    },
                    {
                      'value': 'B+',
                      'label': ' B+',
                      'icon': Icon(
                        Icons.bloodtype,
                        color: Colors.red,
                      ),
                    },
                    {
                      'value': 'B-',
                      'label': ' B-',
                      'icon': Icon(
                        Icons.bloodtype,
                        color: Colors.red,
                      ),
                    },
                    {
                      'value': 'AB+',
                      'label': ' AB+',
                      'icon': Icon(
                        Icons.bloodtype,
                        color: Colors.red,
                      ),
                    },
                    {
                      'value': 'AB-',
                      'label': ' AB-',
                      'icon': Icon(
                        Icons.bloodtype,
                        color: Colors.red,
                      ),
                    },
                    {
                      'value': 'O+',
                      'label': ' O+',
                      'icon': Icon(
                        Icons.bloodtype,
                        color: Colors.red,
                      ),
                    },
                    {
                      'value': 'O-',
                      'label': ' O-',
                      'icon': Icon(
                        Icons.bloodtype,
                        color: Colors.red,
                      ),
                    },
                  ],
                  decoration: InputDecoration(
                      label: Text("Golongan Darah"),
                      prefixIcon: Icon(Icons.bloodtype_rounded),
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      prefixIconColor: primaryColor),
                  icon: Icon(
                    Icons.bloodtype_outlined,
                    color: primaryColor,
                  ),
                  labelText: 'Golongan Darah',
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.circular(10.0)),
                child: SelectFormField(
                  onChanged: (value) => jenisDonor = value,
                  items: [
                    {
                      'value': 'WB (Donor Biasa)',
                      'label': 'Donor Biasa',
                      'icon': Icon(Icons.bloodtype_outlined,
                          color: Colors.redAccent),
                    },
                    {
                      'value': 'Apheresis',
                      'label': 'Apheresis',
                      'icon': Icon(
                        Icons.bloodtype_outlined,
                        color: Colors.redAccent,
                      ),
                    },
                  ],
                  decoration: InputDecoration(
                      label: Text("Jenis Donor"),
                      prefixIcon: Icon(Icons.bloodtype_outlined),
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      prefixIconColor: primaryColor),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: jumlahKantong,
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
                      controller: nomorHanpnone,
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
                      controller: kontakNama,
                      decoration: InputDecoration(
                          hintText: 'Kontak Nama',
                          label: Text("Kontak Nama"),
                          prefixIcon: Icon(Icons.contact_support),
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
                      controller: note,
                      maxLines: 3,
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
                    Provider.of<DonorProvider>(context, listen: false)
                        .postDataRequest(context,
                            rumahSakit: bdrList,
                            name: namePasien.text,
                            goldar: goldar,
                            jenisDonor: jenisDonor,
                            jumlahKantong: jumlahKantong.text,
                            nohp: nomorHanpnone.text,
                            note: note.text,
                            kontakNama: kontakNama.text);
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
