
Given /the following arts exist/ do |arts_table|
    arts_table.hashes.each do |art|
      Art.create art
    end
end

Then /I should have the art piece of the day/ do
    text = Art.find(DateTime.now.strftime('%d').to_i % (Art.count) + 1).title
    if page.respond_to? :should
        page.should have_content(text)
    else
        assert page.has_content?(text)
    end
end

Then /I should have the title, description, and release date of the art piece of the day/ do
    @art = Art.find(DateTime.now.strftime('%d').to_i % (Art.count) + 1)
    if page.respond_to? :should
        page.should have_content(@art.title)
        page.should have_content(@art.description)
        page.should have_content(@art.release_date.strftime("%B %d, %Y"))
    else
        assert page.has_content?(@art.title)
        assert page.has_content?(@art.description)
        assert page.has_content?(@art.release_date.strftime("%B %d, %Y"))
    end
end