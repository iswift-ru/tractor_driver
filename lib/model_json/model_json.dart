class ModelJson {
  List<Questions> questions;

  ModelJson({this.questions});

  ModelJson.fromJson(Map<String, dynamic> json) {
    if (json['questions'] != null) {
      questions = new List<Questions>();
      json['questions'].forEach((v) {
        questions.add(new Questions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.questions != null) {
      data['questions'] = this.questions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Questions {
  int ticket;
  int questionNumber;
  String photo;
  String question;
  int rightanswer;
  List<String> answers;

  Questions(
      {this.ticket,
      this.questionNumber,
      this.photo,
      this.question,
      this.rightanswer,
      this.answers});

  Questions.fromJson(Map<String, dynamic> json) {
    ticket = json['ticket'];
    questionNumber = json['question_number'];
    photo = json['photo'];
    question = json['question'];
    rightanswer = json['rightanswer'];
    answers = json['answers'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ticket'] = this.ticket;
    data['question_number'] = this.questionNumber;
    data['photo'] = this.photo;
    data['question'] = this.question;
    data['rightanswer'] = this.rightanswer;
    data['answers'] = this.answers;
    return data;
  }
}
