import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/screens/freelance_job_offer_list_screen/freelance_job_offer_list_screen.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/screens/hiring_job_offer_list_screen/hiring_job_offer_list_screen.dart';
import 'package:offertelavoroflutter_app/modules/job_offer/enums/job_offer_type.dart';
import 'package:offertelavoroflutter_app/modules/job_offer/screens/job_offers_screen/bloc/job_offers_screen_bloc.dart';
import 'package:rxdart/rxdart.dart';

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
  BehaviorSubject<bool> hiringScreenAnimationSubject = BehaviorSubject();
  BehaviorSubject<bool> freelanceScreenAnimationSubject = BehaviorSubject();
  late int activePageIndex;

  @override
  void initState() {
    super.initState();
    activePageIndex = getPageIndex(JobOfferType.hiring);
    hiringScreenAnimationSubject.add(true);
  }

  @override
  void dispose() {
    hiringScreenAnimationSubject.close();
    freelanceScreenAnimationSubject.close();
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
      listener: (context, state) async {
        if(state.activeJobOfferType == JobOfferType.hiring) {
          freelanceScreenAnimationSubject.add(false);
          await Future.delayed(const Duration(milliseconds: 400), () {});
          setState(() { activePageIndex = getPageIndex(state.activeJobOfferType); });
          hiringScreenAnimationSubject.add(true);
        } else {
          hiringScreenAnimationSubject.add(false);
          await Future.delayed(const Duration(milliseconds: 400), () {});
          setState(() { activePageIndex = getPageIndex(state.activeJobOfferType); });
          freelanceScreenAnimationSubject.add(true);
        }
      },
      child: IndexedStack(
        index: activePageIndex,
        children: [
          HiringJobOfferListScreen(
            animationStream: hiringScreenAnimationSubject.stream,
            onSwitchList: () => context.read<JobOffersScreenBloc>().add(const JobOffersScreenEvent.jobOfferTypeChanged(JobOfferType.freelance))
          ),
          FreelanceJobOfferListScreen(
            animationStream: freelanceScreenAnimationSubject.stream,
            onSwitchList: () => context.read<JobOffersScreenBloc>().add(const JobOffersScreenEvent.jobOfferTypeChanged(JobOfferType.hiring))
          )
        ],
      ),
    );
  }
}

