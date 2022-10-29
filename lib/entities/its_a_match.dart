// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ItsAMatch {
  final String partnerId;
  final String partnerName;
  final String partnerPhoto;
  final String myId;
  final String myName;
  final String myPhoto;
  ItsAMatch({
    required this.partnerId,
    required this.partnerName,
    required this.partnerPhoto,
    required this.myId,
    required this.myName,
    required this.myPhoto,
  });

  ItsAMatch copyWith({
    String? partnerId,
    String? partnerName,
    String? partnerPhoto,
    String? myId,
    String? myName,
    String? myPhoto,
  }) {
    return ItsAMatch(
      partnerId: partnerId ?? this.partnerId,
      partnerName: partnerName ?? this.partnerName,
      partnerPhoto: partnerPhoto ?? this.partnerPhoto,
      myId: myId ?? this.myId,
      myName: myName ?? this.myName,
      myPhoto: myPhoto ?? this.myPhoto,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerId': partnerId,
      'partnerName': partnerName,
      'partnerPhoto': partnerPhoto,
      'myId': myId,
      'myName': myName,
      'myPhoto': myPhoto,
    };
  }

  factory ItsAMatch.fromMap(Map<String, dynamic> map) {
    return ItsAMatch(
      partnerId: map['partnerId'] as String,
      partnerName: map['partnerName'] as String,
      partnerPhoto: map['partnerPhoto'] as String,
      myId: map['myId'] as String,
      myName: map['myName'] as String,
      myPhoto: map['myPhoto'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItsAMatch.fromJson(String source) =>
      ItsAMatch.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ItsAMatch(partnerId: $partnerId, partnerName: $partnerName, partnerPhoto: $partnerPhoto, myId: $myId, myName: $myName, myPhoto: $myPhoto)';
  }

  @override
  bool operator ==(covariant ItsAMatch other) {
    if (identical(this, other)) return true;

    return other.partnerId == partnerId &&
        other.partnerName == partnerName &&
        other.partnerPhoto == partnerPhoto &&
        other.myId == myId &&
        other.myName == myName &&
        other.myPhoto == myPhoto;
  }

  @override
  int get hashCode {
    return partnerId.hashCode ^
        partnerName.hashCode ^
        partnerPhoto.hashCode ^
        myId.hashCode ^
        myName.hashCode ^
        myPhoto.hashCode;
  }
}
