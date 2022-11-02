import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yourone/auto_router.gr.dart';
import 'package:yourone/entities/recent_chat.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/features/chat/components/recent_chat_message.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/theme/text_styles.dart';

class Message {
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU - current user

// EXAMPLE CHATS ON HOME SCREEN

// EXAMPLE MESSAGES IN CHAT SCREEN

class RecentChats extends StatelessWidget {
  const RecentChats({Key? key, required this.allChats}) : super(key: key);

  final List<RecentChat> allChats;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: AppDimen.horizontal24Vertical16.copyWith(bottom: 4),
            child: Text(
              'Recents',
              style: TextStyles.bold18,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: Container(
              padding: AppDimen.horizontal24Vertical16,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  itemCount: allChats.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      indent: 70,
                      thickness: 2,
                      color: AppColor.border,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final RecentChat chat = allChats[index];

                    return RecentChatMessage(chat: chat);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
