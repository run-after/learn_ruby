#write your code here

def ftoc tempF
  tempC = (tempF - 32) / 1.8
  tempC.ceil
end

def ctof tempC
  tempF = tempC * 1.8 +32
  tempF = (tempF*10)/10
  tempF
end
