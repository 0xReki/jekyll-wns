module WNS
  class SceneBreakTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super

      @text = text.strip!
    end

    def render(context)
      case @text
      when "leaves"
        '<p style="text-align:center" data-mce-style="text-align:center" aria-hidden="true">π π π π π π π π π π π π</p>'
      when "wave"
        '<p style="text-align:center;letter-spacing:-.13em" data-mce-style="text-align:center;letter-spacing:-.13em" aria-hidden="true">β β‘β β‘β β‘β β‘β β‘β β‘β β‘β β‘β β‘β β‘β </p>'
      when "wall"
        '<p style="text-align:center;letter-spacing:-.2em" data-mce-style="text-align:center;letter-spacing:-.2em" aria-hidden="true">ββββββββββββββββββββ</p>'
      else
        '<p style="text-align:center" data-mce-style="text-align:center" aria-hidden="true">πΏπΎπΏπΎπΏπΎπΏπΎπΏπΎπΏπΎπΏπΎπΏ</p>'
      end
    end 
  end
end
