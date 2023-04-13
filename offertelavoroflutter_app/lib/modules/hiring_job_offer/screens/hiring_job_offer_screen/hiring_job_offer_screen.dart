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
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/hiring_job_offer_filter_sheet/hiring_job_offer_filter_sheet.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/hiring_job_offer_item.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/hiring_job_offer_item_skeleton.dart';

class HiringJobOfferScreen extends StatelessWidget {
  const HiringJobOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HiringJobOfferScreenBloc(hiringJobOfferRepository: RepositoryProvider.of<HiringJobOfferRepository>(context)),
      child: const _HiringJobOfferView(),
    );
  }
}

class _HiringJobOfferView extends StatefulWidget {
  const _HiringJobOfferView({Key? key}) : super(key: key);

  @override
  State<_HiringJobOfferView> createState() => _HiringJobOfferViewState();
}

class _HiringJobOfferViewState extends State<_HiringJobOfferView> {
  final TextEditingController _searchFieldController = TextEditingController();
  final PagingController<String?, HiringJobOffer> _pagingController = PagingController(firstPageKey: null);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<HiringJobOfferScreenBloc>().add(HiringJobOfferScreenEvent.pageRequested(pageKey));
    });
    _searchFieldController.addListener(() {
      context.read<HiringJobOfferScreenBloc>().add(HiringJobOfferScreenEvent.searchQueryChanged(_searchFieldController.text));
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchFieldController.dispose();
    _pagingController.dispose();
    super.dispose();
  }

  showFiltersSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => const HiringJobOfferFilterSheet(),
    );
  }

  refresh() {
    context.read<HiringJobOfferScreenBloc>().add(const HiringJobOfferScreenEvent.refreshRequested());
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
                  switchListBtnTitle: AppLocalizations.of(context)!.hiringJobOfferScreenSwitch,
                  searchController: _searchFieldController,
                  onSwitchList: () {
                    // TODO
                  },
                  onShowFilters: showFiltersSheet,
                )
              ];
            },
            body: RefreshIndicator(
              onRefresh: () => Future.sync(refresh),
              child: PagedListView(
                padding: const EdgeInsets.only(top: 20),
                pagingController: _pagingController,
                builderDelegate: PagedChildBuilderDelegate<HiringJobOffer>(
                  itemBuilder: (context, item, index) => HiringJobOfferItem(hiringJobOffer: item),
                  firstPageProgressIndicatorBuilder: (context) => _buildFirstPageProgressIndicator(),
                  newPageProgressIndicatorBuilder: (context) => const HiringJobOfferItemSkeleton(),
                  noItemsFoundIndicatorBuilder: (context) => const NoItemsFoundIndicator(),
                  firstPageErrorIndicatorBuilder: (context) => ErrorIndicator(onRetry: refresh),
                  newPageErrorIndicatorBuilder: (context) => ErrorIndicator(onRetry: refresh),
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


