echo " "
echo " "
echo "Shelling into the first pod like the absolute gangsters that we are."
echo "...."
echo "    Is there a less volitile way to do this?"
echo "                                             ..."
echo "            ======================= "
echo "              !!!!!!  YES  !!!!!"
echo "            ======================= "
echo " "
echo " But we're doing it this way anyway because I want to."
echo " " 
echo " "

if [ -z "$1" ]
  then
    echo "no argument supplied"
    exit 1
fi

function doIt() {
  NAMEREGEX=$1
  kubectl exec --stdin --tty $(kubectl get pods -A | awk "/$NAMEREGEX/ {print \$2}") -- /bin/bash
}
doIt $1
