class GetAllCalenderEvents {
  String? calendarId;
  String? userId;
  String? startDate;
  String? endDate;
  String? body;

  GetAllCalenderEvents(
      {this.calendarId, this.userId, this.startDate, this.endDate, this.body});

  GetAllCalenderEvents.fromJson(Map<String, dynamic> json) {
    calendarId = json['calendarId'];
    userId = json['userId'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['calendarId'] = this.calendarId;
    data['userId'] = this.userId;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['body'] = this.body;
    return data;
  }
}


class GetCalenderDayEventModel {
  String? startDate;
  String? endDate;
  String? body;

  GetCalenderDayEventModel({this.startDate, this.endDate, this.body});

  GetCalenderDayEventModel.fromJson(Map<String, dynamic> json) {
    startDate = json['start'];
    endDate = json['end'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['body'] = this.body;
    return data;
  }
}