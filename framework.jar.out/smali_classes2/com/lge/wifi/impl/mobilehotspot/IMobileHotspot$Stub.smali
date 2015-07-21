.class public abstract Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;
.super Landroid/os/Binder;
.source "IMobileHotspot.java"

# interfaces
.implements Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

.field static final TRANSACTION_addMacFilter:I = 0x40

.field static final TRANSACTION_addMacFilterAllowList:I = 0x2b

.field static final TRANSACTION_addMacFilterDenyList:I = 0x2c

.field static final TRANSACTION_clearNATRule:I = 0x7

.field static final TRANSACTION_clearPortFilterRule:I = 0x5e

.field static final TRANSACTION_clearPortForwardingrRule:I = 0x61

.field static final TRANSACTION_connectFromRemoteDevice:I = 0x2

.field static final TRANSACTION_deAuthMac:I = 0x34

.field static final TRANSACTION_dhcpDisable:I = 0x45

.field static final TRANSACTION_dhcpEnable:I = 0x44

.field static final TRANSACTION_dhcpRestart:I = 0x42

.field static final TRANSACTION_disable:I = 0xc

.field static final TRANSACTION_disableNatMasquerade:I = 0x77

.field static final TRANSACTION_disconnectDevice:I = 0x3e

.field static final TRANSACTION_enable:I = 0x6

.field static final TRANSACTION_get802Mode:I = 0x25

.field static final TRANSACTION_getAssocIPAddress:I = 0x52

.field static final TRANSACTION_getAssocIpHostname:I = 0x53

.field static final TRANSACTION_getAssocListCount:I = 0x5c

.field static final TRANSACTION_getAuthentication:I = 0x15

.field static final TRANSACTION_getBroadcastChannel:I = 0x27

.field static final TRANSACTION_getBroadcastSSID:I = 0x13

.field static final TRANSACTION_getDNS1Sample:I = 0x71

.field static final TRANSACTION_getDNS2Sample:I = 0x73

.field static final TRANSACTION_getDataUsageTime:I = 0x5b

.field static final TRANSACTION_getDhcpDNS1:I = 0x50

.field static final TRANSACTION_getDhcpDNS2:I = 0x51

.field static final TRANSACTION_getDhcpEndIp:I = 0x4d

.field static final TRANSACTION_getDhcpGateway:I = 0x4e

.field static final TRANSACTION_getDhcpMask:I = 0x4f

.field static final TRANSACTION_getDhcpStartIp:I = 0x4c

.field static final TRANSACTION_getEncryption:I = 0x17

.field static final TRANSACTION_getEndIPSample:I = 0x6b

.field static final TRANSACTION_getFrequency:I = 0x79

.field static final TRANSACTION_getGatewaySample:I = 0x6f

.field static final TRANSACTION_getIPAddress:I = 0xf

.field static final TRANSACTION_getMacAddress:I = 0xe

.field static final TRANSACTION_getMacFilterByIndex:I = 0x33

.field static final TRANSACTION_getMacFilterCount:I = 0x31

.field static final TRANSACTION_getMacFilterMode:I = 0x2f

.field static final TRANSACTION_getMaxClients:I = 0x2d

.field static final TRANSACTION_getMobileHotspotState:I = 0x5

.field static final TRANSACTION_getName:I = 0x10

.field static final TRANSACTION_getNetInterface:I = 0x59

.field static final TRANSACTION_getPortFilteringList:I = 0x60

.field static final TRANSACTION_getPortforwardingList:I = 0x65

.field static final TRANSACTION_getSoftapIsolation:I = 0x76

.field static final TRANSACTION_getStartIPSample:I = 0x69

.field static final TRANSACTION_getStaticIp:I = 0x55

.field static final TRANSACTION_getStaticSubnet:I = 0x57

.field static final TRANSACTION_getSubnetMaskSample:I = 0x6d

.field static final TRANSACTION_getWEPKey1:I = 0x19

.field static final TRANSACTION_getWEPKey2:I = 0x1b

.field static final TRANSACTION_getWEPKey3:I = 0x1d

.field static final TRANSACTION_getWEPKey4:I = 0x1f

.field static final TRANSACTION_getWEPKeyIndex:I = 0x22

.field static final TRANSACTION_getWPAKey:I = 0x21

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_initIpTable:I = 0x5d

