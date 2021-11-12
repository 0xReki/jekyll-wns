module WNS
  class SceneBreakTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super

      @text = text.strip!
    end

    def render(context)
      case @text
      when "leaves"
        '<p style="text-align:center" data-mce-style="text-align:center" role="presentation>🙐 🙑 🙓 🙒 🙐 🙑 🙓 🙒 🙐 🙑 🙓 🙒</p>'
      when "wave"
        '<p style="text-align:center;letter-spacing:-.13em" data-mce-style="text-align:center;letter-spacing:-.13em" role="presentation>◠◡◠◡◠◡◠◡◠◡◠◡◠◡◠◡◠◡◠◡◠</p>'
      when "wall"
        '<p style="text-align:center;letter-spacing:-.2em" data-mce-style="text-align:center;letter-spacing:-.2em" role="presentation>⚎⚍⚎⚍⚎⚍⚎⚍⚎⚍⚎⚍⚎⚍⚎⚍⚎⚍⚎⚍</p>'
      else
        '<p style="text-align:center" data-mce-style="text-align:center" role="presentation>🙿🙾🙿🙾🙿🙾🙿🙾🙿🙾🙿🙾🙿🙾🙿</p>'
      end
    end 
  end
end
