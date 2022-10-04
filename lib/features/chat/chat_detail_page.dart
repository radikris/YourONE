import 'package:flutter/material.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/features/chat/components/recent_chats.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/theme/text_styles.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  _buildMessage(Message message, bool isMe) {
    final msg = ConstrainedBox(
      constraints: new BoxConstraints(
        minWidth: MediaQuery.of(context).size.width * 0.4,
        maxWidth: MediaQuery.of(context).size.width * 0.6,
      ),
      child: Container(
        margin: AppDimen.vertical8,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              message.time,
              style: TextStyles.normal14.copyWith(color: AppColor.black70),
            ),
            SizedBox(height: 8.0),
            Text(
              message.text,
              style: TextStyles.normal14.copyWith(color: AppColor.black70),
            ),
          ],
        ),
      ),
    );
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: msg,
    );
    if (isMe) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          msg,
        ],
      );
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        msg,
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
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
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppAppBar(title: 'Person neve', subTitle: 'Mainleiras, 24'),
        backgroundColor: AppColor.primary10,
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: AppDimen.horizontal16,
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
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
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
                              reverse: true,
                              padding: EdgeInsets.only(top: 15.0),
                              itemCount: messages.length,
                              itemBuilder: (BuildContext context, int index) {
                                final Message message = messages[index];
                                final bool isMe = index % 2 == 0;
                                return _buildMessage(message, isMe);
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                if (index % 3 == 0) {
                                  //TODO IF DATE GAP IS BIGGER THAN 1 (index-1)
                                  return Row(children: [
                                    Expanded(
                                      child: Container(
                                        margin: AppDimen.horizontal8,
                                        height: 1,
                                        color: AppColor.border,
                                      ),
                                    ),
                                    Text(
                                      'Datum',
                                      style: TextStyles.normal14
                                          .copyWith(color: AppColor.black70),
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
                            ),
                          ),
                        ),
                      ),
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
