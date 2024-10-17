import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TopUpAmountPage extends StatefulWidget {
  const TopUpAmountPage({super.key});

  @override
  State<TopUpAmountPage> createState() => _TopUpAmountPageState();
}

class _TopUpAmountPageState extends State<TopUpAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: "0");
  @override
  void initState() {
    super.initState();
    amountController.addListener(() {
      final text = amountController.text;

      amountController.value = amountController.value.copyWith(
        text: NumberFormat.currency(locale: 'id', decimalDigits: 0, symbol: '')
            .format(
          int.parse(text.replaceAll('.', '')),
        ),
      );
    });
  }

  addAmount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deletePin() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        if (amountController.text.length == 1) {
          amountController.text = '0';
        } else {
          amountController.text = amountController.text
              .substring(0, amountController.text.length - 1);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 58),
        children: [
          const SizedBox(
            height: 60,
          ),
          Text(
            'Top Up Amount',
            style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                enabled: false,
                controller: amountController,
                cursorColor: greyColor,
                style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                ),
                decoration: InputDecoration(
                  prefixIcon: Text(
                    'Rp. ',
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: medium,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 86,
          ),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            children: [
              CustomInputButton(
                title: '1',
                onTap: () {
                  addAmount('1');
                },
              ),
              CustomInputButton(
                title: '2',
                onTap: () {
                  addAmount('2');
                },
              ),
              CustomInputButton(
                title: '3',
                onTap: () {
                  addAmount('3');
                },
              ),
              CustomInputButton(
                title: '4',
                onTap: () {
                  addAmount('4');
                },
              ),
              CustomInputButton(
                title: '5',
                onTap: () {
                  addAmount('5');
                },
              ),
              CustomInputButton(
                title: '6',
                onTap: () {
                  addAmount('16');
                },
              ),
              CustomInputButton(
                title: '7',
                onTap: () {
                  addAmount('7');
                },
              ),
              CustomInputButton(
                title: '8',
                onTap: () {
                  addAmount('8');
                },
              ),
              CustomInputButton(
                title: '9',
                onTap: () {
                  addAmount('9');
                },
              ),
              const SizedBox(
                width: 60,
                height: 60,
              ),
              CustomInputButton(
                title: '0',
                onTap: () {
                  addAmount('0');
                },
              ),
              GestureDetector(
                onTap: () {
                  deletePin();
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: numberBackgroundColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              CustomFilledButton(
                  title: 'Checkout Now',
                  onPressed: () async {
                    if (await Navigator.pushNamed(context, '/pin') == true) {
                      await launchUrlString('https://demo.midtrans.com/');

                      Navigator.pushNamedAndRemoveUntil(
                          context, '/top-up-success', (context) => false);
                    }
                  }),
              CustomTextButton(title: 'Terms & Condition', onPressed: () {}),
              const SizedBox(
                height: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}
