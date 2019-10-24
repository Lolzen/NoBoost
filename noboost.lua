local wordlist = {
	"boost",
	"verkaufe",
	"wts",
	"vk",
}

ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", function(_, _, msg)
	msg = msg:lower()
	return (msg:match("boost") or (msg:find("m+") and msg:find(wordlist[msg])))
end)
