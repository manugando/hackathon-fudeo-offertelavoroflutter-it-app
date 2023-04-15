import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/common/models/select_option/select_option.dart';
import 'package:offertelavoroflutter_app/modules/common/models/styled_text/styled_text.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/notion/notion_page_hiring_job_offer/notion_page_hiring_job_offer.dart';

part 'hiring_job_offer.freezed.dart';

@freezed
class HiringJobOffer with _$HiringJobOffer {

  const factory HiringJobOffer({
    required String id,
    required bool archived,
    required String? emoji,
    required String url,
    required DateTime? jobPosted,
    required SelectOption? team,
    required SelectOption? contratto,
    required SelectOption? seniority,
    required SelectOption? ral,
    required List<StyledText>? name,
    required List<StyledText>? qualifica,
    required List<StyledText>? retribuzione,
    required List<StyledText>? descrizioneOfferta,
    required List<StyledText>? comeCandidarsi,
    required List<StyledText>? localita,
    required List<StyledText>? nomeAzienda,
    required List<StyledText>? statoDiPubblicazione,
    required String? urlSitoWeb,
  }) = _HiringJobOffer;

  factory HiringJobOffer.fromNotion(NotionPageHiringJobOffer notionPageHiringJobOffer) {
    return HiringJobOffer(
      id: notionPageHiringJobOffer.id,
      archived: notionPageHiringJobOffer.archived,
      emoji: notionPageHiringJobOffer.icon?.maybeMap(emoji: (value) => value.emoji, orElse: () => null),
      url: notionPageHiringJobOffer.url,
      jobPosted: notionPageHiringJobOffer.properties.jobPosted?.createdTime,
      team: SelectOption.fromNotionOrNull(notionPageHiringJobOffer.properties.team?.select),
      contratto: SelectOption.fromNotionOrNull(notionPageHiringJobOffer.properties.contratto?.select),
      seniority: SelectOption.fromNotionOrNull(notionPageHiringJobOffer.properties.seniority?.select),
      ral: SelectOption.fromNotionOrNull(notionPageHiringJobOffer.properties.ral?.select),
      name: notionPageHiringJobOffer.properties.name?.title.map(StyledText.fromNotion).toList(),
      qualifica: notionPageHiringJobOffer.properties.qualifica?.richText.map(StyledText.fromNotion).toList(),
      retribuzione: notionPageHiringJobOffer.properties.retribuzione?.richText.map(StyledText.fromNotion).toList(),
      descrizioneOfferta: notionPageHiringJobOffer.properties.descrizioneOfferta?.richText.map(StyledText.fromNotion).toList(),
      comeCandidarsi: notionPageHiringJobOffer.properties.comeCandidarsi?.richText.map(StyledText.fromNotion).toList(),
      localita: notionPageHiringJobOffer.properties.localita?.richText.map(StyledText.fromNotion).toList(),
      nomeAzienda: notionPageHiringJobOffer.properties.nomeAzienda?.richText.map(StyledText.fromNotion).toList(),
      statoDiPubblicazione: notionPageHiringJobOffer.properties.statoDiPubblicazione?.richText.map(StyledText.fromNotion).toList(),
      urlSitoWeb: notionPageHiringJobOffer.properties.urlSitoWeb?.url
    );
  }
}