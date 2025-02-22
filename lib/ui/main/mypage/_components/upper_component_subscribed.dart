import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shelf/data/globals/avatar.dart';
import 'package:shelf/data/model/user/user.dart';
import 'package:shelf/ui/main/mypage/_components/logout_button.dart';
import 'package:shelf/ui/main/mypage/_components/next_purchase.dart';
import 'package:shelf/ui/main/mypage/_components/sub_period.dart';

import '../../../../_core/constants/constants.dart';
import '../../../../_core/constants/size.dart';
import '../../../../_core/constants/style.dart';

class UpperComponentSubscribed extends StatefulWidget {
  User? user;

  UpperComponentSubscribed({
    this.user,
  });

  @override
  State<UpperComponentSubscribed> createState() =>
      _UpperComponentSubscribedState();
}

class _UpperComponentSubscribedState extends State<UpperComponentSubscribed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      AssetImage(getAvatarPath(widget.user!.avatar)),
                ),
              ),
              SizedBox(height: 20, width: 5),
              Text(
                '${widget.user!.nickName} 님',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              LogoutButton(),
            ],
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffe6e6e6)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: gap_xxl,
                  decoration: BoxDecoration(
                    color: Color(0xffa179da),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '나의 정기구독',
                          style: h8(),
                        ),
                        Icon(Icons.arrow_forward_ios, color: TColor.white),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Text(
                              '전자책 월 정기구독',
                            ),
                            SizedBox(width: 5),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xffe6e6e6), width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text("전차책 구독",
                                  style: TextStyle(
                                      color: Color(0xffababab), fontSize: 10)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Column(
                        children: [
                          SubPeriod(),
                          NextPurchase(),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
