$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
<<<<<<< HEAD

nds = directors_database
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
=======


def gross_for_director(director_data)
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#nds = directors_database
nds = director_data
result={}
nod = nds.length #number of directors_database
i=0# Director index
while i<nod do
  nom = nds[i][:movies].length
  j=0#Movie index
  t=0#total of all the movies of one director
  while j<nom do
    t=t+nds[i][:movies][j][:worldwide_gross]
    j=j+1
  end
  result [nds[i][:name]] = t
  i=i+1
end

return result
end
# { directorOne => allTheMoneyTheyMade, ... }
a = gross_for_director(directors_database)
>>>>>>> bf113b5fff1ca2624c28a84f0f2a1a63e08850aa
puts a


def directors_totals(nds)
<<<<<<< HEAD
  dtotals=[]
  names=[]
=======

>>>>>>> bf113b5fff1ca2624c28a84f0f2a1a63e08850aa
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