.field static final TRANSACTION_insertDeniedList:I = 0x35

.field static final TRANSACTION_isDhcpEnabled:I = 0x43

.field static final TRANSACTION_isEnabled:I = 0x4

.field static final TRANSACTION_isMhsDataAvailable:I = 0xb

.field static final TRANSACTION_isUsed:I = 0x3

.field static final TRANSACTION_listAllowedDevices:I = 0x38

.field static final TRANSACTION_listConnectedDevices:I = 0x3b

.field static final TRANSACTION_listConnectedDevicesname:I = 0x3c

.field static final TRANSACTION_mhsCdmaDataConnect:I = 0xa

.field static final TRANSACTION_mhsCdmaDataDisconnect:I = 0x9

.field static final TRANSACTION_mhsCdmaDataRestart:I = 0x8

.field static final TRANSACTION_removeAllAllowedDevices:I = 0x3a

.field static final TRANSACTION_removeAllConnectedDevices:I = 0x3d

.field static final TRANSACTION_removeAllowedDevice:I = 0x39

.field static final TRANSACTION_removeAlltheList:I = 0x37

.field static final TRANSACTION_removeDeniedList:I = 0x36

.field static final TRANSACTION_set802Mode:I = 0x24

.field static final TRANSACTION_setAllowAll:I = 0x3f

.field static final TRANSACTION_setAuthentication:I = 0x14

.field static final TRANSACTION_setBatteryUsageTime:I = 0x5a

.field static final TRANSACTION_setBroadcastChannel:I = 0x26

.field static final TRANSACTION_setBroadcastSSID:I = 0x12

.field static final TRANSACTION_setCountryCode:I = 0x74

.field static final TRANSACTION_setDNS1Sample:I = 0x70

.field static final TRANSACTION_setDNS2Sample:I = 0x72

.field static final TRANSACTION_setDhcpDNS1:I = 0x4a

.field static final TRANSACTION_setDhcpDNS2:I = 0x4b

.field static final TRANSACTION_setDhcpEndIp:I = 0x47

.field static final TRANSACTION_setDhcpGateway:I = 0x48

.field static final TRANSACTION_setDhcpMask:I = 0x49

.field static final TRANSACTION_setDhcpStartIp:I = 0x46

.field static final TRANSACTION_setEmergencyCall:I = 0x67

.field static final TRANSACTION_setEncryption:I = 0x16

.field static final TRANSACTION_setEndIPSample:I = 0x6a

.field static final TRANSACTION_setForward:I = 0x63

.field static final TRANSACTION_setFrequency:I = 0x78

.field static final TRANSACTION_setGatewaySample:I = 0x6e

.field static final TRANSACTION_setMacFilterByIndex:I = 0x32

.field static final TRANSACTION_setMacFilterCount:I = 0x30

.field static final TRANSACTION_setMacFilterMode:I = 0x2e

.field static final TRANSACTION_setMacaddracl:I = 0x28

.field static final TRANSACTION_setMasquerade:I = 0x62

.field static final TRANSACTION_setMaxAssoc:I = 0x2a

.field static final TRANSACTION_setMaxClients:I = 0x29

.field static final TRANSACTION_setMobileHotspotState:I = 0xd

.field static final TRANSACTION_setMssChange:I = 0x66

.field static final TRANSACTION_setName:I = 0x11

.field static final TRANSACTION_setNetInterface:I = 0x58

.field static final TRANSACTION_setPortFiltering:I = 0x5f

.field static final TRANSACTION_setPortforwarding:I = 0x64

.field static final TRANSACTION_setSoftapIsolation:I = 0x75

.field static final TRANSACTION_setStartIPSample:I = 0x68

.field static final TRANSACTION_setStaticIp:I = 0x54

.field static final TRANSACTION_setStaticSubnet:I = 0x56

.field static final TRANSACTION_setSubnetMaskSample:I = 0x6c

.field static final TRANSACTION_setTxPower:I = 0x7a

.field static final TRANSACTION_setWEPKey1:I = 0x18

.field static final TRANSACTION_setWEPKey2:I = 0x1a

.field static final TRANSACTION_setWEPKey3:I = 0x1c

.field static final TRANSACTION_setWEPKey4:I = 0x1e

.field static final TRANSACTION_setWEPKeyIndex:I = 0x23

.field static final TRANSACTION_setWPAKey:I = 0x20

