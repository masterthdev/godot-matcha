static var peer_id := 0
# Generate an random string with a certain length
static func gen_id(len:=20, charset:="aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ") -> String:
	var word: String
	var n_char = len(charset)
	for i in range(len):
		word += charset[randi()% n_char]
	
	if peer_id == 0: peer_id = randi_range(2,9999999999)
	var peer_id_str := str(peer_id)
	for i in range(peer_id_str.length()):
		word[i] = peer_id_str[i]
	return word
