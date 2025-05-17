Blog.destroy_all

Blog.create!(
  title: 'はじめてのブログ投稿',
  content: <<~CONTENT
    こんにちは！これは私の初めてのブログ投稿です。
    これから少しずつ、日々の出来事や学びを書いていこうと思います。
    よろしくお願いします！
  CONTENT
)

Blog.create!(
  title: 'Railsでブログアプリを作ってみた',
  content: <<~CONTENT
    最近、Ruby on Railsを使って簡単なブログアプリを作りました。
    まだ機能は少ないけど、自分で記事を投稿できるようになって感動！
    今後は画像投稿やコメント機能も追加したいな。
  CONTENT
)

Blog.create!(
  title: 'カフェで作業するのが好き',
  content: <<~CONTENT
    最近は近所のカフェで作業するのにハマっています。
    美味しいコーヒーと静かな空間で、すごく集中できる。
    おすすめのカフェもそのうちまとめてみようかな。
  CONTENT
)
