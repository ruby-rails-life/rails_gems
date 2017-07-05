namespace :scraping do
  desc '大紀元ページからタイトルを取得'
  task :epoch_title => :environment do
    # スクレイピング先のURL
    url = 'http://www.epochtimes.jp/'
    charset = nil
    html = open(url) do |f|
      charset = f.charset # 文字種別を取得
      f.read # htmlを読み込んで変数htmlに渡す
    end
    # htmlをパース(解析)してオブジェクトを作成
    #doc = Nokogiri::HTML.parse(html, nil, charset)
    doc = Nokogiri::HTML.parse(html, nil, "UTF-8")
    p doc.title  
    doc.xpath('//div[@class="title"]').each do |node|
      # 記事タイトルの取得
      puts node.css('h2').inner_text
    end
  end
end
