#write your code here
def translate string
  vowels = ['a', 'e', 'i', 'o', 'u', 'y']
  const = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z']

array = string.split(' ')
if array.length == 1
#it starts with a vowel
  if vowels.include?(string[0])
    string << "ay"

#special "qu" case  
  elsif string[0] == 'q' && string[1] == 'u'
    first = string[0..1]
    string[0..1]=''
    string << first+"ay"

#special-er "qu" case
  elsif (string[1] == 'q' && string[2] == 'u')
    first = string[0..2]
    string[0..2]=''
    string << first+"ay"

#3 const in a row
  elsif const.include?(string[0]) && const.include?(string[1]) && const.include?(string[2]) 
    first = string[0..2]
    string[0..2]=''
    string << first+"ay"

#2 const in a row
  elsif const.include?(string[0]) && const.include?(string[1]) 
    first = string[0..1]
    string[0..1]=''
    string << first+"ay"

#starts with const
  elsif const.include?(string[0])
    first = string[0]
    string[0]=''
    string << first + "ay" 

  end
else
array.each{|word|

#it starts with a vowel
  if vowels.include?(word[0])
    word << "ay"

#special "qu" case  
  elsif (word[0] == 'q' && word[1] == 'u')
    first = word[0..1]
    word[0..1]=''
    word << first+"ay"

#special-er "qu" case
  elsif (word[1] == 'q' && word[2] == 'u')
    first = word[0..2]
    word[0..2]=''
    word << first+"ay"

#3 const in a row
  elsif const.include?(word[0]) && const.include?(word[1]) && const.include?(word[2]) 
    first = word[0..2]
    word[0..2]=''
    word << first+"ay"

#2 const in a row
  elsif const.include?(word[0]) && const.include?(word[1]) 
    first = word[0..1]
    word[0..1]=''
    word << first+"ay"

#starts with const
  elsif const.include?(word[0])
    first = word[0]
    word[0]=''
    word << first + "ay" 
  end
}
array.join(" ")
end
end
