import 'package:flutter/material.dart';
import 'package:vaultchatapp/core/enums/enums.dart';

/// A base ViewModel to manage and notify changes in UI state.
class BaseViewModel extends ChangeNotifier {
  // Initial state is idle.
  ViewState _state = ViewState.idle;

  /// Getter for the current state.
  ViewState get state => _state;

  /// Sets the state and notifies listeners.
  void setState(ViewState state) {
    if (_state != state) {
      _state = state;
      notifyListeners(); // Notify listeners only if the state changes.
    }
  }
}