.field static final TRANSACTION_updateAllowedDevice:I = 0x41


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p0, p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 1161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->init()Z

    move-result v4

    .line 52
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v4    # "_result":Z
    :sswitch_2
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->connectFromRemoteDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 64
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_3
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->isUsed()Z

    move-result v4

    .line 72
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->isEnabled()Z

    move-result v4

    .line 80
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v4    # "_result":Z
    :sswitch_5
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getMobileHotspotState()I

    move-result v4

    .line 88
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v4    # "_result":I
    :sswitch_6
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v0, v6

    .line 97
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->enable(Z)Z

    move-result v4

    .line 98
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v4, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_5
    move v0, v5

    .line 96
    goto :goto_1

    .line 104
    :sswitch_7
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->clearNATRule()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 111
    :sswitch_8
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->mhsCdmaDataRestart()Z

    move-result v4

    .line 113
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v4, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->mhsCdmaDataDisconnect()Z

    move-result v4

    .line 121
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v4, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 127
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->mhsCdmaDataConnect()Z

    move-result v4

    .line 129
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v4, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    .end local v4    # "_result":Z
    :sswitch_b
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->isMhsDataAvailable()Z

    move-result v4

    .line 137
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v4, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v4    # "_result":Z
    :sswitch_c
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    move v0, v6

    .line 146
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->disable(Z)Z

    move-result v4

    .line 147
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v4, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_b
    move v0, v5

    .line 145
    goto :goto_2

    .line 153
    :sswitch_d
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setMobileHotspotState(I)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 162
    .end local v0    # "_arg0":I
    :sswitch_e
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    .line 172
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getName()Ljava/lang/String;

    move-result-object v4

    .line 180
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setName(Ljava/lang/String;)Z

    move-result v4

    .line 190
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v4, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_12
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setBroadcastSSID(I)I

    move-result v4

    .line 200
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_13
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getBroadcastSSID()I

    move-result v4

    .line 208
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v4    # "_result":I
    :sswitch_14
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setAuthentication(I)Z

    move-result v4

    .line 218
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v4, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 224
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_15
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getAuthentication()I

    move-result v4

    .line 226
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 232
    .end local v4    # "_result":I
    :sswitch_16
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 235
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setEncryption(I)Z

    move-result v4

    .line 236
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v4, :cond_e

    move v5, v6

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 242
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_17
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getEncryption()I

    move-result v4

    .line 244
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 250
    .end local v4    # "_result":I
    :sswitch_18
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setWEPKey1(Ljava/lang/String;)Z

    move-result v4

    .line 254
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v4, :cond_f

    move v5, v6

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 260
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_19
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getWEPKey1()Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_1a
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setWEPKey2(Ljava/lang/String;)Z

    move-result v4

    .line 272
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v4, :cond_10

    move v5, v6

    :cond_10
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 278
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_1b
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getWEPKey2()Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_1c
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setWEPKey3(Ljava/lang/String;)Z

    move-result v4

    .line 290
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v4, :cond_11

    move v5, v6

    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 296
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_1d
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getWEPKey3()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setWEPKey4(Ljava/lang/String;)Z

    move-result v4

    .line 308
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v4, :cond_12

    move v5, v6

    :cond_12
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 314
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_1f
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getWEPKey4()Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_20
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setWPAKey(Ljava/lang/String;)Z

    move-result v4

    .line 326
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v4, :cond_13

    move v5, v6

    :cond_13
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 332
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_21
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getWPAKey()Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getWEPKeyIndex()I

    move-result v4

    .line 342
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 348
    .end local v4    # "_result":I
    :sswitch_23
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 351
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setWEPKeyIndex(I)Z

    move-result v4

    .line 352
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v4, :cond_14

    move v5, v6

    :cond_14
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 358
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_24
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 361
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->set802Mode(I)Z

    move-result v4

    .line 362
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    if-eqz v4, :cond_15

    move v5, v6

    :cond_15
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 368
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_25
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->get802Mode()I

    move-result v4

    .line 370
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 376
    .end local v4    # "_result":I
    :sswitch_26
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 379
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setBroadcastChannel(I)Z

    move-result v4

    .line 380
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    if-eqz v4, :cond_16

    move v5, v6

    :cond_16
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 386
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_27
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getBroadcastChannel()I

    move-result v4

    .line 388
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 394
    .end local v4    # "_result":I
    :sswitch_28
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 397
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setMacaddracl(I)Z

    move-result v4

    .line 398
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    if-eqz v4, :cond_17

    move v5, v6

    :cond_17
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 404
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_29
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 407
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setMaxClients(I)Z

    move-result v4

    .line 408
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v4, :cond_18

    move v5, v6

    :cond_18
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 414
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_2a
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 417
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setMaxAssoc(I)Z

    move-result v4

    .line 418
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    if-eqz v4, :cond_19

    move v5, v6

    :cond_19
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 424
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_2b
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 429
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->addMacFilterAllowList(Ljava/lang/String;I)Z

    move-result v4

    .line 430
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v4, :cond_1a

    move v5, v6

    :cond_1a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 436
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_2c
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 440
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 441
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->addMacFilterDenyList(Ljava/lang/String;I)Z

    move-result v4

    .line 442
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v4, :cond_1b

    move v5, v6

    :cond_1b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 448
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_2d
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getMaxClients()I

    move-result v4

    .line 450
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 456
    .end local v4    # "_result":I
    :sswitch_2e
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 459
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setMacFilterMode(I)Z

    move-result v4

    .line 460
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    if-eqz v4, :cond_1c

    move v5, v6

    :cond_1c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 466
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_2f
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getMacFilterMode()I

    move-result v4

    .line 468
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 474
    .end local v4    # "_result":I
    :sswitch_30
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 477
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setMacFilterCount(I)Z

    move-result v4

    .line 478
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    if-eqz v4, :cond_1d

    move v5, v6

    :cond_1d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 484
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_31
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getMacFilterCount()I

    move-result v4

    .line 486
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 492
    .end local v4    # "_result":I
    :sswitch_32
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 496
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setMacFilterByIndex(ILjava/lang/String;)Z

    move-result v4

    .line 498
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    if-eqz v4, :cond_1e

    move v5, v6

    :cond_1e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 504
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_33
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 507
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getMacFilterByIndex(I)Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 514
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_34
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->deAuthMac(Ljava/lang/String;)Z

    move-result v4

    .line 518
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v4, :cond_1f

    move v5, v6

    :cond_1f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 524
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_35
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 527
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->insertDeniedList(Ljava/lang/String;)Z

    move-result v4

    .line 528
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    if-eqz v4, :cond_20

    move v5, v6

    :cond_20
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 534
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_36
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 537
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->removeDeniedList(Ljava/lang/String;)Z

    move-result v4

    .line 538
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    if-eqz v4, :cond_21

    move v5, v6

    :cond_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 544
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_37
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->removeAlltheList()Z

    move-result v4

    .line 546
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    if-eqz v4, :cond_22

    move v5, v6

    :cond_22
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 552
    .end local v4    # "_result":Z
    :sswitch_38
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->listAllowedDevices()[Ljava/lang/String;

    move-result-object v4

    .line 554
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 560
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_39
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->removeAllowedDevice(Ljava/lang/String;)Z

    move-result v4

    .line 564
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    if-eqz v4, :cond_23

    move v5, v6

    :cond_23
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 570
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_3a
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->removeAllAllowedDevices()Z

    move-result v4

    .line 572
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    if-eqz v4, :cond_24

    move v5, v6

    :cond_24
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 578
    .end local v4    # "_result":Z
    :sswitch_3b
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->listConnectedDevices()[Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 586
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_3c
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->listConnectedDevicesname()[Ljava/lang/String;

    move-result-object v4

    .line 588
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_3d
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->removeAllConnectedDevices()Z

    move-result v4

    .line 596
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    if-eqz v4, :cond_25

    move v5, v6

    :cond_25
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 602
    .end local v4    # "_result":Z
    :sswitch_3e
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 605
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->disconnectDevice(Ljava/lang/String;)Z

    move-result v4

    .line 606
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    if-eqz v4, :cond_26

    move v5, v6

    :cond_26
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 612
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_3f
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_28

    move v0, v6

    .line 615
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setAllowAll(Z)Z

    move-result v4

    .line 616
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    if-eqz v4, :cond_27

    move v5, v6

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_28
    move v0, v5

    .line 614
    goto :goto_3

    .line 622
    :sswitch_40
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 628
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 629
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->addMacFilter(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 630
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    if-eqz v4, :cond_29

    move v5, v6

    :cond_29
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 636
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_41
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 640
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 642
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->updateAllowedDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 644
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    if-eqz v4, :cond_2a

    move v5, v6

    :cond_2a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 650
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_42
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->dhcpRestart()Z

    move-result v4

    .line 652
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    if-eqz v4, :cond_2b

    move v5, v6

    :cond_2b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 658
    .end local v4    # "_result":Z
    :sswitch_43
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->isDhcpEnabled()Z

    move-result v4

    .line 660
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v4, :cond_2c

    move v5, v6

    :cond_2c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 666
    .end local v4    # "_result":Z
    :sswitch_44
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2e

    move v0, v6

    .line 669
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->dhcpEnable(Z)Z

    move-result v4

    .line 670
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v4, :cond_2d

    move v5, v6

    :cond_2d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_2e
    move v0, v5

    .line 668
    goto :goto_4

    .line 676
    :sswitch_45
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_30

    move v0, v6

    .line 679
    .restart local v0    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->dhcpDisable(Z)Z

    move-result v4

    .line 680
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    if-eqz v4, :cond_2f

    move v5, v6

    :cond_2f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_30
    move v0, v5

    .line 678
    goto :goto_5

    .line 686
    :sswitch_46
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setDhcpStartIp(Ljava/lang/String;)Z

    move-result v4

    .line 690
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    if-eqz v4, :cond_31

    move v5, v6

    :cond_31
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 696
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_47
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 699
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setDhcpEndIp(Ljava/lang/String;)Z

    move-result v4

    .line 700
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    if-eqz v4, :cond_32

    move v5, v6

    :cond_32
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 706
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_48
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 709
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setDhcpGateway(Ljava/lang/String;)Z

    move-result v4

    .line 710
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    if-eqz v4, :cond_33

    move v5, v6

    :cond_33
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 716
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_49
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 719
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setDhcpMask(Ljava/lang/String;)Z

    move-result v4

    .line 720
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    if-eqz v4, :cond_34

    move v5, v6

    :cond_34
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 726
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_4a
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 729
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setDhcpDNS1(Ljava/lang/String;)Z

    move-result v4

    .line 730
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    if-eqz v4, :cond_35

    move v5, v6

    :cond_35
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 736
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_4b
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 739
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setDhcpDNS2(Ljava/lang/String;)Z

    move-result v4

    .line 740
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    if-eqz v4, :cond_36

    move v5, v6

    :cond_36
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 746
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_4c
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getDhcpStartIp()Ljava/lang/String;

    move-result-object v4

    .line 748
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 754
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_4d
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getDhcpEndIp()Ljava/lang/String;

    move-result-object v4

    .line 756
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 762
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_4e
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getDhcpGateway()Ljava/lang/String;

    move-result-object v4

    .line 764
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 770
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_4f
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getDhcpMask()Ljava/lang/String;

    move-result-object v4

    .line 772
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 778
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_50
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getDhcpDNS1()Ljava/lang/String;

    move-result-object v4

    .line 780
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 786
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_51
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getDhcpDNS2()Ljava/lang/String;

    move-result-object v4

    .line 788
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 794
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_52
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 797
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 798
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 804
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_53
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 807
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getAssocIpHostname(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 808
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 814
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_54
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 817
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setStaticIp(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 823
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_55
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getStaticIp()Ljava/lang/String;

    move-result-object v4

    .line 825
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 831
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_56
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 834
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setStaticSubnet(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 840
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_57
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getStaticSubnet()Ljava/lang/String;

    move-result-object v4

    .line 842
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 848
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_58
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 851
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setNetInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 857
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_59
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getNetInterface()Ljava/lang/String;

    move-result-object v4

    .line 859
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 865
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_5a
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 868
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setBatteryUsageTime(I)Z

    move-result v4

    .line 869
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    if-eqz v4, :cond_37

    move v5, v6

    :cond_37
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 875
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_5b
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getDataUsageTime()I

    move-result v4

    .line 877
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 883
    .end local v4    # "_result":I
    :sswitch_5c
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getAssocListCount()I

    move-result v4

    .line 885
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 891
    .end local v4    # "_result":I
    :sswitch_5d
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->initIpTable()V

    .line 893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 898
    :sswitch_5e
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->clearPortFilterRule()V

    .line 900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 905
    :sswitch_5f
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 909
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 911
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 913
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 914
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setPortFiltering(IIII)Z

    move-result v4

    .line 915
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    if-eqz v4, :cond_38

    move v5, v6

    :cond_38
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 921
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :sswitch_60
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getPortFilteringList()[Ljava/lang/String;

    move-result-object v4

    .line 923
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 929
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_61
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->clearPortForwardingrRule()V

    .line 931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 936
    :sswitch_62
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setMasquerade()Z

    move-result v4

    .line 938
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    if-eqz v4, :cond_39

    move v5, v6

    :cond_39
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 944
    .end local v4    # "_result":Z
    :sswitch_63
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setForward()Z

    move-result v4

    .line 946
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    if-eqz v4, :cond_3a

    move v5, v6

    :cond_3a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 952
    .end local v4    # "_result":Z
    :sswitch_64
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 956
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 958
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 959
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setPortforwarding(ILjava/lang/String;I)Z

    move-result v4

    .line 960
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    if-eqz v4, :cond_3b

    move v5, v6

    :cond_3b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 966
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_65
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getPortforwardingList()[Ljava/lang/String;

    move-result-object v4

    .line 968
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 974
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_66
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setMssChange()Z

    move-result v4

    .line 976
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    if-eqz v4, :cond_3c

    move v5, v6

    :cond_3c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 982
    .end local v4    # "_result":Z
    :sswitch_67
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3d

    move v0, v6

    .line 985
    .local v0, "_arg0":Z
    :goto_6
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setEmergencyCall(Z)V

    .line 986
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_3d
    move v0, v5

    .line 984
    goto :goto_6

    .line 991
    :sswitch_68
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setStartIPSample(Ljava/lang/String;)I

    move-result v4

    .line 995
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1001
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_69
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getStartIPSample()Ljava/lang/String;

    move-result-object v4

    .line 1003
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1009
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_6a
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1012
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setEndIPSample(Ljava/lang/String;)I

    move-result v4

    .line 1013
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1019
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_6b
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getEndIPSample()Ljava/lang/String;

    move-result-object v4

    .line 1021
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1027
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_6c
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setSubnetMaskSample(Ljava/lang/String;)I

    move-result v4

    .line 1031
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1037
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_6d
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getSubnetMaskSample()Ljava/lang/String;

    move-result-object v4

    .line 1039
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1045
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_6e
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1048
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setGatewaySample(Ljava/lang/String;)I

    move-result v4

    .line 1049
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1055
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_6f
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getGatewaySample()Ljava/lang/String;

    move-result-object v4

    .line 1057
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1063
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_70
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1066
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setDNS1Sample(Ljava/lang/String;)I

    move-result v4

    .line 1067
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1073
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_71
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getDNS1Sample()Ljava/lang/String;

    move-result-object v4

    .line 1075
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1081
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_72
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1084
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setDNS2Sample(Ljava/lang/String;)I

    move-result v4

    .line 1085
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1091
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_73
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getDNS2Sample()Ljava/lang/String;

    move-result-object v4

    .line 1093
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1099
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_74
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1102
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setCountryCode(I)I

    move-result v4

    .line 1103
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1109
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_75
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3f

    move v0, v6

    .line 1112
    .local v0, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setSoftapIsolation(Z)Z

    move-result v4

    .line 1113
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    if-eqz v4, :cond_3e

    move v5, v6

    :cond_3e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_3f
    move v0, v5

    .line 1111
    goto :goto_7

    .line 1119
    :sswitch_76
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getSoftapIsolation()Z

    move-result v4

    .line 1121
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    if-eqz v4, :cond_40

    move v5, v6

    :cond_40
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1127
    .end local v4    # "_result":Z
    :sswitch_77
    const-string v7, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->disableNatMasquerade()Z

    move-result v4

    .line 1129
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    if-eqz v4, :cond_41

    move v5, v6

    :cond_41
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1135
    .end local v4    # "_result":Z
    :sswitch_78
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1138
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setFrequency(I)V

    .line 1139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1144
    .end local v0    # "_arg0":I
    :sswitch_79
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->getFrequency()I

    move-result v4

    .line 1146
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1152
    .end local v4    # "_result":I
    :sswitch_7a
    const-string v5, "com.lge.wifi.impl.mobilehotspot.IMobileHotspot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1155
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->setTxPower(I)I

    move-result v4

    .line 1156
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
