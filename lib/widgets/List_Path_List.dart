import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/model/faq_donor.dart';
import 'package:flutter/material.dart';

class ListPathList extends StatelessWidget {
  const ListPathList({super.key});

  SliverPersistentHeader _header(String text) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverBarFaq(
          minHeight: 50,
          maxHeight: 100,
          child: Container(
            color: PrimaryColor,
            child: Center(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _header("Mengapa Harus Bayar Saat Ini Kita Butuh Darah Dari PMI ?")
      ],
    );
  }
}

class SliverBarFaq extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  SliverBarFaq({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(SliverBarFaq oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

Widget _buildListTile(FaqDonor faqDonor) {
  return const ListTile(
    title: Text(""),
    subtitle: Text(
      "",
      overflow: TextOverflow.fade,
      maxLines: null,
    ),
    isThreeLine: true,
  );
}
