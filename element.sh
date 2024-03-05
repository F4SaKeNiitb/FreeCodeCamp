#!/bin/bash
PSQL='psql --username=freecodecamp --dbname=periodic_table --tuples-only -c'
if [[ -z $1 ]]
then
echo "Please provide an element as an argument."
else
if [[ $1 =~ ^[0-9]+$ ]]
then
echo $($PSQL "select * from elements full join properties on elements.atomic_number=properties.atomic_number full join types on properties.type_id=types.type_id where elements.atomic_number=$1") | while read ATOMICNO BAR SYMBOL BAR NAME BAR ATNO BAR ATOMICMASS BAR MELTINGP BAR BOILINGP BAR TYPEID BAR TYPE BAR TYPEID
do
echo "The element with atomic number $ATNO is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMICMASS amu. Hydrogen has a melting point of $MELTINGP celsius and a boiling point of $BOILINGP celsius."
done
else
if [[ ! -z $($PSQL "select * from elements full join properties on elements.atomic_number=properties.atomic_number full join types on properties.type_id=types.type_id where (elements.name='$1' or elements.symbol='$1')") ]]
then
echo $($PSQL "select * from elements full join properties on elements.atomic_number=properties.atomic_number full join types on properties.type_id=types.type_id where (elements.name='$1' or elements.symbol='$1')") | while read ATOMICNO BAR SYMBOL BAR NAME BAR ATNO BAR ATOMICMASS BAR MELTINGP BAR BOILINGP BAR TYPEID BAR TYPE BAR TYPEID
do
echo "The element with atomic number $ATNO is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMICMASS amu. $NAME has a melting point of $MELTINGP celsius and a boiling point of $BOILINGP celsius."
done
else
echo "I could not find that element in the database."
fi
fi
fi