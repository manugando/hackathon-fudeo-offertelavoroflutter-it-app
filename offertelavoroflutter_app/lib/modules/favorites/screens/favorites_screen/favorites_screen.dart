import 'package:flutter/material.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/favorite_hiring_job_offer_list/favorite_hiring_job_offer_list.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FavoriteHiringJobOfferList(),
    );
  }
}
