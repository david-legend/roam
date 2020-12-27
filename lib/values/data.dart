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

  static List<String> profileStackedImage = [
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
}
