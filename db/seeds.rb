2.times do |x|
Blog.create!(
    title:"#{x} Blog",
    body:"some-body",
)
end


2.times do |y|
Portfolio.create!(
    title:"Portfolio #{y}",
    subtitle:"my subtitle ",
    body:"lallalal",
    main_image:"https://via.placeholder.com/600x200",
    thumb_image:"https://via.placeholder.com/350x200",
)
end

2.times do |z|
 Skill.create!(
    title:"Skill #{z}",
    percent_utilized: 15,

 )

end
