part of values;

class Data {
  static List<DiscoverCardItem> discoverCardItems = [
    DiscoverCardItem(
      title: StringConst.ANIMALS,
      icon: ImagePath.ELEPHANT,
      backgroundColor: AppColors.lightGreen70,
      color: AppColors.darkGreen,
    ),
    DiscoverCardItem(
      title: StringConst.ADVENTURE,
      icon: ImagePath.CAR,
      backgroundColor: AppColors.purple10,
      color: AppColors.purple,
    ),
    DiscoverCardItem(
      title: StringConst.MEALS,
      icon: ImagePath.MEAL,
      backgroundColor: AppColors.yellow10,
      color: AppColors.deepYellow,
    ),
    DiscoverCardItem(
      title: StringConst.ANIMALS,
      icon: ImagePath.ELEPHANT,
      backgroundColor: AppColors.lightGreen70,
      color: AppColors.darkGreen,
    ),
    DiscoverCardItem(
      title: StringConst.ADVENTURE,
      icon: ImagePath.CAR,
      backgroundColor: AppColors.purple10,
      color: AppColors.purple,
    ),
    DiscoverCardItem(
      title: StringConst.MEALS,
      icon: ImagePath.MEAL,
      backgroundColor: AppColors.yellow10,
      color: AppColors.deepYellow,
    ),
  ];

  static List<TrendingCardItem> trendingItems = [
    TrendingCardItem(
      title: StringConst.LIMA_CITY,
      subtitle: StringConst.PERU,
      rating: 4.4,
      imagePath: ImagePath.LIMA,
    ),
    TrendingCardItem(
      title: StringConst.BALI,
      subtitle: StringConst.INDONESIA,
      rating: 4.5,
      imagePath: ImagePath.LIMA,
    ),
    TrendingCardItem(
      title: StringConst.RHODES,
      subtitle: StringConst.GREECE,
      rating: 4.4,
      imagePath: ImagePath.LIMA,
    ),
    TrendingCardItem(
      title: StringConst.HALONG_BAY,
      subtitle: StringConst.VIETNAM,
      rating: 4.3,
      imagePath: ImagePath.LIMA,
    ),
    TrendingCardItem(
      title: StringConst.VATICAN_CITY,
      subtitle: StringConst.ITALY,
      rating: 4.5,
      imagePath: ImagePath.LIMA,
    ),
  ];

  static List<PlaceCardItem> placeCardItems = [
    PlaceCardItem(
      title: StringConst.HOI_ANN,
      subtitle: StringConst.VIETNAM,
      content: StringConst.CONTENT_RATING_1,
      rating: 4.4,
      imagePath: ImagePath.HOI_ANN,
    ),
    PlaceCardItem(
      title: StringConst.BARRANCO,
      subtitle: StringConst.PERU,
      content: StringConst.CONTENT_RATING_2,
      rating: 4.5,
      imagePath: ImagePath.HOI_ANN,
    ),
    PlaceCardItem(
      title: StringConst.VARANASI,
      subtitle: StringConst.INDIA,
      content: StringConst.CONTENT_RATING_3,
      rating: 4.4,
      imagePath: ImagePath.LIMA,
    ),
    PlaceCardItem(
      title: StringConst.MYKONO,
      subtitle: StringConst.GREECE,
      content: StringConst.CONTENT_RATING_4,
      rating: 4.3,
      imagePath: ImagePath.HOI_ANN,
    ),
    PlaceCardItem(
      title: StringConst.VERNICE,
      subtitle: StringConst.ITALY,
      content: StringConst.CONTENT_RATING_5,
      rating: 4.5,
      imagePath: ImagePath.HOI_ANN,
    ),
  ];

  static const List<String> profileStackedImage = [
    ImagePath.CHAN,
    ImagePath.LEE,
    ImagePath.MONICA,
    ImagePath.TAYLOR,
  ];

