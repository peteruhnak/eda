I store scope selector -> text attribute associations. To create a custom theme, subclass me and define #definition. Note that the class has to be reinitialized, when you change #definition, for the changes to take effect.

#bestMatchFor: finds the most appropriate selector for a given scope. (The one for which EdaScopeSelector>>#selects returns the highest rank).