import 'package:flutter/material.dart';
import 'package:medicine_app/consts/consts.dart';

import '../../../widgets/Custom Appbar/custom_appBar.dart';

class TermCondition extends StatelessWidget {
  const TermCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: customAppBar(title: termsCondition),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "INTRODUCTION",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Welcome to OsudKini also hereby known as. We are an online marketplace and these are the terms and conditions governing your access and use of OsudKini along with its related sub-domains, sites, mobile app, services and tools  By using the Site, you hereby accept these terms and conditions (including the linked information herein) and represent that you agree to comply with these terms and conditions  This User Agreement is",
                    style: TextStyle(color: darkFontGrey),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "CONDITIONS OF USE",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "To access certain services offered by the platform, we may require that you create an account with us or provide personal information to complete the creation of an account. We may at any time in our sole and absolute discretion, invalidate the username and/or password without giving any reason or prior notice and shall not be liable or responsible for any losses suffered by, caused by, arising out of, in connection with or because of such request or invalidation.",
                    style: TextStyle(color: darkFontGrey),
                  ), SizedBox(
                    height: 24,
                  ),
                  Text(
                    "YOUR ACCOUNT",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "To access certain services offered by the platform, we may require that you create an account with us or provide personal information to complete the creation of an account. We may at any time in our sole and absolute discretion, invalidate the username and/or password without giving any reason or prior notice and shall not be liable or responsible for any losses suffered by, caused by, arising out of, in connection with or because of such request or invalidation.",
                    style: TextStyle(color: darkFontGrey),
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