  static List<OldTripItem> oldTripItems = [
    OldTripItem(
      title: StringConst.PERU_BEACH,
      subtitle: StringConst.DURATION_1,
      imagePath: ImagePath.PERU,
      collaborators: 3,
    ),
    OldTripItem(
      title: StringConst.VIETNAM_19,
      subtitle: StringConst.DURATION_2,
      imagePath: ImagePath.VIETNAM,
      collaborators: 2,
    ),
    OldTripItem(
      title: StringConst.TOKYO,
      subtitle: StringConst.DURATION_1,
      imagePath: ImagePath.TOKYO,
      collaborators: 1,
    ),
    OldTripItem(
      title: StringConst.PARIS_FUN,
      subtitle: StringConst.DURATION_2,
      imagePath: ImagePath.PARIS,
      collaborators: 6,
    ),
  ];

  static List<SavedPlaceItem> savedPlacesItems = [
    SavedPlaceItem(
      title: StringConst.GREAT_WALL,
      subtitle: StringConst.LOREM_IPSUM_1,
      imagePath: ImagePath.GREAT_WALL,
      likes: 737,
    ),
    SavedPlaceItem(
      title: StringConst.EIFFEL_TOWER,
      subtitle: StringConst.LOREM_IPSUM_1,
      imagePath: ImagePath.EIFFEL_TOWER,
      likes: 472,
    ),
    SavedPlaceItem(
      title: StringConst.STONE_HENGE,
      subtitle: StringConst.LOREM_IPSUM_1,
      imagePath: ImagePath.STONE_HENGE,
      likes: 129,
    ),
    SavedPlaceItem(
      title: StringConst.NIAGARA_FALLS,
      subtitle: StringConst.LOREM_IPSUM_1,
      imagePath: ImagePath.NIAGARA_FALLS,
      likes: 886,
    ),
    SavedPlaceItem(
      title: StringConst.BLACK_LAGOON,
      subtitle: StringConst.LOREM_IPSUM_1,
      imagePath: ImagePath.BLACK_LAGOON,
      likes: 190,
    ),
  ];

  static List<TagItem> tagItems1 = [
    TagItem(
      tag: StringConst.PHOTOGRAPHY_TAG,
      textColor: AppColors.secondaryColor,
      backgroundColor: AppColors.lightGreen50,
    ),
    TagItem(
      tag: StringConst.NATURE_TAG,
      textColor: AppColors.pink,
      backgroundColor: AppColors.pink10,
    ),
    TagItem(
      tag: StringConst.LUXURY_TAG,
      textColor: AppColors.yellow,
      backgroundColor: AppColors.yellow10,
    ),
  ];

  static List<TagItem> tagItems2 = [
    TagItem(
      tag: StringConst.PHOTOGRAPHY_TAG,
      textColor: AppColors.secondaryColor,
      backgroundColor: AppColors.lightGreen50,
    ),
    TagItem(
      tag: StringConst.NATURE_TAG,
      textColor: AppColors.pink,
      backgroundColor: AppColors.pink10,
    ),
  ];

  static const List<String> moreImages = [
    ImagePath.MORE_1,
    ImagePath.MORE_2,
    ImagePath.MORE_3,
    ImagePath.BLACK_LAGOON,
    ImagePath.MORE_1,
  ];

  static const List<String> defaultTags = [
    StringConst.PHOTOGRAPHY_TAG,
    StringConst.NATURE_TAG,
    StringConst.LUXURY_TAG,
  ];

  static const List<Color> defaultTagColors = [
    AppColors.lightGreen50,
    AppColors.pink10,
    AppColors.yellow10,
  ];

  static List<ExploreCardItem> exploreCardItems = [
    ExploreCardItem(
      title: StringConst.BREAKFAST_PLACES,
      content: StringConst.CONTENT_RATING_1,
      imagePath: ImagePath.MORE_1,
      tags: tagItems1,
      rating: 4.0,
    ),
    ExploreCardItem(
      title: StringConst.BEACHES,
      content: StringConst.CONTENT_RATING_3,
      imagePath: ImagePath.MORE_2,
      tags: tagItems2,
      rating: 5.0,
    ),
    ExploreCardItem(
      title: StringConst.RESORTS,
      content: StringConst.CONTENT_RATING_4,
      imagePath: ImagePath.MORE_3,
      tags: tagItems1,
      rating: 3.5,
    ),
  ];

