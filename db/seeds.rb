10.times do |blog|
  Blog.create!(
    title: FFaker::Lorem.phrase,
    body: FFaker::Lorem.paragraphs
  )
end

5.times do |skill|
  Skill.create!(
    title: %w[Rails PHP Javascript HTML CSS].sample,
    percent_utilized: FFaker::Random.rand(1..100)
  )
end

9.times do |portifolio|
  Portifolio.create!(
    title: "Portifolio Title: #{portifolio}",
    subtitle: FFaker::Lorem.phrase,
    body: FFaker::Lorem.paragraphs,
    main_image: 'https://via.placeholder.com/600x400',
    thumb_image: 'https://via.placeholder.com/350x200'
  )
end
