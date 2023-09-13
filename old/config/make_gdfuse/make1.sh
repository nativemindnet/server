MAKEHOST=$1
MAKEDIR=../hosts/$MAKEHOST/.gdfuse
rm -R $MAKEDIR
mkdir -p $MAKEDIR

####

MAKEMNT="own1_upload"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config

MAKEMNT="own2_upload"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own2_upload2"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own2_upload3"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own2_upload4"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own2_upload5"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own2_upload6"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own2_upload7"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config

MAKEMNT="own3_upload"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own3_upload2"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own3_upload3"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own3_upload4"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own3_upload5"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own3_upload6"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own3_upload7"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config


MAKEMNT="own4_upload"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config


MAKEMNT="own42_upload"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own42_upload2"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own42_upload3"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
MAKEMNT="own42_upload4"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config




MAKEMNT="own5_upload"
mkdir -p $MAKEDIR/$MAKEMNT
./make_config.sh $MAKEMNT $MAKEHOST > $MAKEDIR/$MAKEMNT/config
