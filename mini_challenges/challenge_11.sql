SELECT
  COUNT(*) AS total_likes
FROM
  likes l
WHERE
  post_id = 1;

SELECT
  AVG(count_like) AS media_likes_posts
FROM
  (
    SELECT
      COUNT(*) AS count_like
    FROM
      likes l
    GROUP BY
      l.post_id
  ) AS count_likes;