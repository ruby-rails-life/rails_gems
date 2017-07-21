Article.create!([
  {title: "title1", text: "text1", picture: nil, muti_picture: nil},
  {title: "title1_1", text: "text1_1", picture: nil, muti_picture: nil},
  {title: "title2", text: "text2", picture: nil, muti_picture: nil},
  {title: "title2_2", text: "text2_2", picture: nil, muti_picture: nil},
  {title: "title3", text: "text3", picture: nil, muti_picture: nil},
  {title: "title4", text: "", picture: nil, muti_picture: nil}
])
Book.create!([
  {title: "太陽", author_name: "太陽さん", author_name_flag: "1", del_flag: nil, state: "published"},
  {title: "月", author_name: "月さん", author_name_flag: "1", del_flag: nil, state: "unpublished"},
  {title: "星", author_name: "星さん", author_name_flag: "0", del_flag: nil, state: "published"}
])
Holiday.create!([
  {date: "2017-07-17 12:44:26"},
  {date: "2017-07-10 12:44:26"}
])
Paranoiac.create!([
  {name: "太陽", deleted_at: nil, respect: true},
  {name: "太陽", deleted_at: nil, respect: true},
  {name: "月", deleted_at: nil, respect: false}
])
Paranoid.create!([
  {title: "笑顔", paranoiac_id: 1, deleted_at: nil},
  {title: "光輝く", paranoiac_id: 1, deleted_at: nil}
])
HolidayExtend.create!([
  {date: "2017-07-17 12:44:26", name: nil},
  {date: "2017-07-10 12:44:26", name: nil}
])
