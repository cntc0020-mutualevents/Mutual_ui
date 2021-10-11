import 'package:flutter/material.dart';
import 'package:mutual_ui/mutual_ui.dart';
import 'package:shimmer/shimmer.dart';

class EventCardShimmerListHor extends StatelessWidget {
  final int count;
  final int height;
  final Color baseColor;
  final Color highlightColor;
  const EventCardShimmerListHor(
      {Key? key,
      required this.count,
      this.height = 352,
      required this.baseColor,
      required this.highlightColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
        child: SizedBox(
      height: height.toDouble(),
      child: ListView.builder(
          itemCount: count,
          shrinkWrap: true,
          padding: const EdgeInsets.only(bottom: 25, top: 15),
          scrollDirection: Axis.horizontal,
          itemBuilder: (__, _) {
            return Padding(
              padding: EdgeInsets.only(
                // right: last ? size.width * 0.04 : 0.0,
                left: _ == 0 ? size.width * 0.04 : 15,
              ),
              child: EventCardShimmer(
                baseColor: baseColor,
                highlightColor: highlightColor,
              ),
            );
          }),
    ));
  }
}

class EventCardShimmer extends StatelessWidget {
  final Color baseColor;
  final Color highlightColor;
  const EventCardShimmer(
      {Key? key, required this.baseColor, required this.highlightColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = 312;
    var width = 230;
    return Container(
      height: height.toDouble(),
      width: width.toDouble(),

      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: cDarkGrey.withOpacity(0.2),
              spreadRadius: 5,
              offset: const Offset(-5, 10),
            ),
          ]),
      child: Shimmer.fromColors(
        baseColor: baseColor,
        highlightColor: highlightColor,
        // baseColor: Colors.grey[300]!,
        // highlightColor: Colors.grey[100]!,
        child: Column(
          children: [
            SizedBox(
              height: (height / 2) - 20,
              child: ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Container(
                  color: cWhite,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: null,
                          backgroundColor: clightGrey,
                          radius: 10,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 15,
                            decoration: BoxDecoration(
                                color: clightGrey,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 15,
                      width: width / 2,
                      decoration: BoxDecoration(
                          color: clightGrey,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 15,
                      width: width / 3,
                      decoration: BoxDecoration(
                          color: clightGrey,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

      // Text(
      //   'Shimmer',
      //   textAlign: TextAlign.center,
      //   style: TextStyle(
      //     fontSize: 40.0,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
    );
  }
}
