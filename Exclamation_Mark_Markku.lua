local markkuFacts = {
    'Markku Uula Aleksi "Alexi "Wildchild"" Laiho oli ensimmäinen suomalainen kitaristi, josta on tehty artikkeli arvostettuun Guitar World -lehteen',
    'Markku Uula Aleksi "Alexi "Wildchild"" on myös valittu Guitar World -lehden vuoden 2009 lukijaäänestyksessä parhaaksi metallikitaristiksi. Samassa äänestyksessä taakse jäivät muun muassa Kirk Hammett, Slash ja Zakk Wylde.'
}

local markkuFrame = CreateFrame("FRAME", "MarkkuFrame");
markkuFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
local function eventHandler(self, event, ...)
    print ("R.I.P Markku Uula Aleksi Laiho 4.1.2021")
end
markkuFrame:SetScript("OnEvent", eventHandler);

local captureFrame = CreateFrame("FRAME", "MarkkuCaptureFrame")
captureFrame:RegisterEvent("CHAT_MSG_SAY")
captureFrame:SetScript("OnEvent", function(self, event, msg)
    if msg == "!markku" then
        print(getRandomMarkkuFact())
        -- SendChatMessage("Lol!", "SAY")
    end
end)

function getRandomMarkkuFact ()
    print( markkuFacts[ math.random( #markkuFacts ) ] )
end
