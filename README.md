# Roolz gem (interview project)

Your boss, Nate, has handed you a half-baked project and asked you to finish it. Luckily, there are some specs, and you can kind of see what he's going for, but a lot of the specs are failing, and you've noticed some of the classes don't even have specs yet.

As with any project, you know you probably won't finish everything in time, but you really want to wow Nate with what you do finish.

Start out by forking the roolz repository to your own github account. Remember to commit often as you work through the requirements. Don't be afraid to ask for clarification when project specifications are incomplete.

If you only get through the Sapling level, that is good enough for now, but you secretly want to finish at least the Redwood level just to see what Nate says. You can also skip parts you can't figure out, so you could implement some pieces of the Forest level even if not all of the Seed level is done. In general, though, the levels do build on each other.

## Gem Purpose

The Roolz gem is supposed to be able to build up a deeply-nested ruleset, then run the rules on an arbitrary data set.

The data set is just a ruby hash, and the rules operate on keys of the hash.

## Seed (Basic functionality)

* All the specs should pass.
* There should be specs for all existing rule classes.
* All the rule classes should work appropriately.

## Sprout (more complete rules)

* Add a rule to check whether the data key is an email address. Call it `Rool::Email`.

* Add a `Rool::Blank` that returns true for empty arrays, empty hashes, nil, and empty strings.

* Add a `Rool::Subset` that determines whether the operand (an array) is a complete subset of the dataset's data_key.

* Especially for deeply nested rulesets, we will need to know why the rules passed or failed. Make a `result` attribute. If the rule passes, `result` should be true. If the rule fails, `result` should be false. When a rule fails, a `message` attribute should contain a brief, human-readable sentence about why it failed.

* A container rule should also include result, but calling the message method on it should gather all the messages from its children classes. In the case of deeply nested rules, the messages array should not contain any arrays or blank values, but just all the messages from all the leaves of the rule tree.

* Make sure results and messages are set correctly on all children rules of container rules. Even if an `All` rule fails on the first child, the other children should also know their results.

* Make sure to test this functionality thoroughly with specs.

## Seedling (serialization)

We need to be able to save rulesets to the database. Nate has said he doesn't want to try to fit these rules into a relational database model, and instead wants to save JSON. For this task, don't worry about actually saving to the database; just make sure the rules can be converted to and from json.

* Create a `to_json` method which converts any rule to a JSON object.
* Create a `from_json` method which accepts a JSON object and builds a rule from it.
* Your serialization methods must work with arbitrarily deeply nested rules.
* Write passing specs to cover any serialization scenarios that could happen.

## Sapling (complex rule types)

The team has started using an alpha version of the roolz gem and realized that sometimes, they need to run a rule on elements of an array.

* Create a rule class called `Rool::Send`. Given a method name, basic rule type, and operand, this rule calls the method on the dataset's data key, then builds the basic rule and runs with the modified data. For example, you might use `Rool::Send` to check whether an array contains fewer than 100 elements by instantiating the rule with method = `count`, rule type = `less_than`, and operand = 100. Be careful not to mess up the data set, since it is probably getting passed around by reference.

* Create a rule class called `Rool::Iterate`. Given an existing basic rule type, an operand, and an existing container rule type, it should run the basic rule on all elements of an array (in the data set) using the specified container type. For example, you might use this to check whether all the elements of an array are positive numbers, by passing 'greater_than', 0, and 'all'). By passing 'any' instead of 'all', you could check whether any of the numbers are positive. This class should instantiate the appropriate container and basic rule classes and pass the dataset to them.

* These rules should work with serialization.

## Redwood (functioning rules UI)

Create a UI that generates a correct JSON representation of rules based on your serialization implementation. The UI can use canvas, javascript, QT, or anything else you want. It does not need to talk to a server and can simply display the correct JSON on the page.

One way you might implement this is to include a textarea for inputting JSON. The rules could be displayed as a tree, nested divs, or a folder structure.

* If provided with a JSON object, the UI should be able to create the visual representation of the rules represented by the JSON.

* The UI should allow nesting `All` and `Any` rules arbitrarily deeply.

## Forest (real-time server testing in UI)

Based on the UI from before, allow a user to specify a dataset and run the rules in real time. Users should also be able to save a ruleset to a database. The server is a JSON api that does not render any HTML. Your frontend should interact with the server as an api.

* Use a server other than rails. Nate suggest Sinatra but is open to other options.

* Use any database structure you want. You might store rules as json columns in a postgres database table, documents in a mongodb collection, etc.

* The server should be able to return a list of existing rules from the database as json objects at the /list endpoint.

* The server should be able to create a new ruleset at the /create endpoint. Each ruleset should have a unique identifer, a title, the ruleset, and a sample dataset.

* The server should accept update requests at the /update endpoint when provided with a unique identifier.

* The server should be able to save a rule to the database, execute the ruleset on the dataset, and return the result to the ui in a single request. The endpoint is /process. The UI should show results and messages of all rules.
