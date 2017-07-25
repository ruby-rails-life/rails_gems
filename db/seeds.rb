Book.create!([
               {title: '太陽', author_name: '太陽さん', author_name_flag: '1', del_flag: nil, state: 'published'},
               {title: '月', author_name: '月さん', author_name_flag: '1', del_flag: nil, state: 'unpublished'},
               {title: '星', author_name: '星さん', author_name_flag: '0', del_flag: nil, state: 'published'}
             ])
Paranoiac.create!([
                    {name: '太陽', deleted_at: nil, respect: true},
                    {name: '太陽', deleted_at: nil, respect: true},
                    {name: '月', deleted_at: nil, respect: false}
                  ])
Paranoid.create!([
                   {title: '笑顔', paranoiac_id: 1, deleted_at: nil},
                   {title: '光輝く', paranoiac_id: 1, deleted_at: nil}
                 ])
