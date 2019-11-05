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

ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", function(_, _, msg, ...)
	msg = msg:lower()
	for i = 1, #wordlist do
		return (msg:find("m+(%d+)") or msg:find("m+") or msg:find("m(%d+)") or msg:find("freehold") or msg:find("freihafen")) and msg:find(wordlist[i])
	end
end)