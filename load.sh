if [[ -z $BASE ]]
then 
    export BASE="$(dirname "$(readlink -f ${BASH_SOURCE[0]})")"
    echo "[ICF] No BASE environment variable set, setting to: $BASE"
fi

## Python path
export PYTHONPATH="$BASE/sw/:$PYTHONPATH"

## ICFLow library from vendor folder
icflowpath=$(ls 2>/dev/null -dr $BASE/vendor/icflow_*_* | head -1) 
if [[ ! -z $icflowpath ]]
then
    echo "Loading ICFlow at: $icflowpath"
    source $icflowpath/load.sh
fi


## Local tools -> This file can be set by users to load tools, based on user's installation paths
if [[ -e $BASE/load.local.sh ]]
then
    echo "Loading local load file"
    source $BASE/load.local.sh
fi