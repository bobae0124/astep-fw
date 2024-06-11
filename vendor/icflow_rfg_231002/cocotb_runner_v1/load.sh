
export CCTBV1_HOME="$(dirname "$(readlink -f ${BASH_SOURCE[0]})")"
export PATH="$CCTBV1_HOME/bin:$PATH"

export PYTHONPATH="$CCTBV1_HOME/python:$PYTHONPATH"