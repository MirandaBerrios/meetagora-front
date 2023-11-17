import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class MeetagoraAppAuthUser {
  MeetagoraAppAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MeetagoraAppAuthUser> meetagoraAppAuthUserSubject =
    BehaviorSubject.seeded(MeetagoraAppAuthUser(loggedIn: false));
Stream<MeetagoraAppAuthUser> meetagoraAppAuthUserStream() =>
    meetagoraAppAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
