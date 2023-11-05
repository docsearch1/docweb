import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/sidebar_controller.dart';
import 'package:myapp/new_page.dart';

import '../constant/horizontal_list.dart';
import '../utils.dart';

class SlidingWebPage extends StatelessWidget {
  const SlidingWebPage({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1120;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    SideBarController sideBarController = Get.put(SideBarController());
    final _formKey = GlobalKey<FormState>();
    void _showCustomDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            // Use a Container with a background image as the dialog's child
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background_image.png'), // Your image path
                  fit: BoxFit.cover, // Cover the entire dialog
                ),
              ),
              child: Column(
                children: <Widget>[
                  // Add content for your dialog here
                  Text('Custom Dialog Content'),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Close Dialog'),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  width: 1441 * fem,
                  height: 124 * fem,
                  color: Color(0xff005473),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/page-1/images/logonew.png',
                            width: 60.42 * fem,
                            height: 58.63 * fem,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 32 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2102272511 * ffem / fem,
                                    color: Color(0xff005473),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Doc ',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 32 * ffem,
                                        fontWeight: FontWeight.w800,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xffff2828),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Search',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 32 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xfffbbc05),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: Container(
                          width: 300,
                          height: 56 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffb3b3b3)),
                            color: Color(0xffffffff),
                            borderRadius:
                                BorderRadius.circular(48.4500007629 * fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 10 * fem),
                              Expanded(
                                child: Material(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText:
                                          'Search for doctors & hospitals',
                                      hintStyle: TextStyle(
                                        fontSize: 18.7000007629 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(
                                            0x56151515), // Adjust the color as needed
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10 * fem),
                              Container(
                                // autogroupxmgdojX (MuzoorWuEXsUXYSk4qxMgd)
                                padding: EdgeInsets.fromLTRB(29.05 * fem,
                                    22.95 * fem, 28.7 * fem, 11.8 * fem),

                                height: 56 * fem,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffb3b3b3)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(
                                      48.4500007629 * fem),
                                ),
                                child: Center(
                                  // path26irV (1724:1495)
                                  child: SizedBox(
                                    width: 21.25 * fem,
                                    height: 21.25 * fem,
                                    child: Image.network(
                                      "assets/page-1/images/searchicon.png",
                                      width: 21.25 * fem,
                                      height: 21.25 * fem,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                 
                      Text(
                        'Contact us',
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 24 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Container(
                        width: 80 * fem,
                        height: 48 * fem,
                        color: Color(0xff000000),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () async{
                                await showDialog<void>(
                                context: context,
                                builder: (context) => AlertDialog(
                                content: Stack(
                                clipBehavior: Clip.none,
                                children: <Widget>[
                                Positioned(
                                right: -40,
                                top: -40,
                                child: InkResponse(
                                onTap: () {
                                Navigator.of(context).pop();
                                },
                                child: const CircleAvatar(
                                backgroundColor: Colors.red,
                                child: Icon(Icons.close),
                                ),
                                ),
                                ),
                                Form(
                                key: _formKey,
                                child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                Padding(
                                padding: const EdgeInsets.all(8),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Name',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black, // Border color
                                          width: 2.0, // Border width
                                        ),
                                      )
                                  ),
                                ),
                                ),
                                Padding(
                                padding: const EdgeInsets.all(8),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Address',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black, // Border color
                                          width: 2.0, // Border width
                                        ),
                                      )
                                  ),
                                ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: 'Mobile Number',
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.black, // Border color
                                              width: 2.0, // Border width
                                            ),
                                          )
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: 'Verify Otp',
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.black, // Border color
                                              width: 2.0, // Border width
                                            ),
                                          )
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: SizedBox(
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.blue, // Background color
                                          onPrimary: Colors.white, // Text color
                                        ),
                                        child: const Text('Get Otp'),
                                        onPressed: () {

                                        },
                                      ),
                                    ),
                                  ),
                                Padding(
                                padding: const EdgeInsets.all(8),
                                child: SizedBox(
                                  width: 500,
                                  child: ElevatedButton(

                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.red, // Background color
                                       // Text color
                                    ),
                                  child: const Text('Submit'),
                                  onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  }
                                  },
                                  ),
                                ),
                                )
                                ],
                                ),
                                ),
                                ],
                                ),
                                ));
                              },
                              child: Text(
                                "Register",
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 17 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.17 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Text(
                              "/",
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 17 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.17* ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                            TextButton(
                              onPressed: () async{
                                await showDialog<void>(
                                context: context,
                                builder: (context) => AlertDialog(
                                content: Stack(
                                clipBehavior: Clip.none,
                                children: <Widget>[
                                Positioned(
                                right: -40,
                                top: -40,
                                child: InkResponse(
                                onTap: () {
                                Navigator.of(context).pop();
                                },
                                child: const CircleAvatar(
                                backgroundColor: Colors.red,
                                child: Icon(Icons.close),
                                ),
                                ),
                                ),
                                Form(
                                key: _formKey,
                                child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                Padding(
                                padding: const EdgeInsets.all(8),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Mobile Number',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black, // Border color
                                        width: 2.0, // Border width
                                      ),
                                    )
                                  ),
                                ),
                                ),
                                Padding(
                                padding: const EdgeInsets.all(8),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Verify Code',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black, // Border color
                                          width: 2.0, // Border width
                                        ),
                                      )
                                  ),
                                ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: ElevatedButton(
                                    child: Text('Get Otp'),
                                    onPressed: (){},
                                  ),
                                ),
                                Padding(
                                padding: const EdgeInsets.all(8),
                                child: ElevatedButton(
                                child: const Text('Submitß'),
                                onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                }
                                },
                                ),
                                )
                                ],
                                ),
                                ),
                                ],
                                ),
                                ));
                              },
                              child: Text(
                                "Login",
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 17* ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.17 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        HorizontalListItem(
                          text: 'Home',
                          fem: ffem,
                          onTap: () => sideBarController.index.value = 0,
                          selected: sideBarController.index.value == 0),
                      HorizontalListItem(
                          text: 'Find Doctors',
                          fem: ffem,
                          onTap: () => sideBarController.index.value = 1,
                          selected: sideBarController.index.value == 1),
                      HorizontalListItem(
                          text: 'Video consult',
                          fem: ffem,
                          onTap: () => sideBarController.index.value = 2,
                          selected: sideBarController.index.value == 2),
                      HorizontalListItem(
                          text: 'Medicines',
                          fem: ffem,
                          onTap: () => sideBarController.index.value = 3,
                          selected: sideBarController.index.value == 3),
                      HorizontalListItem(
                          text: 'Lab Test',
                          fem: ffem,
                          onTap: () => sideBarController.index.value = 4,
                          selected: sideBarController.index.value == 4),
                      HorizontalListItem(
                          text: 'Hospital',
                          fem: ffem,
                          onTap: () => sideBarController.index.value = 5,
                          selected: sideBarController.index.value == 5),
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Obx(
                () => sideBarController.pages[sideBarController.index.value]),
          ),
        ],
      ),
    );
  }
}
