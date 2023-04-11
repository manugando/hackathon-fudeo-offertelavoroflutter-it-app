part of 'hiring_job_offer_screen_bloc.dart';

@freezed
class HiringJobOfferScreenEvent with _$HiringJobOfferScreenEvent {
  const factory HiringJobOfferScreenEvent.pageRequested(String? pageKey) = _PageRequested;
}
