Device Tree for ZTE BLADE V6 PLUS (blade_v0720)
===========================
For Stock 3.10.65 kernel

Getting Started
---------------

Initialize a repository with CyanogenMode:

    repo init -u git://github.com/LineageOS/android.git -b cm-14.1
    
Sync sources:    

    repo sync
    
Build the code:
    
    cd device
    mkdir zte
    cd zte
    git clone https://github.com/ASAZING/android_device_zte_blade_v0720 -b cm-14.1 blade_v0720
    cd blade_v0720/patches
    . apply-patches.sh
    cd vendor
    mkdir zte
    cd zte
    git clone https://github.com/ASAZING/android_vendor_zte_blade_v0720 -b cm-14.1 blade_v0720
    cd ../../
    source build/envsetup.sh
    breakfast blade_v0720
    make -j 4 bacon

Current state
-------------

- Cyanogen boots
- Touch, screen, keyboard working
- Wifi is working
- Audio is working
- Telephony is working (see Known Issues)
    - USIM (3G) supported
    - Incoming/outgoung call
    - SMS, USSD
    - Data connectivity
- GPS
- Bluetooth (pairing only testes so far)
- Sensors

Known Issues
-------------
- Livedisplay (lagging)
- FMRadio
- VoLTE
- Gps without network connections?
- Camera
- Hardware OMX codecs are not working
