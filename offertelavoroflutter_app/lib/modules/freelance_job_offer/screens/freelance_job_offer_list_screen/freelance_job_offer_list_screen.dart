import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:offertelavoroflutter_app/constants/routes.dart';
import 'package:offertelavoroflutter_app/helpers/styles.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/content_card.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/error_indicator.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/header_with_search.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/multi_style_text.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/no_item_found_indicator.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/freelance_job_offer/freelance_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/freelance_job_offer_filters/freelance_job_offer_filters.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/repositories/freelance_job_offer_repository.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/screens/freelance_job_offer_list_screen/bloc/freelance_job_offer_list_screen_bloc.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/widgets/freealnce_job_offer_item.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/widgets/freelance_job_offer_filter_sheet/freelance_job_offer_filter_sheet.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/widgets/freelance_job_offer_item_skeleton.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/widgets/freelance_job_offer_subscribe_newsletter_sheet.dart';

class FreelanceJobOfferListScreen extends StatelessWidget {
  const FreelanceJobOfferListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FreelanceJobOfferListScreenBloc(freelanceJobOfferRepository: RepositoryProvider.of<FreelanceJobOfferRepository>(context)),
      child: const _FreelanceJobOfferListView(),
    );
  }
}

class _FreelanceJobOfferListView extends StatefulWidget {
  const _FreelanceJobOfferListView({Key? key}) : super(key: key);

  @override
  State<_FreelanceJobOfferListView> createState() => _FreelanceJobOfferListViewState();
}

class _FreelanceJobOfferListViewState extends State<_FreelanceJobOfferListView> {
  final TextEditingController _searchFieldController = TextEditingController();
  final PagingController<String?, FreelanceJobOffer> _pagingController = PagingController(firstPageKey: null);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<FreelanceJobOfferListScreenBloc>().add(FreelanceJobOfferListScreenEvent.pageRequested(pageKey));
    });
    _searchFieldController.addListener(() {
      context.read<FreelanceJobOfferListScreenBloc>().add(FreelanceJobOfferListScreenEvent.searchQueryChanged(_searchFieldController.text));
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchFieldController.dispose();
    _pagingController.dispose();
    super.dispose();
  }

  showFiltersSheet(FreelanceJobOfferFilters initialFilters) async {
    FreelanceJobOfferFilters? filters = await showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => FreelanceJobOfferFilterSheet(initialFilters: initialFilters),
    );
    
    if(filters == null) return;
    context.read<FreelanceJobOfferListScreenBloc>().add(FreelanceJobOfferListScreenEvent.filtersChanged(filters));
  }

  showSubscribeNewsletterSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => const FreelanceJobOfferSubscribeNewsletterSheet(),
    );
  }

  refresh() {
    context.read<FreelanceJobOfferListScreenBloc>().add(const FreelanceJobOfferListScreenEvent.refreshRequested());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FreelanceJobOfferListScreenBloc, FreelanceJobOfferListScreenState>(
      listener: (context, state) {
        _pagingController.value = state.pagingState;
      },
      builder: (context, state) => Scaffold(
        backgroundColor: Styles.lightBackground,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              HeaderWithSearch(
                forceElevated: innerBoxIsScrolled,
                title: AppLocalizations.of(context)!.freelanceJobOfferScreenTitle,
                switchListBtnTitle: AppLocalizations.of(context)!.freelanceJobOfferScreenSwitch,
                searchController: _searchFieldController,
                onSwitchList: () {
                  // TODO
                },
                showActiveFiltersBadge: state.filters.active,
                onShowFilters: () => showFiltersSheet(state.filters),
              )
            ];
          },
          body: RefreshIndicator(
            onRefresh: () => Future.sync(refresh),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: _buildNewsletterCta(),
                  ),
                ),
                PagedSliverList(
                  pagingController: _pagingController,
                  builderDelegate: PagedChildBuilderDelegate<FreelanceJobOffer>(
                    itemBuilder: (context, item, index) => _buildItem(item, state),
                    firstPageProgressIndicatorBuilder: (context) => _buildFirstPageProgressIndicator(),
                    newPageProgressIndicatorBuilder: (context) => const FreelanceJobOfferItemSkeleton(),
                    noItemsFoundIndicatorBuilder: (context) => const NoItemsFoundIndicator(),
                    firstPageErrorIndicatorBuilder: (context) => ErrorIndicator(onRetry: refresh),
                    newPageErrorIndicatorBuilder: (context) => ErrorIndicator(onRetry: refresh),
                  )
                )
              ]
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNewsletterCta() {
    return ContentCard(
      onTap: showSubscribeNewsletterSheet,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      color: Styles.primaryDark.withAlpha(20),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/bell.svg'),
          const SizedBox(width: 15),
          Expanded(child: Text(AppLocalizations.of(context)!.subscribeToJobOfferNewsletter, style: Theme.of(context).textTheme.bodySmall)),
          SvgPicture.asset('assets/icons/chevron-right.svg'),
        ],
      ),
    );
  }

  Widget _buildItem(FreelanceJobOffer freelanceJobOffer, FreelanceJobOfferListScreenState state) {
    bool isFavorite = state.favoriteFreelanceJobOfferIds.contains(freelanceJobOffer.id);

    return FreelanceJobOfferItem(
      freelanceJobOffer: freelanceJobOffer,
      onTap: () => Navigator.of(context).pushNamed(Routes.freelanceJobOfferDetail, arguments: freelanceJobOffer),
      isFavorite: isFavorite,
      onFavoriteTap: () {
        context.read<FreelanceJobOfferListScreenBloc>()
          .add(FreelanceJobOfferListScreenEvent.favoriteFreelanceJobOfferToggled(freelanceJobOffer.id));

        SnackBar snackBar = SnackBar(
          content: Text(isFavorite ? AppLocalizations.of(context)!.jobOfferRemovedFromFavorites : AppLocalizations.of(context)!.jobOfferAddedToFavorites,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary)
          )
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    );
  }

  Widget _buildFirstPageProgressIndicator() {
    return Column(
      children: const [
        FreelanceJobOfferItemSkeleton(),
        FreelanceJobOfferItemSkeleton(),
        FreelanceJobOfferItemSkeleton(),
        FreelanceJobOfferItemSkeleton(),
        FreelanceJobOfferItemSkeleton(),
        FreelanceJobOfferItemSkeleton(),
      ],
    );
  }
}


