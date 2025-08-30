import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qr_flutter/qr_flutter.dart';

// Reference : https://ui8.net/orbit-studio-20/products/paynex---finance-mobile-app-ui-kit

class PaynexRequest extends StatefulWidget {
  const PaynexRequest({super.key});

  @override
  State<PaynexRequest> createState() => _PaynexRequestState();
}

class _PaynexRequestState extends State<PaynexRequest> {
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
                          "Request",
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
            QrImageView(
              data: 'https://github.com/cacing69',
              dataModuleStyle: QrDataModuleStyle(
                dataModuleShape: QrDataModuleShape.square,
                color: Color(0xff154617),
              ),
              eyeStyle: QrEyeStyle(
                eyeShape: QrEyeShape.square,
                color: Color(0xff154617),
              ),
              version: QrVersions.auto,

              size: 320.0,
            ),
            Gap(70),
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
                    Gap(30),
                    Text(
                      "Manually Code",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff154617),
                      ),
                    ),
                    Gap(20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
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
                                      hintText: "Paynex/request/11223344...",
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              Gap(10),
                              Material(
                                borderRadius: BorderRadius.circular(45),
                                color: Color(0xffC8F29A),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(45),
                                  onTap: () {},
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.copy,
                                          color: Color(0xff154617),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Gap(10),
                          Text("*This code can change at any time"),
                        ],
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
                              debugPrint("Share");
                            },
                            borderRadius: BorderRadius.circular(20),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Share",
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
