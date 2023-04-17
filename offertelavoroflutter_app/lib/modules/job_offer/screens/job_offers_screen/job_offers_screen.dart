import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/screens/freelance_job_offer_list_screen/freelance_job_offer_list_screen.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/screens/hiring_job_offer_list_screen/hiring_job_offer_list_screen.dart';
import 'package:offertelavoroflutter_app/modules/job_offer/enums/job_offer_type.dart';
import 'package:offertelavoroflutter_app/modules/job_offer/screens/job_offers_screen/bloc/job_offers_screen_bloc.dart';

class JobOffersScreen extends StatelessWidget {
  const JobOffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => JobOffersScreenBloc(),
      child: const _JobOffersView(),
    );
  }
}

class _JobOffersView extends StatefulWidget {
  const _JobOffersView({Key? key}) : super(key: key);

  @override
  State<_JobOffersView> createState() => _JobOffersViewState();
}

class _JobOffersViewState extends State<_JobOffersView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: getPageIndex(JobOfferType.hiring));
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  int getPageIndex(JobOfferType type) {
    switch(type) {
      case JobOfferType.hiring:
        return 0;
      case JobOfferType.freelance:
        return 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<JobOffersScreenBloc, JobOffersScreenState>(
      listener: (context, state) {
        pageController.animateToPage(getPageIndex(state.activeJobOfferType),
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut
        );
      },
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          HiringJobOfferListScreen(
            onSwitchList: () => context.read<JobOffersScreenBloc>().add(const JobOffersScreenEvent.jobOfferTypeChanged(JobOfferType.freelance))
          ),
          FreelanceJobOfferListScreen(
            onSwitchList: () => context.read<JobOffersScreenBloc>().add(const JobOffersScreenEvent.jobOfferTypeChanged(JobOfferType.hiring))
          )
        ],
      ),
    );
  }
}

