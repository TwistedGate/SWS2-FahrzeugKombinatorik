local function transl(key, tab)
  assert(type(tab)=="table", "Expected table. Got "..type(tab))
  
  for lang,text in pairs(tab) do
    g_l10n:addText(lang,key,text)
    --utils:printf("Added translation Lang: %s\nKey: %s\nText:\n%s", lang, key, text)
  end
end

transl("FK_Default_Cat_Desc", {
  de="Alle benutzerdefinierten Zusammenstellungen von \"FahrzeugKombinatorik\"",
  en="All custom consists added by \"FahrzeugKombinatorik\""
})

transl("FK_HK_Cat_Info", {
  de="Bei dem \"HK-A3L92\" zu einem der A3L92\ngehen und die Bremsen vorher lösen!",
  en="When choosing the \"HK-A3L92\" consist\ngo to one of the A3L92 and release the brake!"
})

transl("FK_AI_Cat_Info", {
  de="Nur KI-Fahrzeuge!\n\nACHTUNG\nSie sind nicht fahrbar und die Kamera könnte unbeweglich sein.",
  en="AI-only vehicles!\n\nWARNING\nThese are not drivable and the camera and\npawn may break when spawning in these."
})

