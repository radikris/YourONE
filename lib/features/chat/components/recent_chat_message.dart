import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yourone/auto_router.gr.dart';
import 'package:yourone/features/chat/components/recent_chats.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/text_styles.dart';

class RecentChatMessage extends StatelessWidget {
  const RecentChatMessage({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final Message chat;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => context.pushRoute(ChatDetailRoute()),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 35.0,
                    child: ClipOval(
                        child: Image.network(
                      width: 60,
                      height: 60,
                      "https://i.insider.com/5c48ef432bdd7f659443dc94?width=600&format=jpeg",
                      fit: BoxFit.fill,
                    )),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('chatneve', style: TextStyles.bold14),
                      SizedBox(height: 5.0),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Text(
                          chat.text,
                          style: TextStyles.normal14
                              .copyWith(color: AppColor.black70),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    chat.time,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  if (chat.unread)
                    Container(
                      width: 16.0,
                      height: 16.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    )
                ],
              ),
            ],
          ),
        ));
  }
}
