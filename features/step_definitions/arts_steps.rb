
Given /the following arts exist/ do |arts_table|
    arts_table.hashes.each do |art|
      Art.create art
    end
  end