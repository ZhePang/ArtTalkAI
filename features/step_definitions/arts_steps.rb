
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

Then /I should have the title, author, description, and release date of the art piece of the day/ do
    @art = Art.find(DateTime.now.strftime('%d').to_i % (Art.count) + 1)
    if page.respond_to? :should
        page.should have_content(@art.title)
        page.should have_content(@art.author)
        page.should have_content(@art.description)
        page.should have_content(@art.release_date.strftime("%B %d, %Y"))
    else
        assert page.has_content?(@art.title)
        assert page.has_content?(@art.author)
        assert page.has_content?(@art.description)
        assert page.has_content?(@art.release_date.strftime("%B %d, %Y"))
    end
end

Then /I should have a new chat created with the ArtGuide and saying welcome of the art/ do
    text = Art.find(DateTime.now.strftime('%d').to_i % (Art.count) + 1).title
    if page.respond_to? :should
        page.should have_content("Hi there! What do you want to know about the painting '#{text}'")
    else
        assert page.has_content?("Hi there! What do you want to know about the painting '#{text}'")
    end
end

Then /I should have all infos of each art/ do
    Art.all.each do |art|
        if page.respond_to? :should
          page.should have_content(art.title)
          page.should have_content(art.description)
          page.should have_content(art.release_date.strftime("%B %d, %Y"))
        else
          assert page.has_content?(art.title)
          assert page.has_content?(art.description)
          assert page.has_content?(art.release_date.strftime("%B %d, %Y"))
        end
    end
end

Then /I should have the art infos/ do
    if page.respond_to? :should
        page.should have_content("Details about")
        page.should have_content("Released on:")
        page.should have_content("Description:")
    else
        assert page.has_content?("Details about")
        assert page.has_content?("Released on:")
        assert page.has_content?("Description:")
    end
end

Then /I should open a new chat with a link to the gallery/ do
    if page.respond_to? :should
        page.should have_content("ArtGuide")
        page.should have_content("Go to Gallery")
    else
        assert page.has_content?("ArtGuide")
        assert page.has_content?("Go to Gallery")
    end
end

Then /I should have the conversation on "([^"]*)"/ do |text|
    if page.respond_to? :should
        page.should have_content("Hi there! What do you want to know about the painting '#{text}'")
    else
        assert page.has_content?("Hi there! What do you want to know about the painting '#{text}'")
    end
end