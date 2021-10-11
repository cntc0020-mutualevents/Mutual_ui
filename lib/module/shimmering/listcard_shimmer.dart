import 'package:flutter/material.dart';
import 'package:mutual_ui/mutual_ui.dart';
import 'package:shimmer/shimmer.dart';

class ListCardShimmerVer extends StatelessWidget {
  final int count;
  final Color baseColor;
  final Color highlightColor;

  const ListCardShimmerVer(
      {Key? key,
      required this.count,
      required this.baseColor,
      required this.highlightColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      child: ListView.builder(
          itemCount: count,
          shrinkWrap: true,
          padding: const EdgeInsets.only(bottom: 25, top: 15),
          scrollDirection: Axis.vertical,
          itemBuilder: (__, _) {
            return Padding(
              padding: const EdgeInsets.all(15),
              child: ListCardShimmer(
                baseColor: baseColor,
                highlightColor: highlightColor,
              ),
            );
          }),
    );
  }
}

class ListCardShimmer extends StatelessWidget {
  final Color baseColor;
  final Color highlightColor;
  const ListCardShimmer(
      {Key? key, required this.baseColor, required this.highlightColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Shimmer.fromColors(
      baseColor: baseColor, //  Colors.grey[300]!,
      highlightColor: highlightColor,
      // baseColor: Theme.of(context).cardColor, //  Colors.grey[300]!,
      // highlightColor: Colors.grey[800]!,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 36,
            width: 36,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: clightGrey),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 12,
                  // width: double.infinity,
                  decoration: BoxDecoration(
                      color: clightGrey,
                      borderRadius: BorderRadius.circular(15)),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 12,
                  width: size.width / 2,
                  decoration: BoxDecoration(
                      color: clightGrey,
                      borderRadius: BorderRadius.circular(15)),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 12,
                  width: size.width / 3,
                  decoration: BoxDecoration(
                      color: clightGrey,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
