module WNS
  module LabelUnicode
    SYMBOLS  = [/(Ⅰ)/, /(Ⅱ)/, /(Ⅲ)/, /(Ⅳ)/, /(Ⅴ)/, /(Ⅵ)/, /(Ⅶ)/, /(Ⅷ)/, /(Ⅸ)/, /(Ⅹ)/]
    READINGS = ['1', '2', '3',  '4', '5', '6', '7', '8', '9', '10']
    
    def self.enabled?(doc)
      wns = doc.site.config["wns"] || {}
      wns["label_unicode"] || false
    end

    def self.label_unicode!(doc)
      if LabelUnicode::enabled?(doc)
        for i in (0..(LabelUnicode::SYMBOLS.length()) - 1) do
          doc.content = doc.content.gsub(Regexp.new("(\\S*)#{LabelUnicode::SYMBOLS[i].source}(\\S*)"), "<span aria-label='\\1#{LabelUnicode::READINGS[i]}\\3'>\\1\\2\\3</span>")
        end
      end
    end
  end
end
