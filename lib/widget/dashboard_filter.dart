import 'package:fab_tech_sol/widget/dash_board_filter.dart';
import 'package:fab_tech_sol/resources/navigation_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AppColor/app_color.dart';
import '../consts/consts.dart';
import '../resources/responsive.dart';

class DashboardFilterBox extends StatelessWidget {
  const DashboardFilterBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: InkWell(
        onTap: (){
          DashboardFilter().dashboardFilter(context);
        },
        child: Container(
          width: 182,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.blue.withOpacity(0.2))),
          height: 50,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
            Row(children: [  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: Responsive.isDesktop(context) ? 20 : 15,
                width: Responsive.isDesktop(context) ? 20 : 15,
                child: Image(
                  image: AssetImage('${imageUrl}vector.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
              const SizedBox(width: 5),
              Text('Filter',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,fontFamily: fontFamilys,color: AppColor.hintColor),),],),
              Align(alignment:Alignment.centerRight,child: Icon(Icons.arrow_drop_down,))


            ],
          ),
        ),
      ),
    );
  }
}
