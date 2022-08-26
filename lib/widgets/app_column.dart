import 'package:flutter/material.dart';
import 'package:myecommerce/utils/colors.dart';
import 'package:myecommerce/utils/dimensions.dart';
import 'package:myecommerce/widgets/big_text.dart';
import 'package:myecommerce/widgets/icon_and_text_widget.dart';
import 'package:myecommerce/widgets/small_text.dart';

class Appcolumn extends StatelessWidget {
  const Appcolumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(text: "Paratha"),
          SizedBox(
            height: Dimensions.height10,
          ),
          // Comments section
          Row(
            children: [
              Wrap(
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    color: AppColors.mainColor,
                    size: 15,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SmallText(text: "4.5"),
              const SizedBox(width: 10),
              SmallText(text: "69"),
              const SizedBox(width: 10),
              SmallText(text: "comments"),
            ],
          ),
          SizedBox(height: Dimensions.height20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconSize: Dimensions.iconSize24,
                iconColor: AppColors.iconColor1,
              ),
              const SizedBox(width: 10),
              IconAndTextWidget(
                icon: Icons.location_on,
                text: "1.7km",
                iconSize: Dimensions.iconSize24,
                iconColor: AppColors.mainColor,
              ),
              const SizedBox(width: 10),
              IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "32min",
                iconSize: Dimensions.iconSize24,
                iconColor: AppColors.iconColor2,
              )
            ],
          ),
        ],
      ),
    );
  }
}
