import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/features/authentication/data/auth_store.dart';
import 'package:yourone/features/chat/components/all_contacts.dart';
import 'package:yourone/features/chat/components/recent_chats.dart';
import 'package:yourone/features/chat/cubit/chat_cubit.dart';
import 'package:yourone/injection.dart';

import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatCubit>(
      create: (context) => getIt<ChatCubit>(),
      child: const ChatListView(),
    );
  }
}

class ChatListView extends StatefulWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  State<ChatListView> createState() => _ChatListViewState();
}

class _ChatListViewState extends State<ChatListView> {
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
