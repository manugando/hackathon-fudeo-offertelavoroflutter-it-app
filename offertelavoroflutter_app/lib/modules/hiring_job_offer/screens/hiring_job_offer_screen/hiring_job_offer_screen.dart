import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/error_indicator.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/header_with_search.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/no_item_found_indicator.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/repositories/hiring_job_offer_repository.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/screens/hiring_job_offer_screen/bloc/hiring_job_offer_screen_bloc.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/hiring_job_offer_item.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/hiring_job_offer_item_skeleton.dart';

class HiringJobOfferScreen extends StatelessWidget {
  const HiringJobOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HiringJobOfferScreenBloc(hiringJobOfferRepository: RepositoryProvider.of<HiringJobOfferRepository>(context)),
      child: const HiringJobOfferView(),
    );
  }
}

class HiringJobOfferView extends StatefulWidget {
  const HiringJobOfferView({Key? key}) : super(key: key);

  @override
  State<HiringJobOfferView> createState() => _HiringJobOfferViewState();
}

class _HiringJobOfferViewState extends State<HiringJobOfferView> {
  final PagingController<String?, HiringJobOffer> _pagingController = PagingController(firstPageKey: null);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<HiringJobOfferScreenBloc>().add(HiringJobOfferScreenEvent.pageRequested(pageKey));
    });
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HiringJobOfferScreenBloc, HiringJobOfferScreenState>(
      listener: (context, state) {
        _pagingController.value = state.pagingState;
      },
      child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                HeaderWithSearch(
                  forceElevated: innerBoxIsScrolled,
                  title: AppLocalizations.of(context)!.hiringJobOfferScreenTitle,
                  switchBtnTitle: AppLocalizations.of(context)!.hiringJobOfferScreenSwitch,
                  onSwitch: () {
                    // TODO
                  },
                )
              ];
            },
            body: RefreshIndicator(
              onRefresh: () => Future.sync(_pagingController.refresh),
              child: PagedListView(
                padding: const EdgeInsets.only(top: 20),
                pagingController: _pagingController,
                builderDelegate: PagedChildBuilderDelegate<HiringJobOffer>(
                  itemBuilder: (context, item, index) => HiringJobOfferItem(hiringJobOffer: item),
                  firstPageProgressIndicatorBuilder: (context) => _buildFirstPageProgressIndicator(),
                  newPageProgressIndicatorBuilder: (context) => const HiringJobOfferItemSkeleton(),
                  noItemsFoundIndicatorBuilder: (context) => const NoItemsFoundIndicator(),
                  firstPageErrorIndicatorBuilder: (context) => ErrorIndicator(onRetry: _pagingController.refresh),
                  newPageErrorIndicatorBuilder: (context) => ErrorIndicator(onRetry: _pagingController.refresh),
                )
              ),
            ),
          ),
        ),
    );
  }

  Widget _buildFirstPageProgressIndicator() {
    return Column(
      children: const [
        HiringJobOfferItemSkeleton(),
        HiringJobOfferItemSkeleton(),
        HiringJobOfferItemSkeleton(),
        HiringJobOfferItemSkeleton(),
        HiringJobOfferItemSkeleton(),
        HiringJobOfferItemSkeleton(),
      ],
    );
  }
}


