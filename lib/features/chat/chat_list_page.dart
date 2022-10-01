import 'package:flutter/material.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/features/chat/components/all_contacts.dart';
import 'package:yourone/features/chat/components/recent_chats.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar.withSkip(title: 'Chats'),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: <Widget>[
                  AllContacts(),
                  RecentChats()
                  /*  FavouriteContacts(),
                  
                  RecentChats(), */
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
