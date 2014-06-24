class HTMLGenerator

  def initialize(string = "")
    #   string = either "" or "<main>CONTENT</main>"
    #   replace CONTENT with output of each method use sub
    if string == "<main>CONTENT</main>"
      string.sub("CONTENT", string.section
    end

    string


  end

  def section(body)
    "<section>#{body}</section>"
  end

  def sub()

  def unordered_list(x)
    # "<ul><li>#{x[0]}</li><li>#{x[1]}</li><li>#{x[2]}</li></ul>"
    string_value = "<ul>"
    x.each do |list|
      string_value += "<li>#{list}</li>"
    end
    string_value + "</ul>"

  end

  def button(x, y = "d")
    if y == "d"
      "<button>#{x}</button>"
    else
      "<button class='#{y[:class]}'>#{x}</button>"
      end
  end

  #   context "with a layout" do
  #     it "returns wraps all html in the layout by replacing CONTENT" do
  #       skip
  #       html_generator = HTMLGenerator.new("<main>CONTENT</main>")
  #       expect(html_generator.section("section text")).to eq("<main><section>section text</section></main>")
  #
  #       html_generator = HTMLGenerator.new("<div>CONTENT</div>")
  #       expect(html_generator.unordered_list(["an item"])).to eq("<div><ul><li>an item</li></ul></div>")
  #
  #       html_generator = HTMLGenerator.new("<section>CONTENT</section>")
  #       expect(html_generator.button("a button in a section")).to eq("<section><button>a button in a section</button></section>")
  #     end
  #   end
  # end



end
