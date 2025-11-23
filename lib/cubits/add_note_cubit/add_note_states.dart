class NotesStates {}

class AddNotesInitialState extends NotesStates {}

class AddNotesLoadingState extends NotesStates {}

class AddNotesSuccessState extends NotesStates {}

class AddNotesFailureState extends NotesStates {
  final String errorMessage;
  AddNotesFailureState(this.errorMessage);
}
