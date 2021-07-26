#! /usr/bin/env ruby

# TODO: complete this class

class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @elements = collection
    @size = items_per_page
  end

  # returns the number of items within the entire collection
  def item_count
    return @elements.length
  end
    
  # returns the number of pages
  def page_count
    return (@elements.length.to_f / @size.to_f).ceil # ceil rounds up
  end
    
  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    amount_of_pages = page_count() - 1 # zero based index thats why there is - 1
    if page_index > amount_of_pages
      return -1
    elsif page_index == amount_of_pages
      return @elements.length % @size
    else
      return @size
    end
  end
    
  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index) 
    if item_index < 0 || item_index > @elements.length - 1
      return -1
    end
    number = (item_index.to_f / @size.to_f).ceil - 1
  end
end

helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
puts helper.page_count()
puts helper.item_count()
puts helper.page_item_count(2)
puts helper.page_index(5) # should == 1 (zero based index)
puts helper.page_index(2) # should == 0
puts helper.page_index(20) # should == -1
puts helper.page_index(-10) # should == -1 because negative indexes are invalid