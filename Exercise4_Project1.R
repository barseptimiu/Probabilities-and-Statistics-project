matching_cards = function(m, n) {
	success = 0
	deck = 1:m
	for (i in 1:n){
		deck1 = sample(deck)
		print("Deck1: ")
		print(deck1)
		deck2 = sample(deck)
		print("Deck2: ")
		print(deck2)
		print("-------------------------------")
		for (i in 1:m)
			if(i == deck1[i] && i==deck2[i]){
				success = success + 1
				print("SUCCESS!")
				print(paste("AT POSITION: ", i))
				print("-------------------------------")
				break
			}
			
		
	}
	success_rate = success/n
	print(paste("The number of successes: ", success))
	print(paste("The success rate: ",success_rate))
}

matching_cards(4,1000)
matching_cards(6,1000)
matching_cards(8,1000)
matching_cards(10,1000)
matching_cards(12,1000)


matching_cards(6,10)
