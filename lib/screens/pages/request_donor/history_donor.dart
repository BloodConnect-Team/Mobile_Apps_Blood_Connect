import 'package:blood_connect/providers/donor_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_share/social_share.dart';

import '../../../color/color.dart';

class HistoryDonor extends StatefulWidget {
  const HistoryDonor({super.key});

  @override
  State<HistoryDonor> createState() => _HistoryDonorState();
}

class _HistoryDonorState extends State<HistoryDonor> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DonorProvider>(builder: (context, state, child) {
      return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                      itemCount: state.riwayatPermintaan.length,
                      itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              state.riwayatPermintaan[index]["Status"] == "Show"
                                  ? Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 150,
                                            margin: EdgeInsets.only(right: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: ontapButton),
                                            child: Center(
                                              child: Text(
                                                "Terverifikasi",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.green),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.white,
                                                ),
                                                onPressed: () {
                                                  SocialShare.shareWhatsapp(
                                                      state.riwayatPermintaan[index]
                                                          ["Link"]);
                                                },
                                                child: Icon(
                                                  Icons.share_outlined,
                                                  color: Colors.redAccent,
                                                )),
                                          ),
                                        ],
                                      ),
                                    )
                                  : state.riwayatPermintaan[index]["Status"] ==
                                          "Pending"
                                      ? Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 150,
                                                margin: EdgeInsets.only(right: 10),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    color: ontapButton),
                                                child: Center(
                                                  child: Text(
                                                    "Menunggu Verifikasi",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.amber),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(right: 10),
                                                child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                      primary: Colors.white,
                                                    ),
                                                    onPressed: () {
                                                      SocialShare.shareWhatsapp(
                                                          state.riwayatPermintaan[
                                                              index]["Link"]);
                                                    },
                                                    child: Icon(
                                                      Icons.share_outlined,
                                                      color: Colors.redAccent,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        )
                                      : state.riwayatPermintaan[index]["Status"] ==
                                              "Finish"
                                          ? Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    height: 30,
                                                    width: 150,
                                                    margin:
                                                        EdgeInsets.only(right: 10),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                10),
                                                        color: ontapButton),
                                                    child: Center(
                                                      child: Text(
                                                        "Terpenuhi",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Colors.blue),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.only(right: 10),
                                                    child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          primary: Colors.white,
                                                        ),
                                                        onPressed: () {
                                                          SocialShare.shareWhatsapp(
                                                              state.riwayatPermintaan[
                                                                  index]["Link"]);
                                                        },
                                                        child: Icon(
                                                          Icons.share_outlined,
                                                          color: Colors.redAccent,
                                                        )),
                                                  ),
                                                ],
                                              ),
                                            )
                                          : Container(),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Nama Pasien :',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromARGB(255, 117, 109, 109)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      state.riwayatPermintaan[index]["Pasien"],
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ]),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Golongan Darah :',
                                style: TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                state.riwayatPermintaan[index]["GolonganDarah"],
                                style: TextStyle(fontSize: 17),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Kebutuhan :',
                                style: TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                state.riwayatPermintaan[index]["Kebutuhan"]
                                    .toString(),
                                style: TextStyle(fontSize: 17),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Catatan',
                                style: TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Text(
                                  state.riwayatPermintaan[index]["Catatan"],
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                );
                      },
                    ),
              ),
            ],
          ));
    });
  }
}
