import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:myapp/lab/lab_display_page.dart';
import 'package:myapp/medical_shop_page.dart';
import 'package:myapp/utils.dart';

class SearchLab extends StatefulWidget {
  const SearchLab({super.key});

  @override
  State<SearchLab> createState() => _SearchLabState();
}

class _SearchLabState extends State<SearchLab> {
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    TextEditingController locController = TextEditingController();
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: 2000 * fem,
        decoration: BoxDecoration(color: Colors.indigo.shade100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 217 * fem),
                width: double.infinity,
                height: 168 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffe1d8d8)),
                  borderRadius: BorderRadius.circular(40 * fem),
                 color: Colors.pink.shade50,
                ),
                child: Center(
                  child: Text(
                    'Find Lab in India ',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Roboto',
                      fontSize: 60 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.1725 * ffem / fem,
                      color: Colors.pink.shade900,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            ImageSlideshow(
              height: 1000,
              indicatorColor: Colors.blue,
              onPageChanged: (value){
                debugPrint('PageChanged:$Value');

              },
              autoPlayInterval: 3000,
              isLoop: true,
              children: [
                Image(image: NetworkImage('https://images.pexels.com/photos/4021775/pexels-photo-4021775.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  fit: BoxFit.cover,
                ),
                Image(image: NetworkImage('https://images.pexels.com/photos/3259629/pexels-photo-3259629.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  fit: BoxFit.cover,
                ),
                Image(image: NetworkImage('https://images.pexels.com/photos/3825586/pexels-photo-3825586.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 260),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 700 * fem,
                    child: Material(
                      elevation: 3,
                      shadowColor: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      child: Row(
                        // Wrap the TextField and DropdownButton in a Row
                        children: [
                          Expanded(
                            child: TextField(
                              controller: locController,
                              keyboardType: TextInputType.phone,
                              style: TextStyle(
                                fontSize: 20 * ffem,
                                color: const Color(0xff000000),
                              ),
                              decoration: InputDecoration(
                                labelText: 'Enter Your Location',
                                labelStyle: TextStyle(
                                  color: locController.text.isEmpty
                                      ? const Color(0xff42869E)
                                      : Colors.transparent,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff42869E)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff42869E)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                prefixIcon: Icon(
                                  Icons.location_on,
                                  color: Color(0xff42869E),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          DropdownButton<String>(
                            // Add a DropdownButton
                            value: dropdownValue, // Set the selected value
                            onChanged: (String? newValue) {
                              // Handle dropdown selection
                              setState(() {
                                dropdownValue = newValue ??
                                    ''; // Default value is an empty string
                              });
                            },

                            items: <String>['lab In Delhi', 'lab In Delhi', 'lab In Delhi','lab In Delhi','lab In Delhi']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Material(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LabDisplayPage()),
                        );
                      },
                      borderRadius: BorderRadius.circular(30),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 22,
                          horizontal: 44,
                        ),
                        child: Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
