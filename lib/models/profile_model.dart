class ProfileModel {
  final String username;
  final String name;
  final String postCount;
  final String followersCount;
  final String followingCount;
  final String imageUrl;
  final String? reelsUrl;
  final String taggedImg;

  ProfileModel(
      {required this.username,
      required this.name,
      required this.postCount,
      required this.followersCount,
      required this.followingCount,
      required this.imageUrl,
      required this.reelsUrl,
      required this.taggedImg});
}
