import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/common/models/select_option/select_option.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/notion/notion_page_hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/rich_text/notion_rich_text.dart';

part 'hiring_job_offer.freezed.dart';

@freezed
class HiringJobOffer with _$HiringJobOffer {

  const factory HiringJobOffer({
    required String id,
    required bool archived,
    required String url,
    required DateTime jobPosted,
    required SelectOption? team,
    required SelectOption? contratto,
    required SelectOption? seniority,
    required SelectOption? ral,
    required List<NotionRichText> name,
    required List<NotionRichText> qualifica,
    required List<NotionRichText> retribuzione,
    required List<NotionRichText> descrizioneOfferta,
    required List<NotionRichText> comeCandidarsi,
    required List<NotionRichText> localita,
    required List<NotionRichText> nomeAzienda,
    required List<NotionRichText> statoDiPubblicazione,
    required String? urlSitoWeb,
  }) = _HiringJobOffer;

  factory HiringJobOffer.fromNotion(NotionPageHiringJobOffer notionPageHiringJobOffer) {
    return HiringJobOffer(
      id: notionPageHiringJobOffer.id,
      archived: notionPageHiringJobOffer.archived,
      url: notionPageHiringJobOffer.url,
      jobPosted: notionPageHiringJobOffer.properties.jobPosted.createdTime,
      team: SelectOption.fromNotion(notionPageHiringJobOffer.properties.team.select),
      contratto: SelectOption.fromNotion(notionPageHiringJobOffer.properties.contratto.select),
      seniority: SelectOption.fromNotion(notionPageHiringJobOffer.properties.seniority.select),
      ral: SelectOption.fromNotion(notionPageHiringJobOffer.properties.ral.select),
      name: notionPageHiringJobOffer.properties.name.title,
      qualifica: notionPageHiringJobOffer.properties.qualifica.richText,
      retribuzione: notionPageHiringJobOffer.properties.retribuzione.richText,
      descrizioneOfferta: notionPageHiringJobOffer.properties.descrizioneOfferta.richText,
      comeCandidarsi: notionPageHiringJobOffer.properties.comeCandidarsi.richText,
      localita: notionPageHiringJobOffer.properties.localita.richText,
      nomeAzienda: notionPageHiringJobOffer.properties.nomeAzienda.richText,
      statoDiPubblicazione: notionPageHiringJobOffer.properties.statoDiPubblicazione.richText,
      urlSitoWeb: notionPageHiringJobOffer.properties.urlSitoWeb.url
    );
  }
}