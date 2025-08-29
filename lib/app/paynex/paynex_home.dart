import 'package:diaria_ui/app/paynex/paynex_send.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// Reference : https://ui8.net/orbit-studio-20/products/paynex---finance-mobile-app-ui-kit

class PayhexHome extends StatefulWidget {
  const PayhexHome({super.key});

  @override
  State<PayhexHome> createState() => _PayhexHomeState();
}

class _PayhexHomeState extends State<PayhexHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5F5),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Color(0xffF4F5F5)),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/36250619?v=4",
                      ),
                    ),
                    title: Text(
                      "Hi, Ibnul Mutaki",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("ibnuul@gmail.com"),
                    trailing: Icon(
                      Icons.notifications_none,
                      color: Color(0xff154617),
                    ),
                  ),
                  // Gap(10),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffB2EB73),
                      ),
                      child: Column(
                        children: [
                          Gap(25),
                          Text(
                            "Wallet Balance",
                            style: TextStyle(color: Color(0xff154617)),
                          ),
                          Gap(5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "\$520,421.",
                                style: Theme.of(context).textTheme.displaySmall!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff154617),
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 2),
                                child: Text(
                                  "00",
                                  style: Theme.of(context).textTheme.titleLarge!
                                      .copyWith(color: Color(0xff154617)),
                                ),
                              ),
                            ],
                          ),
                          Gap(10),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffEEFFDD),
                              border: BoxBorder.all(
                                width: 2,
                                color: Color(0xff154617),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute<void>(
                                          builder: (context) => PaynexSend(),
                                        ),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.arrow_circle_up_rounded,
                                          size: 40,
                                          color: Color(0xff154617),
                                        ),
                                        Text(
                                          "Send",
                                          style: TextStyle(
                                            color: Color(0xff154617),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text("|"),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.arrow_circle_down_rounded,
                                        size: 40,
                                        color: Color(0xff154617),
                                      ),
                                      Text(
                                        "Request",
                                        style: TextStyle(
                                          color: Color(0xff154617),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text("|"),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.account_balance,
                                        color: Color(0xff154617),
                                        size: 40,
                                      ),
                                      Text(
                                        "Bank",
                                        style: TextStyle(
                                          color: Color(0xff154617),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(10),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Gap(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Transactions",
                                  style: Theme.of(context).textTheme.titleLarge!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff154617),
                                      ),
                                ),
                                Text(
                                  "See all",
                                  style: Theme.of(context).textTheme.titleSmall!
                                      .copyWith(color: Color(0xff154617)),
                                ),
                              ],
                            ),
                            Gap(10),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: NetworkImage(
                                  "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/144_Gitlab_logo_logos-512.png",
                                ),
                              ),
                              title: Text(
                                "GitLab Inc.",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff154617),
                                ),
                              ),
                              subtitle: Text("21/07/2025"),
                              trailing: Text(
                                "\$170.09",
                                style: Theme.of(context).textTheme.bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff154617),
                                    ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/5968/5968867.png",
                                ),
                              ),
                              title: Text(
                                "Hotjar Ltd.",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff154617),
                                ),
                              ),
                              subtitle: Text("05/07/2025"),
                              trailing: Text(
                                "\$200.12",
                                style: Theme.of(context).textTheme.bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff154617),
                                    ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: NetworkImage(
                                  "https://mitto.ch/wp-content/uploads/2024/01/salesforce@2x-8-1.png",
                                ),
                              ),
                              title: Text(
                                "Salesforce.com, Inc.",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff154617),
                                ),
                              ),
                              subtitle: Text("16/06/2025"),
                              trailing: Text(
                                "\$89.15",
                                style: Theme.of(context).textTheme.bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffFB4E4E),
                                    ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: NetworkImage(
                                  "https://images.icon-icons.com/2429/PNG/512/basecamp_logo_icon_147315.png",
                                ),
                              ),
                              title: Text(
                                "Basecamp LLC",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff154617),
                                ),
                              ),
                              subtitle: Text("16/06/2025"),
                              trailing: Text(
                                "\$150.20",
                                style: Theme.of(context).textTheme.bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff154617),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment
                        .bottomCenter, // membuat horizontal tetap di tengah
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                      ), // jarak dari bawah layar
                      child: Container(
                        height: 80,
                        // width tidak diatur → mengikuti lebar child
                        decoration: BoxDecoration(
                          color: Color(0xffEEFFDD),
                          borderRadius: BorderRadius.circular(60),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          spacing: 10,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 60, // lebar konten
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffB2EB73),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.home_filled,
                                    size: 30,
                                    color: Color(0xff154617),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                              width: 60, // lebar konten
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffEEFFDD),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.insert_chart_outlined_rounded,
                                    size: 30,
                                    color: Color(0xff8B8F87),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                              width: 60, // lebar konten
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffEEFFDD),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.wallet_rounded,
                                    size: 30,
                                    color: Color(0xff8B8F87),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                              width: 60, // lebar konten
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffEEFFDD),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.person_2_outlined,
                                    size: 30,
                                    color: Color(0xff8B8F87),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
