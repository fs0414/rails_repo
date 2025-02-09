module ApplicationHelper
  # サイドバーリンクのヘルパー
  def sidebar_link_to(path, emoji, text, additional_classes = "")
    classes = %w[my-1 flex items-center px-4 py-2 rounded hover:bg-gray-700 hover:text-white]
    classes << "bg-gray-700 text-white" if current_page?(path) # 現在のページの場合はアクティブスタイルを適用
    classes << additional_classes if additional_classes.present?

    link_to(path, class: classes.join(" ")) do
      tag.span(class: "mr-2") { emoji } + tag.span { text }
    end
  end

  # アイコン表示用ヘルパー
  def icon(icon_name)
    tag.i(class: "bi bi-#{icon_name}")
  end

  # アイコンとテキストを一緒に表示するヘルパー
  def icon_with_text(icon_name, text)
    tag.span(icon(icon_name), class: "mr-2") + tag.span(text)
  end
end
