module Diaspora
  module Markdownify
    class HTML < Redcarpet::Render::HTML
      include ActionView::Helpers::TextHelper

      def autolink link, type
        auto_link(link, link: :urls, html: { target: "_blank" })
      end

      def block_quote(text)
        ret = text.gsub(/(<p>|\n)(?=[^$])/, "&gt;")
        "<blockquote>" + ret  + "</blockquote>"
      end

    end
  end
end
