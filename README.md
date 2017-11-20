# Semestral project - Highlight a snippets
REPORT


**13.11. - 20.11.**

Vojtech Balik
- Looked into Onigmo regex lib to see how hard would it be to use it. https://github.com/k-takata/Onigmo and also https://github.com/textmate/textmate (to see how they used it).
- Decided it wouldn't be that hard and started experimenting with UFFI. Read through the booklet and asked on Discord about loading symbols from the library.
Next week: Finish wrapping the Onigmo functions we will need and start reimplementing the internal structure for parse grammars (the one we did before sucks)

Minh Trieu
- As for my problem which is to find a way to detect a key press in moldable editor I found out that it is done via message onAttached. There were a several problems but mostly because I didn't understand well the pharo basics or misunderstand them. 
- This following code is all that is needed to get and detect a TAB key in moldable editor:
 

`anEditorElement addShortcut: (BlShortcut new combination: (BlKeyCombination builder key: Key tab; build); action: [ Transcript show: 'Hello World' ]).`

Adam Jirovsky
- This week I have mainly focused on getting the language rules out of the specific XML structure.
- To do that I have used XMLDOMParser and managed to get the actual regular expressions corresponding with its keys. E.g regex '\b(true|false|nil|self|super|thisContext)\b' for 'variable.language.smalltalk'.
- Since I had to familiarize myself with the XMLParser I have managed only to parse the XML to get the specific element when I need them and in the next week I plan to make some sort of structure that will store the parsed data.

Tereza Zivnustkova
- My task to do was to make snippets definition for PlantUML.
- I started with getting site where the main definitions are (https://github.com/plafue/language-plantuml) from a person, who did it the previous semester.
- Now I'm in the middle of rewrating them. Because they are written in CSON there and I'm rewrating them to JSON.

===============================================================

# Semestral project - Propojeni model-text
REPORT


