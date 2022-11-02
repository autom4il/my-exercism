main () {

string=""

if (( "$1" % 3 == 0 ))
then
 string+="Pling"
fi

if (( "$1" % 5 == 0))
then
  string+="Plang"
fi

if (( "$1" % 7 == 0))
then
  string+="Plong"
fi

if [[ -n $string ]]
then
    echo "$string"
else
    echo "$1"
fi

}

main "$@"
