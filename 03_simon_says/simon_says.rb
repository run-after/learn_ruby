#write your code here

def echo string
  string
end

def shout string
  string.upcase
end

def repeat string, times=1
  if times > 1
    string + (" " + string)*(times-1)
  else
    string + " " + string
  end
end

def start_of_word string, num=0
  string[0..num-1]
end

def first_word string
i=0
word = ''
  while string[i] != ' '
    word = word+string[i]
    i = i+1
  end
  word
end

def titleize title

  smallWords=['and', 'if', 'or', 'the', 'over']

  title.split(' ').each_with_index.map{|string, index| smallWords.include?(string) && index > 0 ? string : string.capitalize}.join(' ')
  

end
