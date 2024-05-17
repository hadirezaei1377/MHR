for testing our services in times users grow up we can use stress test and load test.

for example we guess that this point could be the bottleneck of our system because its a bit confuzing:
func (g *GormDatabase) ListTagArticles(ctx context.Context, slug string) ([]entity.Article, error) {
	var articles []entity.Article
	return articles, g.queryMetric.Do("list_tag_articles", func() error {
		err := g.db.WithContext(ctx).
			Model(&entity.Article{}).
			Preload("Tags").
			Joins("JOIN article_tags ON article_tags.article_id = articles.id").
			Joins("JOIN tags ON tags.id = article_tags.tag_id").
			Joins("Author").
			Where("tags.slug = ?", slug).
			Find(&articles).Error
		if err != nil {
			logrus.WithError(err).WithField("slug", slug).Error("couldn't load tag articles")
			return err
		}

		return nil
	})
}

we can test our app in console.hamravesh.com website.
