import 'package:blood_connect/providers/donor_provider.dart';
import 'package:blood_connect/screens/pages/menu/permintaan_detail_donor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../color/color.dart';

class WidgetFindDonor extends StatelessWidget {
  const WidgetFindDonor({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DonorProvider>(builder: (context, state, child) {
      return Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: state.donorReq.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    state.detailRequest(context, state.donorReq[index]["id"]);
                  },
                  child: Container(
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: ontapButton,
                            ),
                            child: Center(
                              child: Text(
                                state.donorReq[index]["GolonganDarah"],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.donorReq[index]["Pasien"],
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.bloodtype_rounded,
                                      color: Colors.grey,
                                    ),
                                    Expanded(
                                      child: Text(
                                        state.donorReq[index]["JenisDonor"],
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 160.0),
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.red,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      state.donorReq[index]["Kota"],
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  state.donorReq[index]["Created"],
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }));
    });
  }
}
