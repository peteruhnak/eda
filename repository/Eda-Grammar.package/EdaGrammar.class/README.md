I represent a grammar for some language, using Onigmo regex library as a backed for matching portions of text.

Use #newParser to get an EdaGrParser which parses strings according to my grammar.

I remember the base scope and the main repository for the grammar.

This attempts to implement the Text Mate language grammars
(see https://manual.macromates.com/en/language_grammars)

There are two main caveats, the linked document:
	1. doesn't disallow mixing rules (for example having a match and a begin-end rule in one). For simplicity, we don't allow this, as it doesn't restrict the parsing capabilities in any way and the rules can be split while retaining the same effects.
	2. allows end regex of a Begin-End rule to reference a group from begin regex, which can simplify grammar definitions greatly (LaTeX for example) . We don't support this yet.