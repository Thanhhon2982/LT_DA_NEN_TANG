
// ignore_for_file: file_names

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

// ignore: constant_identifier_names
const List<Map<String, dynamic>> sample_data = [
  {
    "id": 1,
    "question":
    "Flutter là một bộ công cụ phát triển phần mềm giao diện người dùng mã nguồn mở được tạo ra bởi ______",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Khi nào Google phát hành Flutter?",
    "options": ['Tháng 6 năm 2017', 'Tháng 5 năm 2017', 'Tháng 6 năm 2018', 'Tháng 5 năm 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Một vị trí bộ nhớ lưu trữ một chữ cái hoặc số duy nhất.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Bạn sử dụng lệnh nào để đưa dữ liệu ra màn hình?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
];
