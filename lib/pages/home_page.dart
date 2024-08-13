import 'package:flutter/material.dart';
import 'package:go_moon/widgets/customDropDownBtn.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.sizeOf(context).height;
    _deviceWidth = MediaQuery.sizeOf(context).width;

    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(31, 31, 31, 1)),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            height: _deviceHeight,
            width: _deviceWidth,
            // color: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _moonText(),
                    _bookRideWidget(),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: _astroImage(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _moonText() {
    return const Center(
      child: Text(
        "#MOONTIME",
        style: TextStyle(
          color: Colors.red,
          fontSize: 50,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }

  // ignore: unused_element
  Widget _astroImage() {
    return Container(
      height: _deviceHeight * 0.5,
      width: _deviceWidth * 0.65,
      // alignment: Alignment.bottomRight,
      decoration: const BoxDecoration(
        // color: Colors.blue,
        image: DecorationImage(
          image: AssetImage('assets/images/astro_moon.png'),
        ),
      ),
    );
  }

  Widget _bookRideWidget() {
    return SizedBox(
      height: _deviceHeight * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _dropDownWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _travelerDropDown(),
              _travelerDropDown2(),
            ],
          ),
          _bookingButton(),
        ],
      ),
    );
  }

  Widget _dropDownWidget() {
    // DropDownList Builder
    List<String> values = ['DropdownMenuItem', 'no'];
    return CustomDropDownBtn(
      values: values,
      width: _deviceWidth,
    );
  }

  Widget _travelerDropDown() {
    // DropDownList Builder
    List<String> values = [
      '1',
      '2',
      '3',
      '4',
    ];
    return CustomDropDownBtn(
      values: values,
      width: _deviceWidth * 0.43,
    );
  }

  Widget _travelerDropDown2() {
    // DropDownList Builder
    List<String> values = [
      'x',
      'y',
    ];
    return CustomDropDownBtn(
      values: values,
      width: _deviceWidth * 0.43,
    );
  }

  Widget _bookingButton() {
    return Container(
      width: _deviceWidth * 0.9,
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        child: Text("Press me"),
        onPressed: () {},
      ),
    );
  }
}
