#!/bin/awk -f
# This script takes a text file, the exported note type "Choose 1 from 4" from anki, and outputs lines to be imported into anki again. Every previous card is turned into four new cards, asking if the option you were originally able to choose from is actually the right answer

BEGIN {
FS = "|"
qtext = ""
}

{
if ($6 == "a"){
ans = "ja"
    }
    else {
ans = "nein"
        }
print $1";"qtext";"$2";"ans";"$8" byexpandc1f4script"
}

{
if ($6 == "b"){
ans = "ja"
    }
    else {
ans = "nein"
        }
print $1";"qtext";"$3";"ans";"$8" byexpandc1f4script"

}

{
if ($6 == "c"){
ans = "ja"
    }
    else {
ans = "nein"
        }
print $1";"qtext";"$4";"ans";"$8" byexpandc1f4script"

}

{
if ($6 == "d"){
ans = "ja"
    }
    else {
ans = "nein"
        }
print $1";"qtext";"$5";"ans";"$8" byexpandc1f4script"

}
