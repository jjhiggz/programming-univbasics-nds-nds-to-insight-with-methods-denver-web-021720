$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
nds = directors_database
<<<<<<< HEAD
def gross_for_director(dh)   #dh stands for director hash
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#nds = directors_database
#pp nds
i=0
t=0
#pp nds
while i < dh[:movies].length do
  t = t+dh[:movies][i][:worldwide_gross]
  i=i+1
end
result=t
return result
end
# { directorOne => allTheMoneyTheyMade, ... }
a = gross_for_director(nds[1])
puts a


def directors_totals(nds)
  dtotals=[]
  names=[]
  result = {}
  i=0
  while i<nds.length do
    dtotals[i]=gross_for_director(nds[i])
    names[i]=nds[i][:name]
    result[names[i]] = dtotals[i]
    i=i+1
end
return result
end
a= directors_totals(nds)
puts a

=======
dname="Spike Lee"
i=0
while i < nds.length do
  if nds[i][:name]== dname
    puts 'gotem'
    i=1+1
  else
    puts 'aintgotem'
    puts i
    puts dname
    puts nds[i][:name]
    i=i+1
  end
end
>>>>>>> bf113b5fff1ca2624c28a84f0f2a1a63e08850aa



#pp nds
#result={}
#nod = nds[dname].length #number of directors_database
#i=0# Director index

#puts a
