import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_app/models/post_model.dart';
import 'package:readmore/readmore.dart';

class PostItem extends StatelessWidget {
  final PostModel post;
  const PostItem({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserDetailsWidget(post: post),
        Image.network(post.imageUrl),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/vectors/instagram-comment-icon.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                height: 20,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/vectors/paper-plane.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                height: 20,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/vectors/bookmark-regular.svg',
                height: 20,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "${post.likeCount} likes",
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.username,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: ReadMoreText(
                post.caption,
                style: const TextStyle(color: Colors.white),
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'more',
                trimExpandedText: 'less',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class UserDetailsWidget extends StatelessWidget {
  const UserDetailsWidget({
    super.key,
    required this.post,
  });

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 0, 4),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(post.pprofileImage),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    post.username,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  if (post.isVerified)
                    SvgPicture.asset(
                      'assets/icons/vectors/instagram-verified.svg',
                      height: 16,
                    )
                ],
              ),
              const Text(
                "Sponsored",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
