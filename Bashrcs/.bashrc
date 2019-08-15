export SHELLOPTS
set -o igncr

source ~/.nocondarc

_CURRENT_DRIVE=$(python get_set_drive_letter.py)


###############################################################################

#  Anaconda Environment Selection - Plese set CONDA_BASE_DIR to the directory
#  containing the base installation of anaconda/miniconda.

export CONDA_BASE_DIR="/mnt/"$_CURRENT_DRIVE"/PortableApps/Anaconda3"

#  Proxy Servers & Network Setup (if needed)

#export HTTP_PROXY=
#export HTTPS_PROXY=

#  IMPORTANT - Ignore carriage returns when using a Cygwin environment.

#export PYTHONIOENCODING=UTF-8
export PYTHONIOENCODING=utf8


. "/mnt/"$_CURRENT_DRIVE"/PortableApps/Anaconda3/etc/profile.d/conda.sh"

###############################################################################

#  Manage conda environments for Python.  We check the environment variable
#  $CONDA_DEFAULT_ENV to see which environment is desired.  The default (root)
#  environment will be chosen if nothing is specified.  Note that this variable
#  will be explicitly managed by the cyg-activate ( ) function we have defined
#  below, specifically for the purpose of changing environments.  The root
#  environment is also handled slightly different from the others when it comes
#  to setting the CONDA_DEFAULT_ENV variable.

if [ ${CONDA_DEFAULT_ENV} ] && [ ${CONDA_DEFAULT_ENV} != 'root' ] 
then
    #  SELECT ONE OF THE NON-DEFAULT ENVIRONMENTS
    export CONDA_PREFIX=${CONDA_BASE_DIR}/envs/${CONDA_DEFAULT_ENV}
else
    #  SELECT THE DEFAULT ENVIRONMENT (and set CONDA_DEFAULT_ENV full path)
    export CONDA_DEFAULT_ENV=root
    export CONDA_PREFIX=${CONDA_BASE_DIR}
fi

###############################################################################

#  PATH - All of the anaconda/miniconda path entries appear first.

PATH=
PATH=$PATH:$CONDA_PREFIX
PATH=$PATH:$CONDA_PREFIX/Library/mingw-w64/bin
PATH=$PATH:$CONDA_PREFIX/Library/usr/bin
PATH=$PATH:$CONDA_PREFIX/Library/bin
PATH=$PATH:$CONDA_PREFIX/Scripts

###############################################################################


MANPATH=$MANPATH:$HOME/share/man
PATH=$PATH:$HOME/bin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/ccs/bin:/usr/sbin:/usr/bin:/usr/sfw/bin:/usr/sfw/sbin
PATH=$PATH:/opt/bup/bin
PATH=$PATH:/opt/bup_w_fuse/bin

#alias ar=/usr/bin/ar.exe


export PATH