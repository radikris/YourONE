import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/entities/chat_message.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/features/authentication/data/auth_store.dart';
import 'package:yourone/features/chat/components/recent_chats.dart';
import 'package:yourone/features/chat/cubit/chat_cubit.dart';
import 'package:yourone/injection.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/theme/text_styles.dart';
import 'package:yourone/extensions/extensions.dart';

class ChatDetailPage extends StatelessWidget {
  const ChatDetailPage({Key? key, required this.partner}) : super(key: key);

  final UserProfile partner;

  @override
  Widget build(BuildContext context) {
    context.read<ChatCubit>().connectMessageStream(
        currentUserId: getIt<AuthStore>().currentUserId!,
        partnerId: partner.id!);
    return ChatDetailView(
      partner: partner,
    );
  }
}

class ChatDetailView extends StatefulWidget {
  const ChatDetailView({Key? key, required this.partner}) : super(key: key);

  final UserProfile partner;

  @override
  State<ChatDetailView> createState() => _ChatDetailViewState();
}

class _ChatDetailViewState extends State<ChatDetailView> {
  @override
  void onDispose() {
    super.dispose();
    print('ondispose');
    textEditingController.dispose();
    context.read<ChatCubit>().disconnectMessageStream();
  }

  @override
  void initState() {
    super.initState();
  }

  final textEditingController = TextEditingController();

  _buildMessage(ChatMessage message, bool isMe) {
    final msg = ConstrainedBox(
      constraints: new BoxConstraints(
        //minWidth: MediaQuery.of(context).size.width * 0.4,
        maxWidth: MediaQuery.of(context).size.width * 0.6,
      ),
      child: Container(
        margin: AppDimen.vertical8.copyWith(
          left: isMe ? 0 : 16,
          right: isMe ? 16 : 0,
        ),
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
        decoration: BoxDecoration(
          color: isMe ? AppColor.primary : AppColor.primary10,
          borderRadius: isMe
              ? BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                )
              : BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
                ),
        ),
        child: Column(
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              message.timeStamp.formatToHHMM,
              style: TextStyles.normal14
                  .copyWith(color: isMe ? AppColor.white : AppColor.black70),
            ),
            SizedBox(height: 8.0),
            Text(
              message.text,
              style: TextStyles.normal14
                  .copyWith(color: isMe ? AppColor.white : AppColor.black70),
            ),
          ],
        ),
      ),
    );
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: msg,
    );
  }

  _buildMessageComposer() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor,
            offset: Offset(0.0, 1.0), //(x,y)
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: textEditingController,
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message...',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {
              print("send: + " + textEditingController.text);
              context.read<ChatCubit>().sendMessage(
                  message: textEditingController.text,
                  addresseeId: widget.partner.id!,
                  token: getIt<AuthStore>().currentUserToken!);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppAppBar(
            title: 'Person neve',
            subTitle: 'Mainleiras, 24',
            backWithAction: () {
              context.read<ChatCubit>().disconnectMessageStream();
              context.read<ChatCubit>().fetchPartnersAndChats();
            }),
        backgroundColor: AppColor.primary10,
        body: Column(
          children: [
            Expanded(
              child: Container(
                //padding: AppDimen.horizontal16,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(32),
                  ),
                ),
                child: GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          child: StreamBuilder(
                            stream: context
                                .read<ChatCubit>()
                                .streamController
                                .stream,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                var listMessage =
                                    snapshot.data as List<ChatMessage>;
                                return ListView.separated(
                                    shrinkWrap: true,
                                    primary: false,
                                    itemBuilder: (context, index) {
                                      final msg = listMessage[index];
                                      return _buildMessage(
                                          msg,
                                          msg.senderId ==
                                              getIt<AuthStore>()
                                                  .currentUserId!);
                                    },
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      final msg = listMessage[index];

                                      final nextMsg =
                                          index + 1 < listMessage.length
                                              ? listMessage[index + 1]
                                              : null;

                                      if (nextMsg != null &&
                                          msg.timeStamp.daysBetween(
                                                  nextMsg.timeStamp) >
                                              1) {
                                        return Row(children: [
                                          Expanded(
                                            child: Container(
                                              margin: AppDimen.horizontal8,
                                              height: 1,
                                              color: AppColor.border,
                                            ),
                                          ),
                                          Text(
                                            nextMsg
                                                .timeStamp.formatToYYYYMMDDhhmm,
                                            style: TextStyles.normal14.copyWith(
                                                color: AppColor.black70),
                                          ),
                                          Expanded(
                                            child: Container(
                                              margin: AppDimen.horizontal8,
                                              height: 1,
                                              color: AppColor.border,
                                            ),
                                          ),
                                        ]);
                                      } else {
                                        return SizedBox();
                                      }
                                    },
                                    itemCount: listMessage.length);
                              }
                              return CircularProgressIndicator();
                            },
                          ),
                          flex: 5),
                      _buildMessageComposer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
