class Group {
  final String _id;
  final String _name;
  final List<String> _users;

  Group(this._id, this._name, this._users);

  String getGId() {
    return this._id;
  }

  String getGName() {
    return this._name;
  }

  List<String> getGUsers() {
    return this._users;
  }
}
