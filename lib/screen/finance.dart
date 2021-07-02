import 'package:flutter/material.dart';
import 'package:themes/utils/string_resource.dart';
import 'package:themes/widget/custom_text.dart';

import 'bottom_sheet_screen/bottom_sheet_screen.dart';

class FinancialScreen extends StatefulWidget {
  @override
  _FinancialScreenState createState() => _FinancialScreenState();
}

class _FinancialScreenState extends State<FinancialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          StringResource.transactionDetails,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0, bottom: 30),
                child: Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.green, Colors.greenAccent.shade100],
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            StringResource.amount,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomText(
                            StringResource.card,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      StringResource.recentTransaction,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      StringResource.seeAll,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.money),
                title: CustomText(
                  StringResource.transfer,
                  fontWeight: FontWeight.bold,
                ),
                trailing: CustomText(
                  StringResource.fourty,
                ),
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag),
                title: CustomText(
                  StringResource.shopping,
                  fontWeight: FontWeight.bold,
                ),
                trailing: CustomText(
                  StringResource.five,
                ),
              ),
              ListTile(
                leading: Icon(Icons.restaurant),
                title: CustomText(
                  StringResource.restaurant,
                  fontWeight: FontWeight.bold,
                ),
                trailing: CustomText(
                  StringResource.three,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BottomSheetScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
