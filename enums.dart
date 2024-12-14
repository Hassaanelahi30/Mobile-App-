/// Enum to represent various states of a ViewModel.
/// Enum to represent various states of a ViewModel.
enum ViewState {
  idle,    // Default state
  loading, // When data is being loaded
  success, // When data is successfully fetched or an operation succeeds
  error    // When an operation fails
}


/// A base ViewModel to manage and notify changes in UI state.

