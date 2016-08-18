Comic.delete_all

Comic.create([{title: 'empress'},{title: 'all new wolverine'},{title: 'totaly awesome hulk'}])

greg = User.find_by(email: 'greg@email.com')
empress = Comic.find_by(title: 'empress')
anw = Comic.find_by(title: 'all new wolverine')
tah = Comic.find_by(title: 'totaly awesome hulk')

greg.comics << empress
greg.comics << anw
greg.comics << tah

p greg.comics