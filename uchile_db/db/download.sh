#!/bin/sh
##ALL
#wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1Iy2IyWHwydWvbjUNNH14ggPa0CnPfgkk' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1Iy2IyWHwydWvbjUNNH14ggPa0CnPfgkk" -O db.tar.gz && rm -rf /tmp/cookies.txt


# Download uchile_db Emotion
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=16TuGiBAys8Qf4rEZxsANdck7Xem6VoYH' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=16TuGiBAys8Qf4rEZxsANdck7Xem6VoYH" -O Emotion.tar.gz && rm -rf /tmp/cookies.txt

# Download uchile_db Face
wget --no-check-certificate -nd 'https://docs.google.com/uc?export=download&id=1IqCxpVrRxCVuHV1mIanBWK2IPUXggvk_' -O Face.tar.gz

# Download uchile_db Fun
wget --no-check-certificate -nd 'https://docs.google.com/uc?export=download&id=1SoScZznMjiBuGxisg12t7nHcu_IyV0RB' -O Fun.tar.gz

# Download uchile_db Hand Gesture
wget --no-check-certificate -nd 'https://docs.google.com/uc?export=download&id=1ZuXD3HZUHyi1nxIrEdwmN5I5kIceSvOi' -O HandGesture.tar.gz

# Download uchile_db Maps
wget --no-check-certificate -nd 'https://docs.google.com/uc?export=download&id=1z4HbL-ZMHd9QJ-U2N4Xg2kYG-vV459qG' -O Maps.tar.gz

# Download uchile_db SIFT Search
wget --no-check-certificate -nd 'https://docs.google.com/uc?export=download&id=1T6L6HbW-SyPqiVJuEIobjPficY1S3rU4' -O SIFTSearch.tar.gz

# Download uchile_db SIFT
wget --no-check-certificate -nd 'https://docs.google.com/uc?export=download&id=1fFayZ7MF3n9lJ21rG-cfDK-OPMlDYMuC' -O SIFT.tar.gz

# Download uchile_db State
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1BGlAdxjlelOk_EKudM6zBRI_S0o20M-K' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1BGlAdxjlelOk_EKudM6zBRI_S0o20M-K" -O State.tar.gz && rm -rf /tmp/cookies.txt

# Download uchile_db VFH
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1_d-FLSLJwIb8qux6AePxLQogcStiqHem' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1_d-FLSLJwIb8qux6AePxLQogcStiqHem" -O VFH.tar.gz && rm -rf /tmp/cookies.txt


###Deep Codes 

# Download uchile_db face_detector
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1uM1hZsKTHCIdUmul5EA6YbIEQ2LHQWQy' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1uM1hZsKTHCIdUmul5EA6YbIEQ2LHQWQy" -O face_detector.tar.gz && rm -rf /tmp/cookies.txt

# Download uchile_db face_person_caracteristic
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1fqp3KnqU2pJJeFQxWSR2r65KfMnN-s52' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1fqp3KnqU2pJJeFQxWSR2r65KfMnN-s52" -O face_person_caracteristic.tar.gz && rm -rf /tmp/cookies.txt

# Download uchile_db face_recognition
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1HYZLrosMf2JInY4MlxGfV_Iy16edRTxM' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1HYZLrosMf2JInY4MlxGfV_Iy16edRTxM" -O face_recognition.tar.gz && rm -rf /tmp/cookies.txt


