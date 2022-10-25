import 'package:json_annotation/json_annotation.dart';

enum MessageEntityState {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('SENT')
  sent,
  @JsonValue('DELIVERED')
  delivered,
  @JsonValue('SEEN')
  seen
}

const $MessageEntityStateMap = {
  MessageEntityState.sent: 'SENT',
  MessageEntityState.delivered: 'DELIVERED',
  MessageEntityState.seen: 'SEEN'
};

enum PairEntityState {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('NOT_DECIDED')
  notDecided,
  @JsonValue('DENIED')
  denied,
  @JsonValue('MATCH')
  match
}

const $PairEntityStateMap = {
  PairEntityState.notDecided: 'NOT_DECIDED',
  PairEntityState.denied: 'DENIED',
  PairEntityState.match: 'MATCH'
};
