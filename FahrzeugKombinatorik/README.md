# Utils.lua

# :de:
Du hast die freiheit sie für dein eigene(s) projekt(e) zu nutzen!

Um sie nutzen zu können muss sie als erstes in der `mod.lua` geladen werden, andernfals funktioniert es nicht!

```lua
scripts = {
  "utils.lua",
  -- Deine Scripts Danach!
},
```

### Funktion: `utils:wagen(name, forward, number, skinPath)`
`name` = Wagen Typ (z.b. "Berlin_A3L92_S")  
`forward` = Soll der Wagen nach Vorne zeigen (`true`) oder nach Hinten (`false`) zeigen?  
`number` = Welche nummer soll der Wagen haben? Wenn dies auf "nil" gesetzt wird, wird sie Zufällig Generiert  
`skinPath` = Der Textur-Datei Pfad (z.b. "A3L92-SampleSkin.png")

Sie ist das wichtigste!

### Fahrzeug Typen, wie und wo?
Es gibt viele beispiele in der `HK_Category.lua`, `A3L92_Category.lua` und `KI_Looker.lua` scripte!

Hier aus der `A3L92_Category.lua` ein gezogenes beispiel:
```lua
utils:wagen(utils.ftype.a3l92["S"], true, 538),
utils:wagen(utils.ftype.a3l92["K"], false, 539),
utils:wagen(utils.ftype.a3l92["S"], true, 540),
utils:wagen(utils.ftype.a3l92["K"], false, 541),

utils:wagen(utils.ftype.hk["A"], true, 10011),
utils:wagen(utils.ftype.hk["B"], true, 10012),
utils:wagen(utils.ftype.hk["C"], false, 10013),
utils:wagen(utils.ftype.hk["D"], false, 10014),
```
Wie du siehst, sollte es echt einfach sein zu verstehen.

***

# :gb:
You are free to use it for your own project(s)!

To use it you need to have it be loaded as the first script, otherwise it wont work!

```lua
scripts = {
  "utils.lua",
  -- Your scripts after!
},
```

# How to Use

### Function: `utils:wagen(name, forward, number, skinPath)`
`name` = Vehicle Type (e.g. "Berlin_A3L92_S")  
`forward` = Should the Vehicle facing be Forwards (`true`) or Back (`false`) ?  
`number` = What number should it have? It can be set to `nil` to generate one randomly.  
`skinPath` = Texture Repaint File Path (e.g. "A3L92-SampleSkin.png")

It is the important bit!

### Fahrzeug Typen, wie und wo?
There are many examples in the `HK_Category.lua`, `A3L92_Category.lua` and `KI_Looker.lua` scripts!

Here is one copied from `A3L92_Category.lua`
```lua
utils:wagen(utils.ftype.a3l92["S"], true, 538),
utils:wagen(utils.ftype.a3l92["K"], false, 539),
utils:wagen(utils.ftype.a3l92["S"], true, 540),
utils:wagen(utils.ftype.a3l92["K"], false, 541),

utils:wagen(utils.ftype.hk["A"], true, 10011),
utils:wagen(utils.ftype.hk["B"], true, 10012),
utils:wagen(utils.ftype.hk["C"], false, 10013),
utils:wagen(utils.ftype.hk["D"], false, 10014),
```

As you can see it should be straight forward.
