class PostModel {
  final String caption;
  final int postedby;
  final String username;
  final bool isVerified;
  final String pprofileImage;
  final String imageUrl;
  final String? videoUrl;
  final String likeCount;
  final bool isLiked;
  final String commentCount;
  final bool isSaved;

  PostModel(
      {required this.caption,
      required this.postedby,
      required this.username,
      required this.isVerified,
      required this.pprofileImage,
      required this.imageUrl,
      required this.videoUrl,
      required this.likeCount,
      required this.isLiked,
      required this.commentCount,
      required this.isSaved});
}
