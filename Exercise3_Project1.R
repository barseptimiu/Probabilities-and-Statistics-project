## 3

boy = function(families){
	children = 1:families
	for(i in 1:families){
		children[i]=0
		while(floor(runif(1,1,3))==2)
			children[i]=children[i]+1
		children[i]=children[i]+1
	}
	print(paste("The average number of children in a family until they have a boy: ", round(mean(children))))
}

boy(1000000)

boyAndGirl = function(families){
	children = 1:families
	for(i in 1:families){
		children[i]=0
		boys=0
		girls=0
		while(boys < 1 || girls < 1){
			if(floor(runif(1,1,3))==1){
				children[i]=children[i]+1
				boys=boys+1
			}
			else{
				children[i]=children[i]+1
				girls=girls+1
			}
		}
	}
	print(paste("The average number of children in a family until they have at least a boy and at least a girl: ", round(mean(children))))
}

boyAndGirl(1000000)