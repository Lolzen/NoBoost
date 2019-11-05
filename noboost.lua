local wordlist = {
	"boost",
	"boosts",
	"boosting",
	"verkaufe",
	"verkauft",
	"verkaufen",
	"wts",
	"vk",
	"gold",
	"buy",
	"sell",
	"rio",
	"+rio",
}

local freehold = {
	"Freehold",
	"Freihafen",
	"Fuerte Libre",
	"Port-Liberté",
	"Covo della Libertà",
	"Angra do Facão",
	"Вольная Гавань",
	"자유지대",
	"自由镇",
}

ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", function(_, _, msg, ...)
	msg = msg:lower()
	for i = 1, #wordlist do
		return (msg:find("m+(%d+)") or msg:find("m+") or msg:find("m(%d+)")) and msg:find(wordlist[i])
	end
	-- not so nice, but does it's job 
	for i = 1, #freehold do
		if msg:find(freehold[i]) then
			for i = 1, #wordlist do
				return msg:find(wordlist[i])
			end
		end
	end
end)