class Event {
  final String eventID;
  final String eventName;
  final String eventDate;
  final String eventTime;
  final int eventCost;
  final String eventLocation;
  final String eventImageUrl;
  const Event({
    required this.eventID,
    required this.eventName,
    required this.eventDate,
    required this.eventTime,
    required this.eventCost,
    required this.eventLocation,
    required this.eventImageUrl,
  });

  factory Event.fromJson(Map<String, dynamic> event) {
    return Event(
      eventID: event['eventID'] ?? '',
      eventName: event['eventName'] ?? '',
      eventDate: event['eventDate'] ?? '',
      eventTime: event['eventTime'] ?? '',
      eventCost: event['eventCost'] ?? '',
      eventLocation: event['eventLocation'] ?? '',
      eventImageUrl: event['eventImageUrl'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'eventID': eventID,
      'eventName': eventName,
      'eventDate': eventDate,
      'eventTime': eventTime,
      'eventCost': eventCost,
      'eventLocation': eventLocation,
      'eventImageUrl': eventImageUrl,
    };
  }
}
