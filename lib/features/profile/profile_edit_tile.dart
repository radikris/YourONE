import 'package:flutter/material.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/theme/text_styles.dart';

class ProfileEditTile extends StatelessWidget {
  const ProfileEditTile({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDimen.vertical16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyles.bold16,
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            onTap: () {
              showGeneralDialog(
                context: context,
                barrierColor: Colors.white.withOpacity(0.9), // Background color
                barrierDismissible: false,
                barrierLabel: 'Dialog',
                transitionDuration: Duration(milliseconds: 400),
                pageBuilder: (_, __, ___) {
                  return Scaffold(
                    appBar: AppAppBar(
                      backAction: () => {Navigator.of(context).pop()},
                      title: '',
                      subTitle: '',
                    ),
                    body: Padding(
                      padding: AppDimen.horizontal16Vertical24,
                      child: Column(
                        children: <Widget>[
                          child,
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            initialValue: 'Your value',
            style: TextStyle(overflow: TextOverflow.ellipsis),
            readOnly: true,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.chevron_right),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}
