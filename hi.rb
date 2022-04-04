require 'open-uri'
require 'pdf/reader'

File.open("Item_Rel_2017-18_EOC-Math.pdf", "rb") do |io|
    reader = PDF::Reader.new(io)
    # puts reader.pdf_version
    # puts reader.info
    # puts reader.metadata
    # puts reader.page_count
    # reader.pages.each do |page|
    #     puts page.fonts
    #     puts page.text
    #     puts page.raw_content
    #   end
    puts reader.page(28).text
    # puts reader.objects.inspect
  end
