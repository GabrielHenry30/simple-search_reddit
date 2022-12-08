import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_service.dart';
import 'package:flutter_trade2/app/features/reddit/screens/search/search_controller.dart';

void main() {
  final service = RedditService(Dio());
  SearchController controller = SearchController(service);

  String search = 'climbing';
  List<String> resp = ['Spicy boulder I made this week', 'Homemade Chalk Bucket', '1/2 Route (5.10+) on Namaste Wall', 'Cardiac Arete, August 2022', 'Isaac on his send of “Pagan Poetry” in Joes Valley, Utah [OC]', 'Big wall climbing on The Nose of El Capitan', 'The Self-Rehabbed Climber - new book on rehab for common climbing injuries', 'Norwegian helicopter making the crag a safer place', 'My first V6 in the gym', 'Will Bosi flashing The Dagger, V13/14 or 8B/+', 'Daily Discussion Thread: spray/circlejerk/memes/chat/whatever allowed', 'Maui - NRG'];

  test('Testing getReddit()', () async {
    await controller.setReddit(search);
    expect(controller.titles, resp);
  });

  test('Test method changeIsLoading', () {
    controller.changeIsLoading(false);
    expect(controller.isLoading, false);
  });
}
