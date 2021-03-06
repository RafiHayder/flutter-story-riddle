import 'story.dart';

class StorySection {
  List<Story> _section = [
    Story(
        storyText:
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1Text: 'I\'ll hop in. Thanks for the help!',
        choice2Text: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyText: 'He nods slowly, unphased by the question.',
        choice1Text: 'At least he\'s honest. I\'ll climb in.',
        choice2Text: 'Wait, I know how to change a tire.'),
    Story(
        storyText:
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1Text: 'I love Elton John! Hand him the cassette tape.',
        choice2Text: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyText:
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1Text: 'Restart',
        choice2Text: ''),
    Story(
        storyText:
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1Text: 'Restart',
        choice2Text: ''),
    Story(
        storyText:
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1Text: 'Restart',
        choice2Text: '')

  ];
  int _number = 0;

  String getStory () {
    return _section[_number].storyText;
  }
  String getChoice1 () {
    return _section[_number].choice1Text;
  }
  String getChoice2 () {
    return _section[_number].choice2Text;
  }

  void nextStory (int choice) {
    if (choice == 1 && _number == 0) {
      _number=2;
    }
    else if (choice == 2 && _number == 0) {
      _number=1;
    }
    else if (choice == 1 && _number ==1) {
      _number=2;
    }
    else if (choice == 2 && _number == 1) {
      _number=3;
    }
    else if (choice == 1 && _number == 2) {
      _number=5;
    }
    else if (choice == 2 && _number == 2) {
      _number=4;
    }
    else if (_number == 3 || _number == 4 || _number == 5) {
      restart();
    }
  }
  void restart () {
    _number=0;
  }
  bool showButton () {
    if (_number<3) {
      return true;
    }
    else {
      return false;
    }
  }

}

