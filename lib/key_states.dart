/*import 'dart:async';
import 'package:flutter/widgets.dart';

class KeyStates extends ChangeNotifier {
  final int gridSize;
  final int playSpeed;

  StreamSubscription _subscription;
  var _selectedColumn = 0;
  var _selectedButtons = new Map<int, Map<int, bool>>();

  KeyStates({this.gridSize = 6, this.playSpeed = 125});

  bool get isPlaying => _subscription != null && !_subscription.isPaused;

  bool isButtonTrigerred(int column, int row) {
    return isButtonSelected(column, row) && column == _selectedColumn;
  }

  bool isButtonSelected(int column, int row) {
    if (!_selectedButtons.containsKey(column) ||
        !_selectedButtons[column].containsKey(row)) {
      return false;
    }

    return _selectedButtons[column][row];
  }

  void addButton(int column, int row) {
    if (!_selectedButtons.containsKey(column)) {
      _selectedButtons[column] = new Map<int, bool>();
    }

    _selectedButtons[column][row] = true;
    notifyListeners();
  }

  void removeButton(int column, int row) {
    _selectedButtons[column][row] = false;
    notifyListeners();
  }

  void play() {
    _subscription?.cancel();

    _subscription = Stream.periodic(
      Duration(milliseconds: playSpeed),
    ).listen((value) => {});
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

 */