  static List<AttractionCardItem> attractionCardItems = [
    AttractionCardItem(
      title: StringConst.TANOH,
      content: StringConst.TANOH_TEXT,
      imagePath: ImagePath.TANOH,
      rating: 4.6,
    ),
    AttractionCardItem(
      title: StringConst.SACRED_MONKEY,
      content: StringConst.SACRED_MONKEY_TEXT,
      imagePath: ImagePath.SACRED_MONKEY,
      rating: 4.4,
    ),
    AttractionCardItem(
      title: StringConst.GILI_ISLAND,
      content: StringConst.GILI_ISLAND_TEXT,
      imagePath: ImagePath.GILI_ISLAND,
      rating: 4.3,
    ),
  ];

  static List<AlbumCoverItem> albumItems = [
    AlbumCoverItem(
      title: StringConst.THAILAND,
      imagePath: ImagePath.THAILAND,
      width: 0.4,
      spacing: 8,
    ),
    AlbumCoverItem(
      title: StringConst.INDONESIA,
      imagePath: ImagePath.INDONESIA,
      width: 0.6,
      spacing: 8,
    ),
    AlbumCoverItem(
      title: StringConst.PERU,
      imagePath: ImagePath.PERU_2,
    ),
    AlbumCoverItem(
      title: StringConst.ITALY,
      imagePath: ImagePath.ITALY,
      width: 0.3,
      spacing: 8,
    ),
    AlbumCoverItem(
      title: StringConst.VIETNAM,
      imagePath: ImagePath.VIETNAM_2,
      width: 0.7,
      spacing: 8,
    ),
  ];

  static List<JourneyCardItem> journeyItems = [
    JourneyCardItem(
      title: StringConst.TANOH,
      subtitle: StringConst.SUBTITLE_1,
      imagePath: ImagePath.TANOH,
      images: Data.profileStackedImage,
      rating: 3.8,
      collaborators: 90,
    ),
    JourneyCardItem(
      title: StringConst.LIMA,
      subtitle: StringConst.SUBTITLE_2,
      imagePath: ImagePath.LIMA,
      images: Data.profileStackedImage,
      rating: 3.4,
      collaborators: 83,
    ),
    JourneyCardItem(
      title: StringConst.KANCHANABURI,
      subtitle: StringConst.SUBTITLE_3,
      imagePath: ImagePath.KANCHANABURI,
      images: Data.profileStackedImage,
      rating: 4.4,
      collaborators: 72,
    ),
  ];

  static const String HOWARD = "Esther Howard";
  static const String FISHER = "Cody Fisher";
  static const String COURTNEY = "Courtney Henry";
  static const String ANNETTE = "Annette Black";
  static const String ELEANOR = "Eleanor Pena";
  static const String JEROME = "Jerome Bell";

  static List<CollaboratorItem> collaboratorItems = [
    CollaboratorItem(
      title: StringConst.HOWARD,
      imagePath: ImagePath.HOWARD,
    ),
    CollaboratorItem(
      title: StringConst.FISHER,
      imagePath: ImagePath.FISHER,
    ),
    CollaboratorItem(
      title: StringConst.COURTNEY,
      imagePath: ImagePath.COURTNEY,
    ),
    CollaboratorItem(
      title: StringConst.ANNETTE,
      imagePath: ImagePath.ANNETTE,
    ),
    CollaboratorItem(
      title: StringConst.ELEANOR,
      imagePath: ImagePath.ELEANOR,
    ),
    CollaboratorItem(
      title: StringConst.JEROME,
      imagePath: ImagePath.JEROME,
    ),
  ];
}
