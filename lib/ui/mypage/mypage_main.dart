import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:orot/controller/mypage/mypage_main_controller.dart';
import 'package:orot/global_asset/app_less_back.dart';
import 'package:orot/global_asset/common.dart';
import 'package:orot/global_asset/global_style.dart';
import 'package:flutter_switch/flutter_switch.dart';

//PageId :li01010000p
class MypageMain extends GetView<MypageMainController> {
  MypageMain({Key? key}) : super(key: key);
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppLessBack(),
      body: SafeArea(
        bottom: false,
        child: Obx(
          () => controller.isLoading.value
              ? const CircularProgressIndicator()
              : Container(
                  // color: GlobalStyle.orot_bg, // 수정
            color: Colors.lightBlueAccent,
                  child: Column(
                    children: [
                      // Column(
                      //   children: [
                      //     buildTopbtn(context),
                      //     Container(
                      //         margin: EdgeInsets.only(top: 8.h),
                      //         width: Get.width,
                      //         height: 3.h,
                      //         decoration: BoxDecoration(
                      //           color: GlobalStyle.orot_bg,
                      //           boxShadow: [
                      //             BoxShadow(
                      //                 color: const Color(0xfff5f7fa),
                      //                 offset: Offset(0, 1),
                      //                 blurRadius: 3,
                      //                 spreadRadius: 0)
                      //           ],
                      //         ))
                      //   ],
                      // ),
                      Column(
                        children: [
                          Container(
                            height: 80.h,
                            padding: EdgeInsets.only(left: 30.w, right: 16.w),
                            decoration: BoxDecoration(
                              color: Color(0xff7a65e8), // 수정
                              boxShadow: [BoxShadow(
                                  color: Color(0xff000000), // 수정
                                  offset: Offset(0,1),
                                  blurRadius: 6,
                                  spreadRadius: 0
                              ) ],),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(right: 8.w),
                                        child: Icon(Icons.supervised_user_circle, color: Colors.white,)
                                    ), // 수정
                                    Text("${controller.member?.name ?? ""}님 ",
                                        style: GlobalStyle.setTextStyle(
                                            'h20',
                                            'semi_bold',
                                            controller.userType.value == "general"
                                                ? GlobalStyle.orot_gray_darkest
                                                : GlobalStyle.orot_gray_darkest)), // 수정
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 19.w),
                                      child: SvgPicture.asset(
                                        'images/svg/lot.svg',
                                      ), // 수정
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        height: 40.h,
                                        width: 40.w,
                                        child: SvgPicture.asset(
                                          'images/svg/btn_all_leave_medium.svg',
                                        ),
                                      ),
                                    ), // 수정
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          height: Get.height,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                // Container(
                                //   padding: EdgeInsets.only(top: 24.h),
                                //   color: Colors.yellow,
                                // ),
                                buildInfo(context),
                                Container(
                                  padding: EdgeInsets.only(top: 24.h),
                                ),
                                Container(
                                    width: 1.sw,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        color: const Color(0xfff5f7fa))),
                                buildSecu(context),
                                Container(
                                    width: 1.sw,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        color: const Color(0xfff5f7fa))),
                                buildCustomerCenter(context)
                              ],
                            ),
                        ),
                        ),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }

  Widget buildTopbtn(BuildContext context) {
    return Container(
      color: Colors.pinkAccent, // 수정
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // IoT
          SvgPicture.asset(
            'images/svg/lot.svg',
          ),
          GestureDetector(
            child: Container(
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              height: 40.h,
              width: 40.w,
              child: SvgPicture.asset(
                'images/svg/btn_nm_setting.svg',
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              height: 40.h,
              width: 40.w,
              child: SvgPicture.asset(
                'images/svg/btn_all_leave_medium.svg',
              ),
            ),
          ),
          // 사각형 3702
        ],
      ),
    );
  }

  Widget buildInfo(BuildContext context) {
    return Column(
      children: [
        // Column(
        //   children: [
        //     Container(
        //       height: 80.h,
        //       padding: EdgeInsets.only(left: 30.w, right: 16.w),
        //       decoration: BoxDecoration(
        //         color: Color(0xff7a65e8), // 수정
        //         boxShadow: [BoxShadow(
        //             color: Color(0x3e5237e1), // 수정
        //             offset: Offset(0,1),
        //             blurRadius: 6,
        //             spreadRadius: 0
        //         ) ],),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Row(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Container(
        //                 margin: EdgeInsets.only(right: 8.w),
        //                   child: Icon(Icons.supervised_user_circle, color: Colors.white,)
        //               ), // 수정
        //               Text("${controller.member?.name ?? ""}님 ",
        //                   style: GlobalStyle.setTextStyle(
        //                       'h20',
        //                       'semi_bold',
        //                       controller.userType.value == "general"
        //                           ? GlobalStyle.orot_gray_darkest
        //                           : GlobalStyle.orot_gray_darkest)), // 수정
        //             ],
        //           ),
        //           Row(
        //             children: [
        //               Container(
        //                 margin: EdgeInsets.only(right: 19.w),
        //                 child: SvgPicture.asset(
        //                   'images/svg/lot.svg',
        //                 ), // 수정
        //               ),
        //               GestureDetector(
        //                 onTap: () {},
        //                 child: Container(
        //                   alignment: Alignment.centerRight,
        //                   decoration: BoxDecoration(
        //                     color: Colors.transparent,
        //                   ),
        //                   height: 40.h,
        //                   width: 40.w,
        //                   child: SvgPicture.asset(
        //                     'images/svg/btn_all_leave_medium.svg',
        //                   ),
        //                 ),
        //               ), // 수정
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        Container(
          height: 191.w,
          decoration: new BoxDecoration(
            color: Color(0xff7a65e8), // 수정
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.r),
              bottomRight: Radius.circular(25.r),
            ),
          ),
          child: Row(
            children: [
              // 사각형 3581
              GestureDetector(
                onTap: () {
                  controller.toMyinfo();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 32.w,
                        height: 32.h,
                        margin: EdgeInsets.only(right: 10.w),
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.all(Radius.circular(12)),
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: GlobalStyle.orot_gray_lighter, width: 1),),
                        child: controller.userType.value == "general"
                            ? SvgPicture.asset(
                          'images/svg/user_high.svg',
                        )
                            : SvgPicture.asset(
                          'images/svg/user.svg',
                        ),
                    ),
                    Text(
                      '내 정보 확인',
                      style: GlobalStyle.setTextStyle(
                          'h8', 'medium', GlobalStyle.orot_white), // 수정
                    ),
                  ],
                ),
              ),
              Container(
                width: 33.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 32.w,
                    height: 32.h,
                    margin: EdgeInsets.only(right: 10.w),
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.all(Radius.circular(12)),
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: GlobalStyle.orot_gray_lighter, width: 1),),
                    child: SvgPicture.asset(
                      'images/svg/siren.svg',
                    ),
                  ),
                  Container(width: 2.w),
                  Text(
                    '인근병원 바로찾기',
                    style: GlobalStyle.setTextStyle(
                        'h8', 'medium', GlobalStyle.orot_white), // 수정
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 24.h,
        ),
        Container(
            width: 320,
            height: 88,
            decoration: new BoxDecoration(
            color: Color(0xffffffff), // 수정
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(
              color: Color(0x408595a6), // 수정
              offset: Offset(0,0),
              blurRadius: 10,
              spreadRadius: 0
            ) ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  height: 1.sh,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          // POINT
                          color: GlobalStyle.orot_gray_lighter,
                          width: 0.4.w,
                        ),
                      ),
                      color: GlobalStyle.orot_gray_lightest),
                  child: Column(
                    children: [
                      Container(
                        height: 14.h,
                      ),
                      controller.userType.value == "general"
                          ? SvgPicture.asset(
                              'images/svg/ic_mp_local_high.svg',
                            )
                          : SvgPicture.asset(
                              'images/svg/ic_mp_local.svg',
                            ),
                      Container(
                        height: 8.h,
                      ),
                      Text(
                        '출산지원정보',
                        style: GlobalStyle.setTextStyle(
                            'h8', 'semi_bold', GlobalStyle.orot_gray_darkest),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  height: 1.sh,
                  decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          // POINT
                          color: GlobalStyle.orot_gray_lighter,
                          width: 0.4.w,
                        ),
                      ),
                      color: GlobalStyle.orot_gray_lightest),
                  child: Column(
                    children: [
                      Container(
                        height: 14.h,
                      ),
                      controller.userType.value == "general"
                          ? SvgPicture.asset(
                              'images/svg/ic_mp_bookmark_high.svg',
                            )
                          : SvgPicture.asset(
                              'images/svg/ic_mp_bookmark.svg',
                            ),
                      Container(
                        height: 8.h,
                      ),
                      Text(
                        '북마크',
                        style: GlobalStyle.setTextStyle(
                            'h8', 'semi_bold', GlobalStyle.orot_gray_darkest),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 14.h,
                      ),
                      controller.userType.value == "general"
                          ? SvgPicture.asset(
                              'images/svg/ic_mp_checklist_high.svg',
                            )
                          : SvgPicture.asset(
                              'images/svg/ic_mp_checklist.svg',
                            ),
                      Container(
                        height: 8.h,
                      ),
                      Text(
                        '체크리스트',
                        style: GlobalStyle.setTextStyle(
                            'h8', 'semi_bold', GlobalStyle.orot_gray_darkest),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildSecu(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 26.h, left: 20.w, right: 20.w),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'images/svg/lock.svg',
                width: 14.w,
              ),
              Container(width: 1.w),
              Text(
                '인증 및 보안',
                style: GlobalStyle.setTextStyle(
                    'h6', 'medium', GlobalStyle.orot_gray_darker),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 24.h),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text('앱 화면 잠금',
                    style: GlobalStyle.setTextStyle(
                        'h4', 'medium', GlobalStyle.orot_black)),
              ),
              FlutterSwitch(
                width: 32.0.w,
                height: 18.0.h,
                toggleSize: 14.0,
                value: controller.isLockChoice.value,
                borderRadius: 30.0,
                showOnOff: false,
                activeColor: GlobalStyle.orot_primary,
                inactiveColor: GlobalStyle.orot_gray_lighter,
                onToggle: (val) {
                  controller.isLockChoice(val);
                },
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 24.h),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text('앱 잠금 비밀번호 변경',
                    style: GlobalStyle.setTextStyle(
                        'h4', 'medium', GlobalStyle.orot_black)),
              ),
              Container(
                padding: EdgeInsets.only(top: 24.h),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 24.h),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text('앱 잠금 생체인증 등록',
                    style: GlobalStyle.setTextStyle(
                        'h4', 'medium', GlobalStyle.orot_black)),
              ),
              FlutterSwitch(
                width: 32.0.w,
                height: 18.0.h,
                toggleSize: 14.0,
                value: controller.isBioChoice.value,
                borderRadius: 30.0,
                showOnOff: false,
                activeColor: GlobalStyle.orot_primary,
                inactiveColor: GlobalStyle.orot_gray_lighter,
                onToggle: (val) {
                  controller.isBioChoice(val);
                },
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 24.h),
          ),
        ],
      ),
    );
  }

  Widget buildCustomerCenter(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 26.h, left: 20.w, right: 20.w),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'images/svg/customer-service.svg',
                width: 14.w,
              ),
              Container(width: 2.w),
              Text(
                '고객센터',
                style: GlobalStyle.setTextStyle(
                    'h6', 'medium', GlobalStyle.orot_gray_darker),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 24.h),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed('/NoticeList');
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text('공지사항',
                  style: GlobalStyle.setTextStyle(
                      'h4', 'medium', GlobalStyle.orot_black)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 24.h),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed('/Instructions');
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text('사용설명 페이지',
                  style: GlobalStyle.setTextStyle(
                      'h4', 'medium', GlobalStyle.orot_black)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 24.h),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed('/CustomerSupport');
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text('고객지원',
                  style: GlobalStyle.setTextStyle(
                      'h4', 'medium', GlobalStyle.orot_black)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 24.h),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('앱정보',
                style: GlobalStyle.setTextStyle(
                    'h4', 'medium', GlobalStyle.orot_black)),
          ),
          Container(
            padding: EdgeInsets.only(top: 24.h),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('서비스 해지',
                style: GlobalStyle.setTextStyle(
                    'h4', 'medium', GlobalStyle.orot_black)),
          ),
          Container(
            padding: EdgeInsets.only(top: 48.h),
          ),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
