import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                child: Row(
                  children: [
                    GestureDetector(
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffC8F29A),
                          ),
                          child: Center(child: Icon(Icons.chevron_left)),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Flexible(
                      child: Center(
                        child: Text(
                          "Send",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(10),
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
            Gap(10),
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
                    backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/36250619?v=4",
                    ),
                  ),
                  title: Text(
                    "Ibnul Mutaki",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("123-456-789"),
                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Text(
                      "Edit",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Color(0xff154617),
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
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffC8F29A),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Send Money",
                                style: Theme.of(context).textTheme.titleMedium!
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
