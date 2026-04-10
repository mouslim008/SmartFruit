class GPTService {
  Future<String> ask(String question) async {
    // Simulation réponse IA (offline / contrôle)
    if (question.toLowerCase().contains('apple')) {
      return "Apple is a healthy fruit rich in vitamins.";
    }
    if (question.toLowerCase().contains('banana')) {
      return "Banana gives energy and contains potassium.";
    }
    return "This fruit is good for your health.";
  }
}
