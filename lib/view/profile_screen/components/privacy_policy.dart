import 'package:creekapp/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../widgets/custom _backbutton.dart';
import '../../../widgets/custom_appbar.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar1(
        homeController: homeController,
        text: 'Privacy Policy',
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffF9F9F9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Text(
                  'Last updated: March 25, 2024',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: primaryColor,
                  ),
                ),
                SizedBox(height: 16.0),
                const Text(
                  'This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.',
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
                SizedBox(height: 16.0),
                const Text(
                  'Interpretation and Definitions',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Interpretation',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.',
                  style: TextStyle(
                    color: primaryColor
                  ),
                ),

                SizedBox(height: 16.0),

                Text(
                  'Definition',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:primaryColor,
                  ),
                ),

                Text('For the purposes of this Privacy Policy:',
                    style: TextStyle(
                      color: primaryColor
                    )),

                bulletedList([
                  'Account means a unique account created for You to access our Service or parts of our Service.',
                  'Affiliate means an entity that controls, is controlled by or is under common control with a party, where "control" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.',
                  'Application refers to Creek, the software program provided by the Company.',
                  'Company (referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to Creek, 1 Cupertino, CA 95014.',
                  'Country refers to: California, United States',
                  'Device means any device that can access the Service such as a computer, a cellphone or a digital tablet.',
                  'Personal Data is any information that relates to an identified or identifiable individual.',
                  'Service refers to the Application.',
                  'Service Provider means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.',
                  'Third-party Social Media Service refers to any website or any social network website through which a User can log in or create an account to use the Service.',
                  'Usage Data refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).',
                  'You means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.',
                ]),

                const Text(
                  'Interpretation and Definitions',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                const Text(
                  'Types of Data Collected',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                const Text(
                  'Personal Data',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color:primaryColor,
                  ),
                ),

                Text(
                  'While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:',
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),

                bulletedList([
                  'Email address',
                  'First name and last name',
                  'Phone number',
                  'Address',
                  'Cookies and Usage Data',
                ]),

                // Add more Text widgets for the rest of the policy...
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget bulletedList(List<String> items) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: items.map((item) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 8.0,
              child: Icon(
                Icons.circle,
                size: 8.0,
                color: primaryColor
              ),
            ),
            SizedBox(width: 8.0),
            Expanded(
                child: Text(
                  item,
                  style: TextStyle(
                    color:primaryColor,
                  ),
                )),
          ],
        ),
      );
    }).toList(),
  );
}
