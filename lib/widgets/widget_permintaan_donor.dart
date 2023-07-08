import 'package:blood_connect/providers/donor_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_share/social_share.dart';
import 'package:url_launcher/url_launcher.dart';

import '../color/color.dart';

class WidgetPermintaanDonor extends StatefulWidget {
  const WidgetPermintaanDonor({super.key});

  @override
  State<WidgetPermintaanDonor> createState() => _WidgetPermintaanDonorState();
}

class _WidgetPermintaanDonorState extends State<WidgetPermintaanDonor> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DonorProvider>(builder: (context, state, child) {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.redAccent,
                ),
                Expanded(
                    child: Text(
                  state.detailRequestClient["BDRS"],
                  style: TextStyle(fontSize: 20),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(10.0)),
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 10.0),
                  child: Row(
                    children: [
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(25.0), // Image radius
                          child: Image.network(
                              state.detailRequestClient["UserPhoto"],
                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.detailRequestClient["User"],
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              state.detailRequestClient["Created"],
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Nama Pasien :',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          state.detailRequestClient["Pasien"],
                          style: TextStyle(fontSize: 17),
                        ),
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
                          state.detailRequestClient["GolonganDarah"],
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Jenis Donor :',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          state.detailRequestClient["JenisDonor"],
                          style: TextStyle(fontSize: 17, color: Colors.black),
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
                          state.detailRequestClient["Kebutuhan"].toString(),
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
                        Text(
                          state.detailRequestClient["Catatan"],
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),

          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 10),
          //   width: MediaQuery.of(context).size.width,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10), color: Colors.blue),
          //   height: 200,
          //   child: Center(
          //     child: Text("Map"),
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: SizedBox(
                    width: 230,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                        ),
                        onPressed: () {
                          launchUrl(
                              Uri.parse(state.detailRequestClient["WALink"]),
                              mode: LaunchMode.externalApplication);
                        },
                        child: Text("Hubungi"))),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                    ),
                    onPressed: () {
                      SocialShare.shareWhatsapp(
                          state.detailRequestClient["Link"]);
                    },
                    child: Icon(Icons.share_outlined)),
              )
            ],
          ),
        ],
      );
    });
  }
}
