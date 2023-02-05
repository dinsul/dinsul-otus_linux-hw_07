#!/bin/sh

replace_in_file()
{
    cp -f $1 $1.bak
    sed 's/\([^a-z]\)'$2'\([^a-z]\)/\1'$3'\2/g' $1.bak > $1
}

old_name="VolGroup00"
new_name="OtusRoot"

#vgs

#vgrename $old_name $new_name

replace_in_file $1 $2 $3


