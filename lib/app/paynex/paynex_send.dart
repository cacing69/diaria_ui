import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// Reference : https://ui8.net/orbit-studio-20/products/paynex---finance-mobile-app-ui-kit

class PaynexSend extends StatefulWidget {
  const PaynexSend({super.key});

  @override
  State<PaynexSend> createState() => _PaynexSendState();
}

class _PaynexSendState extends State<PaynexSend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB2EB73),
      body: SizedBox.expand(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Material(
                        borderRadius: BorderRadius.circular(45),
                        color: Color(0xffC8F29A),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(45),
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SizedBox(
                            width: 45,
                            height: 45,
                            child: Container(
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: Center(
                                child: Icon(
                                  Icons.chevron_left,
                                  color: Color(0xff154617),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Center(
                        child: Text(
                          "Send",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff154617),
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffC8F29A),
                ),
                child: Column(
                  children: [
                    Gap(20),
                    Text(
                      "Wallet Balance",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Color(0xff154617),
                      ),
                    ),
                    Gap(10),
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
                    Gap(20),
                  ],
                ),
              ),
            ),
            Gap(15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffC8F29A),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/36250619?v=4",
                    ),
                  ),
                  title: Text(
                    "Ibnul Mutaki",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("123-456-789"),
                  trailing: SizedBox(
                    width: 78,
                    height: 40,
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        onTap: () {
                          debugPrint("Send Money");
                        },
                        borderRadius: BorderRadius.circular(8),
                        child: Center(
                          child: Text(
                            "Edit",
                            style: Theme.of(context).textTheme.titleMedium!
                                .copyWith(color: Color(0xff154617)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Gap(20),
            Flexible(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Gap(40),
                    Text(
                      "\$12,121.00",
                      style: Theme.of(context).textTheme.headlineMedium!
                          .copyWith(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff154617),
                          ),
                    ),
                    Gap(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Divider(),
                    ),
                    Gap(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffC8F29A),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "Description",
                          ),
                          maxLines: 5,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SafeArea(
                        child: Material(
                          color: Color(0xffC8F29A),
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            onTap: () {
                              debugPrint("Send Money");
                            },
                            borderRadius: BorderRadius.circular(20),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Send Money",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff154617),
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
