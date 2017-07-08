classroom = {
 'desk1': ['ruler', 'markers'],
 'desk2': ['folder', 'compass'],
 'desk3': [],
 'desk4' => {'pencilcase':
   ['pencils','erasers']
 }
}

p classroom

# tried to return 'erasers', nested in an array that is the value of a hash that is nested in another hash!
#p classroom['desk4']['pencilcase']['erasers']
# this returns error message
#classroom['desk4']['pencilcase'][1]
# this returns nil
