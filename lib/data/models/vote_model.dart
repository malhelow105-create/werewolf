class VoteModel {
  const VoteModel({
    required this.voterId,
    required this.targetId,
    required this.createdAt,
  });

  final String voterId;
  final String targetId;
  final DateTime createdAt;

  factory VoteModel.fromMap(Map<String, dynamic> map) {
    return VoteModel(
      voterId: map['voterId'] as String,
      targetId: map['targetId'] as String,
      createdAt: DateTime.parse(map['createdAt'] as String),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'voterId': voterId,
      'targetId': targetId,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
