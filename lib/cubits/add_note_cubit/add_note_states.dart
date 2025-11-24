class AddNotesStates {}

class AddNotesInitialState extends AddNotesStates {}

class AddNotesLoadingState extends AddNotesStates {}

class AddNotesSuccessState extends AddNotesStates {}

class AddNotesFailureState extends AddNotesStates {
  final String errorMessage;
  AddNotesFailureState(this.errorMessage);
}
