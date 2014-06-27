class HTMLGenerator

  def initialize(layout = nil)
    @layout = layout
    end

  def section(body)
    section_string = "<section>#{body}</section>"
    wrap(section_string)
  end

  def unordered_list(x)
    # "<ul><li>#{x[0]}</li><li>#{x[1]}</li><li>#{x[2]}</li></ul>"
    string_value = "<ul>"
    x.each do |list|
      string_value += "<li>#{list}</li>"
    end
    unordered_string = string_value + "</ul>"
    wrap(unordered_string)
  end

  def button(x, y = "d")
    if y == "d"
      button_string = "<button>#{x}</button>"
      wrap(button_string)
    else
      button_string1 = "<button class='#{y[:class]}'>#{x}</button>"
      wrap(button_string1)
    end
  end

  def wrap(content)
    if @layout != nil
    @layout.gsub("CONTENT", content)
    else
      content
    end

  end

end
