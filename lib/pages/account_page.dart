import 'package:flutter/material.dart';
import 'package:flutter_testing/themes/colors.dart';
import 'package:flutter_testing/themes/text_styles.dart';
import 'package:get/get.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorScheme.background,
      appBar: _appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: CircleAvatar(
              //User image hier
              backgroundImage: NetworkImage(
                'https://pbs.twimg.com/media/D4pKJmjUEAAPKf4?format=jpg&name=small',
              ),
              radius: 62,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const AccountInfoWidget(
            sTitle: 'Name',
            sInfo: 'BlackMan',
          ),
          const SizedBox(
            height: 20,
          ),
          const AccountInfoWidget(
            sTitle: 'Email',
            sInfo: 'gaydude@gmail.com',
          ),
          const SizedBox(
            height: 20,
          ),
          const AccountInfoWidget(
            sTitle: 'Average Mood',
            sInfo: 'Gay',
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextButton(
              onPressed: () {
                _logOutAlert();
              },
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(
                  const TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.white,
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  clPrimary,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(
                    MediaQuery.of(context).size.width,
                    38,
                  ),
                ),
              ),
              child: const Text('Log Out'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  _logOutAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: context.theme.colorScheme.background,
          title: const Text(
            'Log Out',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          content:
              Text('Are you sure you want to log out of the existing account?',
                  style: regularText.copyWith(
                    fontSize: 16,
                    color: Colors.black,
                  )),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel',
                  style: regularText.copyWith(
                    fontSize: 16,
                    color: Colors.grey[600],
                  )),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text(
                'Yes',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: clPrimary,
                ),
              ),
              onPressed: () {
                //log out logic goes here
              },
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 20,
        );
      },
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: context.theme.colorScheme.background,
      elevation: 0,
      foregroundColor: Get.isDarkMode ? Colors.white : Colors.black,
    );
  }
}

class AccountInfoWidget extends StatelessWidget {
  final String sInfo;
  final String sTitle;

  const AccountInfoWidget({
    super.key,
    required this.sInfo,
    required this.sTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            sTitle,
            style: boldText.copyWith(
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 45,
            child: TextFormField(
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.top,
              initialValue: sInfo,
              readOnly: true,
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 2,
                    color: clPrimary,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 4,
                    color: clPrimary,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 2,
                    color: clPrimary,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
