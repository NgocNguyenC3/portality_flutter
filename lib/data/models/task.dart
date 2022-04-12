class TaskModel {
  String _content;
  String _timeEnd;
  String _dayEnd;

  TaskModel(this._content, this._timeEnd, this._dayEnd);

  String get content => _content;
  String get timeEnd => _timeEnd;
  String get dayEnd => _dayEnd;
}
