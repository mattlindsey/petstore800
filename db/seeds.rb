# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
[ "My First Blog Post", "Learning to Code", "Ruby on Rails Tips" ].each do |title|
  Article.find_or_create_by!(
    title: title,
    content: Faker::Lorem.paragraphs(number: 3).join("\n\n"),
    slug: title.parameterize,
    status: "published",
    published_at: Date.today,
    featured: [ true, false ].sample,
    meta_title: title,
    meta_description: Faker::Lorem.paragraph(sentence_count: 1),
    keywords: Faker::Lorem.words(number: 5).join(", "),
    # author_id: User.first.id,
    # category_id: Category.first.id,
    view_count: rand(100..1000),
    reading_time: rand(3..10)
  )
end
