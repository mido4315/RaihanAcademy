// import 'package:flutter/material.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
//
// class CusBottomSheet extends StatefulWidget {
//   const CusBottomSheet({Key? key}) : super(key: key);
//
//   @override
//   State<CusBottomSheet> createState() => _CusBottomSheetState();
// }
//
// class _CusBottomSheetState extends State<CusBottomSheet>
//     with SingleTickerProviderStateMixin {
//   late AnimationController animationController;
//   late ScrollController scrollController;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 100),
//     );
//     scrollController = ScrollController();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ModalBottomSheet(
//       animationController: animationController,
//       scrollController: scrollController,
//       expanded: true,
//       onClosing: () {},
//       child: Container(),
//     );
//   }
//   modal_bottom_sheet: ^2.1.2
// }
