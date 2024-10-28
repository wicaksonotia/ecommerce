import 'package:flutter/material.dart';
import 'package:sumbertugu/commons/colors.dart';
import 'package:sumbertugu/commons/sizes.dart';

class SeeAllContainer extends StatelessWidget {
  const SeeAllContainer(
      {super.key,
      required this.header,
      required this.subHeader,
      required this.buttonLihatSemua});
  final String header;
  final String subHeader;
  final bool buttonLihatSemua;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                header,
                style: const TextStyle(
                  fontSize: MySizes.fonztSizeLg,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subHeader != ""
                  ? Text(
                      subHeader,
                      style: const TextStyle(
                          fontSize: MySizes.fonztSizeMd, color: Colors.grey),
                    )
                  : const SizedBox()
            ],
          ),
          buttonLihatSemua
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // border: Border.all(color: MyColors.darkblue),
                    color: MyColors.primary,
                  ),
                  child: const Row(
                    children: [
                      Text(
                        "See all",
                        style: TextStyle(
                          fontSize: MySizes.fonztSizeSm,
                          color: MyColors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.white,
                      )
                    ],
                  )
                  // const Text(
                  //   "Lihat Semua >",
                  //   style: TextStyle(
                  //     fontSize: MySizes.fonztSizeSm,
                  //     color: MyColors.grey,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  )
              : const SizedBox()
        ],
      ),
    );
  }
}