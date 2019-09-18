class Book
# write your code here

  def title
    @title
  end

  def title=(str)
    name = str.split(" ")
#if title is more than 1 word
    if name.length > 1
      new_title = ""
      name.each{|word| 

       if (word == 'and' or word == 'the') and new_title != ''
         new_title << word + ' '
       elsif word.length > 2 or word == 'i' or new_title == '' 
         new_title << word.capitalize + ' '
       else
         new_title << word + ' '
       end
       }
       @title = new_title.chop
    else
      
      @title = str.capitalize
    end
  end

end


