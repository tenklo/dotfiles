#!/bin/awk -f

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
