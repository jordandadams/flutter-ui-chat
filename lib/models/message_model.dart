import 'package:state_flutter_app/models/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/Addison.jpg',
);

// USERS
final User angel = User(
  id: 1,
  name: 'Angel',
  imageUrl: '../../assests/images/Angel.jpg',
);
final User jason = User(
  id: 2,
  name: 'Jason',
  imageUrl: 'assets/images/Jason.jpg',
);
final User judd = User(
  id: 3,
  name: 'Judd',
  imageUrl: 'assets/images/Judd.jpg',
);
final User leslie = User(
  id: 4,
  name: 'Leslie',
  imageUrl: 'assets/images/Leslie.jpg',
);
final User nathan = User(
  id: 5,
  name: 'Nathan',
  imageUrl: 'assets/images/Nathan.jpg',
);
final User stanley = User(
  id: 6,
  name: 'Stanley',
  imageUrl: 'assets/images/Stanley.jpg',
);
final User virgil = User(
  id: 7,
  name: 'Virgil',
  imageUrl: 'assets/images/Virgil.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [jason, judd, angel, nathan, stanley];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: jason,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: judd,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: angel,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: nathan,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: stanley,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];