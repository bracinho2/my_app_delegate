abstract class AppAuth {
  Future<bool> loggedIn();
}

class AppAuthentication implements AppAuth {
  @override
  Future<bool> loggedIn() async {
    return true;
  }
}
