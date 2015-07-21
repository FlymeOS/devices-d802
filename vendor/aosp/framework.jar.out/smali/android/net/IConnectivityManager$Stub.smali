.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_addVpnAddress:I = 0x5b

.field static final TRANSACTION_captivePortalCheckCompleted:I = 0x2c

.field static final TRANSACTION_checkLteConnectState:I = 0x48

.field static final TRANSACTION_checkMobileProvisioning:I = 0x2f

.field static final TRANSACTION_checkVzwNetType:I = 0x45

.field static final TRANSACTION_ePDGHandOverStatus:I = 0x53

.field static final TRANSACTION_ePDGPrefTechdone:I = 0x52

.field static final TRANSACTION_ePDGlisten:I = 0x50

.field static final TRANSACTION_establishVpn:I = 0x27

.field static final TRANSACTION_findConnectionTypeForIface:I = 0x2e

.field static final TRANSACTION_getActiveLinkProperties:I = 0xa

.field static final TRANSACTION_getActiveLinkQualityInfo:I = 0x33

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x1

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x2

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0xf

.field static final TRANSACTION_getAllLinkQualityInfo:I = 0x34

.field static final TRANSACTION_getAllNetworkInfo:I = 0x5

.field static final TRANSACTION_getAllNetworkState:I = 0xe

.field static final TRANSACTION_getAllNetworks:I = 0x7

.field static final TRANSACTION_getDebugInfo:I = 0x56

.field static final TRANSACTION_getGlobalProxy:I = 0x21

.field static final TRANSACTION_getIPpcscAddress:I = 0x58

.field static final TRANSACTION_getLastTetherError:I = 0x15

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x2a

.field static final TRANSACTION_getLinkProperties:I = 0xc

.field static final TRANSACTION_getLinkPropertiesForType:I = 0xb

.field static final TRANSACTION_getLinkQualityInfo:I = 0x32

.field static final TRANSACTION_getLteRssi:I = 0x5a

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x30

.field static final TRANSACTION_getMobileRedirectedProvisioningUrl:I = 0x31

.field static final TRANSACTION_getNetPrefer:I = 0x59

.field static final TRANSACTION_getNetworkCapabilities:I = 0xd

.field static final TRANSACTION_getNetworkForType:I = 0x6

.field static final TRANSACTION_getNetworkInfo:I = 0x3

.field static final TRANSACTION_getNetworkInfoForNetwork:I = 0x4

.field static final TRANSACTION_getNetworkStatus_for_kt_kaf:I = 0x5d

.field static final TRANSACTION_getPcscfAddress:I = 0x57

.field static final TRANSACTION_getProvisioningOrActiveNetworkInfo:I = 0x8

.field static final TRANSACTION_getProxy:I = 0x23

.field static final TRANSACTION_getRestoreDefaultNetworkDelay:I = 0x4d

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x1d

.field static final TRANSACTION_getTetherableIfaces:I = 0x17

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1b

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x1c

.field static final TRANSACTION_getTetheredDhcpRanges:I = 0x1a

.field static final TRANSACTION_getTetheredIfacePairs:I = 0x5e

.field static final TRANSACTION_getTetheredIfaces:I = 0x18

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x19

.field static final TRANSACTION_getVpnConfig:I = 0x28

.field static final TRANSACTION_isActiveNetworkMetered:I = 0x10

.field static final TRANSACTION_isContainVzwAppApn_MetaTag:I = 0x43

.field static final TRANSACTION_isNetworkSupported:I = 0x9

.field static final TRANSACTION_isRemainRadio:I = 0x4b

.field static final TRANSACTION_isSignedFromVZW:I = 0x44

.field static final TRANSACTION_isSystemImage:I = 0x42

.field static final TRANSACTION_isTetheringSupported:I = 0x16

.field static final TRANSACTION_listenForNetwork:I = 0x3c

.field static final TRANSACTION_mobileDataPdpReset:I = 0x4c

.field static final TRANSACTION_notifyEPDGCallResult:I = 0x54

.field static final TRANSACTION_notifyEPDGPDNStatus:I = 0x55

.field static final TRANSACTION_pendingListenForNetwork:I = 0x3d

.field static final TRANSACTION_pendingRequestForNetwork:I = 0x3b

.field static final TRANSACTION_prepareVpn:I = 0x25

.field static final TRANSACTION_registerNetworkAgent:I = 0x39

.field static final TRANSACTION_registerNetworkFactory:I = 0x37

.field static final TRANSACTION_releaseNetworkRequest:I = 0x3e

.field static final TRANSACTION_removeNotification:I = 0x4a

.field static final TRANSACTION_removeVpnAddress:I = 0x5c

.field static final TRANSACTION_reportBadNetwork:I = 0x20

.field static final TRANSACTION_reportInetCondition:I = 0x1f

.field static final TRANSACTION_requestNetwork:I = 0x3a

.field static final TRANSACTION_requestRemRouteToHostAddress:I = 0x40

.field static final TRANSACTION_requestRemoveImsRoute:I = 0x41

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x11

.field static final TRANSACTION_setAirplaneMode:I = 0x36

.field static final TRANSACTION_setDataBlock:I = 0x49

.field static final TRANSACTION_setDataConnectionMessanger:I = 0x3f

.field static final TRANSACTION_setDataDependency:I = 0x24

.field static final TRANSACTION_setFQDN:I = 0x51

.field static final TRANSACTION_setGlobalProxy:I = 0x22

.field static final TRANSACTION_setLteMobileDataEnabled:I = 0x47

.field static final TRANSACTION_setPolicyDataEnable:I = 0x12

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x35

.field static final TRANSACTION_setRoamingDataEnabled_RILCMD:I = 0x46

.field static final TRANSACTION_setUsbTethering:I = 0x1e

.field static final TRANSACTION_setVpnPackageAuthorization:I = 0x26

.field static final TRANSACTION_startLegacyVpn:I = 0x29

.field static final TRANSACTION_startusingEPDGFeature:I = 0x4e

.field static final TRANSACTION_stopusingEPDGFeature:I = 0x4f

.field static final TRANSACTION_supplyMessenger:I = 0x2d

.field static final TRANSACTION_tether:I = 0x13

.field static final TRANSACTION_unregisterNetworkFactory:I = 0x38

.field static final TRANSACTION_untether:I = 0x14

.field static final TRANSACTION_updateLockdownVpn:I = 0x2b


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/IConnectivityManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/IConnectivityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1238
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    .line 54
    .local v13, "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v13, :cond_0

    .line 56
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 66
    .end local v13    # "_result":Landroid/net/NetworkInfo;
    :sswitch_2
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 69
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 70
    .restart local v13    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v13, :cond_1

    .line 72
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 82
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Landroid/net/NetworkInfo;
    :sswitch_3
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 85
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 86
    .restart local v13    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v13, :cond_2

    .line 88
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    :goto_3
    const/4 v1, 0x1

    goto :goto_0

    .line 92
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 98
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Landroid/net/NetworkInfo;
    :sswitch_4
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 106
    .local v2, "_arg0":Landroid/net/Network;
    :goto_4
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfoForNetwork(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 107
    .restart local v13    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v13, :cond_4

    .line 109
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 115
    :goto_5
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 104
    .end local v2    # "_arg0":Landroid/net/Network;
    .end local v13    # "_result":Landroid/net/NetworkInfo;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/Network;
    goto :goto_4

    .line 113
    .restart local v13    # "_result":Landroid/net/NetworkInfo;
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 119
    .end local v2    # "_arg0":Landroid/net/Network;
    .end local v13    # "_result":Landroid/net/NetworkInfo;
    :sswitch_5
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v13

    .line 121
    .local v13, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 123
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 127
    .end local v13    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_6
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v13

    .line 131
    .local v13, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v13, :cond_5

    .line 133
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 137
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 143
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Landroid/net/Network;
    :sswitch_7
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworks()[Landroid/net/Network;

    move-result-object v13

    .line 145
    .local v13, "_result":[Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 147
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 151
    .end local v13    # "_result":[Landroid/net/Network;
    :sswitch_8
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    .line 153
    .local v13, "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v13, :cond_6

    .line 155
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 161
    :goto_7
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 159
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 165
    .end local v13    # "_result":Landroid/net/NetworkInfo;
    :sswitch_9
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 168
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v13

    .line 169
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v13, :cond_7

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 170
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 175
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_a
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v13

    .line 177
    .local v13, "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v13, :cond_8

    .line 179
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    :goto_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 183
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 189
    .end local v13    # "_result":Landroid/net/LinkProperties;
    :sswitch_b
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v13

    .line 193
    .restart local v13    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v13, :cond_9

    .line 195
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 201
    :goto_a
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 199
    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 205
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Landroid/net/LinkProperties;
    :sswitch_c
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 208
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 213
    .local v2, "_arg0":Landroid/net/Network;
    :goto_b
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v13

    .line 214
    .restart local v13    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v13, :cond_b

    .line 216
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 222
    :goto_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 211
    .end local v2    # "_arg0":Landroid/net/Network;
    .end local v13    # "_result":Landroid/net/LinkProperties;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/Network;
    goto :goto_b

    .line 220
    .restart local v13    # "_result":Landroid/net/LinkProperties;
    :cond_b
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 226
    .end local v2    # "_arg0":Landroid/net/Network;
    .end local v13    # "_result":Landroid/net/LinkProperties;
    :sswitch_d
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 229
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 234
    .restart local v2    # "_arg0":Landroid/net/Network;
    :goto_d
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v13

    .line 235
    .local v13, "_result":Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v13, :cond_d

    .line 237
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    .line 243
    :goto_e
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 232
    .end local v2    # "_arg0":Landroid/net/Network;
    .end local v13    # "_result":Landroid/net/NetworkCapabilities;
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/Network;
    goto :goto_d

    .line 241
    .restart local v13    # "_result":Landroid/net/NetworkCapabilities;
    :cond_d
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 247
    .end local v2    # "_arg0":Landroid/net/Network;
    .end local v13    # "_result":Landroid/net/NetworkCapabilities;
    :sswitch_e
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v13

    .line 249
    .local v13, "_result":[Landroid/net/NetworkState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 251
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 255
    .end local v13    # "_result":[Landroid/net/NetworkState;
    :sswitch_f
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v13

    .line 257
    .local v13, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v13, :cond_e

    .line 259
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 265
    :goto_f
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 263
    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 269
    .end local v13    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_10
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v13

    .line 271
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v13, :cond_f

    const/4 v1, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 272
    :cond_f
    const/4 v1, 0x0

    goto :goto_10

    .line 277
    .end local v13    # "_result":Z
    :sswitch_11
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 281
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 282
    .local v3, "_arg1":[B
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[B)Z

    move-result v13

    .line 283
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v13, :cond_10

    const/4 v1, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 284
    :cond_10
    const/4 v1, 0x0

    goto :goto_11

    .line 289
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v13    # "_result":Z
    :sswitch_12
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v3, 0x1

    .line 294
    .local v3, "_arg1":Z
    :goto_12
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setPolicyDataEnable(IZ)V

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 293
    .end local v3    # "_arg1":Z
    :cond_11
    const/4 v3, 0x0

    goto :goto_12

    .line 300
    .end local v2    # "_arg0":I
    :sswitch_13
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v13

    .line 304
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 310
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_14
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v13

    .line 314
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 320
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_15
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 323
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v13

    .line 324
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 330
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_16
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v13

    .line 332
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    if-eqz v13, :cond_12

    const/4 v1, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 333
    :cond_12
    const/4 v1, 0x0

    goto :goto_13

    .line 338
    .end local v13    # "_result":Z
    :sswitch_17
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v13

    .line 340
    .local v13, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 342
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 346
    .end local v13    # "_result":[Ljava/lang/String;
    :sswitch_18
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v13

    .line 348
    .restart local v13    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 350
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 354
    .end local v13    # "_result":[Ljava/lang/String;
    :sswitch_19
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v13

    .line 356
    .restart local v13    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 358
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 362
    .end local v13    # "_result":[Ljava/lang/String;
    :sswitch_1a
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v13

    .line 364
    .restart local v13    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 366
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 370
    .end local v13    # "_result":[Ljava/lang/String;
    :sswitch_1b
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v13

    .line 372
    .restart local v13    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 374
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 378
    .end local v13    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v13

    .line 380
    .restart local v13    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 382
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 386
    .end local v13    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v13

    .line 388
    .restart local v13    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 390
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 394
    .end local v13    # "_result":[Ljava/lang/String;
    :sswitch_1e
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x1

    .line 397
    .local v2, "_arg0":Z
    :goto_14
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v13

    .line 398
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 396
    .end local v2    # "_arg0":Z
    .end local v13    # "_result":I
    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .line 404
    :sswitch_1f
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 408
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 409
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 415
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_20
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    .line 418
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 423
    .local v2, "_arg0":Landroid/net/Network;
    :goto_15
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->reportBadNetwork(Landroid/net/Network;)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 421
    .end local v2    # "_arg0":Landroid/net/Network;
    :cond_14
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/Network;
    goto :goto_15

    .line 429
    .end local v2    # "_arg0":Landroid/net/Network;
    :sswitch_21
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v13

    .line 431
    .local v13, "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    if-eqz v13, :cond_15

    .line 433
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 439
    :goto_16
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 437
    :cond_15
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 443
    .end local v13    # "_result":Landroid/net/ProxyInfo;
    :sswitch_22
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    .line 446
    sget-object v1, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ProxyInfo;

    .line 451
    .local v2, "_arg0":Landroid/net/ProxyInfo;
    :goto_17
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 449
    .end local v2    # "_arg0":Landroid/net/ProxyInfo;
    :cond_16
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/ProxyInfo;
    goto :goto_17

    .line 457
    .end local v2    # "_arg0":Landroid/net/ProxyInfo;
    :sswitch_23
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProxy()Landroid/net/ProxyInfo;

    move-result-object v13

    .line 459
    .restart local v13    # "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v13, :cond_17

    .line 461
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 467
    :goto_18
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 465
    :cond_17
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 471
    .end local v13    # "_result":Landroid/net/ProxyInfo;
    :sswitch_24
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 475
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v3, 0x1

    .line 476
    .local v3, "_arg1":Z
    :goto_19
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setDataDependency(IZ)V

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 475
    .end local v3    # "_arg1":Z
    :cond_18
    const/4 v3, 0x0

    goto :goto_19

    .line 482
    .end local v2    # "_arg0":I
    :sswitch_25
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 488
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    if-eqz v13, :cond_19

    const/4 v1, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 489
    :cond_19
    const/4 v1, 0x0

    goto :goto_1a

    .line 494
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_26
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v2, 0x1

    .line 497
    .local v2, "_arg0":Z
    :goto_1b
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setVpnPackageAuthorization(Z)V

    .line 498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 496
    .end local v2    # "_arg0":Z
    :cond_1a
    const/4 v2, 0x0

    goto :goto_1b

    .line 503
    :sswitch_27
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 506
    sget-object v1, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnConfig;

    .line 511
    .local v2, "_arg0":Lcom/android/internal/net/VpnConfig;
    :goto_1c
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 512
    .local v13, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    if-eqz v13, :cond_1c

    .line 514
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 520
    :goto_1d
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 509
    .end local v2    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v13    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_1b
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_1c

    .line 518
    .restart local v13    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_1c
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 524
    .end local v2    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v13    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_28
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v13

    .line 526
    .local v13, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    if-eqz v13, :cond_1d

    .line 528
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 534
    :goto_1e
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 532
    :cond_1d
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 538
    .end local v13    # "_result":Lcom/android/internal/net/VpnConfig;
    :sswitch_29
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 541
    sget-object v1, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 546
    .local v2, "_arg0":Lcom/android/internal/net/VpnProfile;
    :goto_1f
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 544
    .end local v2    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :cond_1e
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_1f

    .line 552
    .end local v2    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :sswitch_2a
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v13

    .line 554
    .local v13, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    if-eqz v13, :cond_1f

    .line 556
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 562
    :goto_20
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 560
    :cond_1f
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 566
    .end local v13    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_2b
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    move-result v13

    .line 568
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    if-eqz v13, :cond_20

    const/4 v1, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 569
    :cond_20
    const/4 v1, 0x0

    goto :goto_21

    .line 574
    .end local v13    # "_result":Z
    :sswitch_2c
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    .line 577
    sget-object v1, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 583
    .local v2, "_arg0":Landroid/net/NetworkInfo;
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    const/4 v3, 0x1

    .line 584
    .local v3, "_arg1":Z
    :goto_23
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 580
    .end local v2    # "_arg0":Landroid/net/NetworkInfo;
    .end local v3    # "_arg1":Z
    :cond_21
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/NetworkInfo;
    goto :goto_22

    .line 583
    :cond_22
    const/4 v3, 0x0

    goto :goto_23

    .line 590
    .end local v2    # "_arg0":Landroid/net/NetworkInfo;
    :sswitch_2d
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 594
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    .line 595
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 600
    .local v3, "_arg1":Landroid/os/Messenger;
    :goto_24
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 598
    .end local v3    # "_arg1":Landroid/os/Messenger;
    :cond_23
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Messenger;
    goto :goto_24

    .line 606
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Messenger;
    :sswitch_2e
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->findConnectionTypeForIface(Ljava/lang/String;)I

    move-result v13

    .line 610
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 616
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_2f
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 619
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    move-result v13

    .line 620
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 626
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_30
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v13

    .line 628
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 634
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_31
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;

    move-result-object v13

    .line 636
    .restart local v13    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 642
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_32
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 645
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;

    move-result-object v13

    .line 646
    .local v13, "_result":Landroid/net/LinkQualityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    if-eqz v13, :cond_24

    .line 648
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 654
    :goto_25
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 652
    :cond_24
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 658
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Landroid/net/LinkQualityInfo;
    :sswitch_33
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v13

    .line 660
    .restart local v13    # "_result":Landroid/net/LinkQualityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v13, :cond_25

    .line 662
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 668
    :goto_26
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 666
    :cond_25
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 672
    .end local v13    # "_result":Landroid/net/LinkQualityInfo;
    :sswitch_34
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;

    move-result-object v13

    .line 674
    .local v13, "_result":[Landroid/net/LinkQualityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 676
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 680
    .end local v13    # "_result":[Landroid/net/LinkQualityInfo;
    :sswitch_35
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    const/4 v2, 0x1

    .line 684
    .local v2, "_arg0":Z
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 686
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 687
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 682
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :cond_26
    const/4 v2, 0x0

    goto :goto_27

    .line 693
    :sswitch_36
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_27

    const/4 v2, 0x1

    .line 696
    .restart local v2    # "_arg0":Z
    :goto_28
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 695
    .end local v2    # "_arg0":Z
    :cond_27
    const/4 v2, 0x0

    goto :goto_28

    .line 702
    :sswitch_37
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    .line 705
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 711
    .local v2, "_arg0":Landroid/os/Messenger;
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 708
    .end local v2    # "_arg0":Landroid/os/Messenger;
    .end local v3    # "_arg1":Ljava/lang/String;
    :cond_28
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Messenger;
    goto :goto_29

    .line 718
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :sswitch_38
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_29

    .line 721
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 726
    .restart local v2    # "_arg0":Landroid/os/Messenger;
    :goto_2a
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 724
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :cond_29
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Messenger;
    goto :goto_2a

    .line 732
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :sswitch_39
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 735
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 741
    .restart local v2    # "_arg0":Landroid/os/Messenger;
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2b

    .line 742
    sget-object v1, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 748
    .local v3, "_arg1":Landroid/net/NetworkInfo;
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    .line 749
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkProperties;

    .line 755
    .local v4, "_arg2":Landroid/net/LinkProperties;
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2d

    .line 756
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkCapabilities;

    .line 762
    .local v5, "_arg3":Landroid/net/NetworkCapabilities;
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 764
    .local v6, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e

    .line 765
    sget-object v1, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkMisc;

    .local v7, "_arg5":Landroid/net/NetworkMisc;
    :goto_2f
    move-object v1, p0

    .line 770
    invoke-virtual/range {v1 .. v7}, Landroid/net/IConnectivityManager$Stub;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)V

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 738
    .end local v2    # "_arg0":Landroid/os/Messenger;
    .end local v3    # "_arg1":Landroid/net/NetworkInfo;
    .end local v4    # "_arg2":Landroid/net/LinkProperties;
    .end local v5    # "_arg3":Landroid/net/NetworkCapabilities;
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/net/NetworkMisc;
    :cond_2a
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Messenger;
    goto :goto_2b

    .line 745
    :cond_2b
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/net/NetworkInfo;
    goto :goto_2c

    .line 752
    :cond_2c
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/net/LinkProperties;
    goto :goto_2d

    .line 759
    :cond_2d
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Landroid/net/NetworkCapabilities;
    goto :goto_2e

    .line 768
    .restart local v6    # "_arg4":I
    :cond_2e
    const/4 v7, 0x0

    .restart local v7    # "_arg5":Landroid/net/NetworkMisc;
    goto :goto_2f

    .line 776
    .end local v2    # "_arg0":Landroid/os/Messenger;
    .end local v3    # "_arg1":Landroid/net/NetworkInfo;
    .end local v4    # "_arg2":Landroid/net/LinkProperties;
    .end local v5    # "_arg3":Landroid/net/NetworkCapabilities;
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/net/NetworkMisc;
    :sswitch_3a
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2f

    .line 779
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 785
    .local v2, "_arg0":Landroid/net/NetworkCapabilities;
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    .line 786
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 792
    .local v3, "_arg1":Landroid/os/Messenger;
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 794
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 796
    .local v5, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg4":I
    move-object v1, p0

    .line 797
    invoke-virtual/range {v1 .. v6}, Landroid/net/IConnectivityManager$Stub;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v13

    .line 798
    .local v13, "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    if-eqz v13, :cond_31

    .line 800
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 806
    :goto_32
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 782
    .end local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v3    # "_arg1":Landroid/os/Messenger;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/IBinder;
    .end local v6    # "_arg4":I
    .end local v13    # "_result":Landroid/net/NetworkRequest;
    :cond_2f
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_30

    .line 789
    :cond_30
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Messenger;
    goto :goto_31

    .line 804
    .restart local v4    # "_arg2":I
    .restart local v5    # "_arg3":Landroid/os/IBinder;
    .restart local v6    # "_arg4":I
    .restart local v13    # "_result":Landroid/net/NetworkRequest;
    :cond_31
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 810
    .end local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v3    # "_arg1":Landroid/os/Messenger;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/IBinder;
    .end local v6    # "_arg4":I
    .end local v13    # "_result":Landroid/net/NetworkRequest;
    :sswitch_3b
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    .line 813
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 819
    .restart local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_33

    .line 820
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 825
    .local v3, "_arg1":Landroid/app/PendingIntent;
    :goto_34
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;

    move-result-object v13

    .line 826
    .restart local v13    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    if-eqz v13, :cond_34

    .line 828
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 834
    :goto_35
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 816
    .end local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    .end local v13    # "_result":Landroid/net/NetworkRequest;
    :cond_32
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_33

    .line 823
    :cond_33
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_34

    .line 832
    .restart local v13    # "_result":Landroid/net/NetworkRequest;
    :cond_34
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_35

    .line 838
    .end local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    .end local v13    # "_result":Landroid/net/NetworkRequest;
    :sswitch_3c
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_35

    .line 841
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 847
    .restart local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_36

    .line 848
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 854
    .local v3, "_arg1":Landroid/os/Messenger;
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 855
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v13

    .line 856
    .restart local v13    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    if-eqz v13, :cond_37

    .line 858
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 864
    :goto_38
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 844
    .end local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v3    # "_arg1":Landroid/os/Messenger;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v13    # "_result":Landroid/net/NetworkRequest;
    :cond_35
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_36

    .line 851
    :cond_36
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Messenger;
    goto :goto_37

    .line 862
    .restart local v4    # "_arg2":Landroid/os/IBinder;
    .restart local v13    # "_result":Landroid/net/NetworkRequest;
    :cond_37
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    .line 868
    .end local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v3    # "_arg1":Landroid/os/Messenger;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v13    # "_result":Landroid/net/NetworkRequest;
    :sswitch_3d
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_38

    .line 871
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 877
    .restart local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_39

    .line 878
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 883
    .local v3, "_arg1":Landroid/app/PendingIntent;
    :goto_3a
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 874
    .end local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    :cond_38
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_39

    .line 881
    :cond_39
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_3a

    .line 889
    .end local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_3e
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3a

    .line 892
    sget-object v1, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    .line 897
    .local v2, "_arg0":Landroid/net/NetworkRequest;
    :goto_3b
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 895
    .end local v2    # "_arg0":Landroid/net/NetworkRequest;
    :cond_3a
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/NetworkRequest;
    goto :goto_3b

    .line 903
    .end local v2    # "_arg0":Landroid/net/NetworkRequest;
    :sswitch_3f
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3b

    .line 906
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 911
    .local v2, "_arg0":Landroid/os/Messenger;
    :goto_3c
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setDataConnectionMessanger(Landroid/os/Messenger;)V

    .line 912
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 909
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :cond_3b
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Messenger;
    goto :goto_3c

    .line 917
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :sswitch_40
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 921
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 922
    .local v3, "_arg1":[B
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->requestRemRouteToHostAddress(I[B)Z

    move-result v13

    .line 923
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    if-eqz v13, :cond_3c

    const/4 v1, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 924
    :cond_3c
    const/4 v1, 0x0

    goto :goto_3d

    .line 929
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v13    # "_result":Z
    :sswitch_41
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 933
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 934
    .restart local v3    # "_arg1":[B
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->requestRemoveImsRoute(I[B)Z

    move-result v13

    .line 935
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    if-eqz v13, :cond_3d

    const/4 v1, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 936
    :cond_3d
    const/4 v1, 0x0

    goto :goto_3e

    .line 941
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v13    # "_result":Z
    :sswitch_42
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isSystemImage()Z

    move-result v13

    .line 943
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    if-eqz v13, :cond_3e

    const/4 v1, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 944
    :cond_3e
    const/4 v1, 0x0

    goto :goto_3f

    .line 949
    .end local v13    # "_result":Z
    :sswitch_43
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isContainVzwAppApn_MetaTag()Z

    move-result v13

    .line 951
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    if-eqz v13, :cond_3f

    const/4 v1, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 952
    :cond_3f
    const/4 v1, 0x0

    goto :goto_40

    .line 957
    .end local v13    # "_result":Z
    :sswitch_44
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isSignedFromVZW()Z

    move-result v13

    .line 959
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    if-eqz v13, :cond_40

    const/4 v1, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 960
    :cond_40
    const/4 v1, 0x0

    goto :goto_41

    .line 965
    .end local v13    # "_result":Z
    :sswitch_45
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 968
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->checkVzwNetType(I)I

    move-result v13

    .line 969
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 971
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 975
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_46
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_41

    const/4 v2, 0x1

    .line 978
    .local v2, "_arg0":Z
    :goto_42
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setRoamingDataEnabled_RILCMD(Z)V

    .line 979
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 977
    .end local v2    # "_arg0":Z
    :cond_41
    const/4 v2, 0x0

    goto :goto_42

    .line 984
    :sswitch_47
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_42

    const/4 v2, 0x1

    .line 987
    .restart local v2    # "_arg0":Z
    :goto_43
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setLteMobileDataEnabled(Z)V

    .line 988
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 986
    .end local v2    # "_arg0":Z
    :cond_42
    const/4 v2, 0x0

    goto :goto_43

    .line 993
    :sswitch_48
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->checkLteConnectState()I

    move-result v13

    .line 995
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1001
    .end local v13    # "_result":I
    :sswitch_49
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_43

    const/4 v2, 0x1

    .line 1004
    .restart local v2    # "_arg0":Z
    :goto_44
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->setDataBlock(Z)V

    .line 1005
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1003
    .end local v2    # "_arg0":Z
    :cond_43
    const/4 v2, 0x0

    goto :goto_44

    .line 1010
    :sswitch_4a
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->removeNotification()V

    .line 1012
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1017
    :sswitch_4b
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isRemainRadio()V

    .line 1019
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1024
    :sswitch_4c
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->mobileDataPdpReset()V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1031
    :sswitch_4d
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1034
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getRestoreDefaultNetworkDelay(I)I

    move-result v13

    .line 1035
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1041
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_4e
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1044
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->startusingEPDGFeature(Ljava/lang/String;)I

    move-result v13

    .line 1045
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1051
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_4f
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1054
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->stopusingEPDGFeature(Ljava/lang/String;)I

    move-result v13

    .line 1055
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1061
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_50
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IePDGStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IePDGStateListener;

    move-result-object v2

    .line 1065
    .local v2, "_arg0":Landroid/net/IePDGStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1066
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->ePDGlisten(Landroid/net/IePDGStateListener;I)V

    .line 1067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1072
    .end local v2    # "_arg0":Landroid/net/IePDGStateListener;
    .end local v3    # "_arg1":I
    :sswitch_51
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_44

    const/4 v2, 0x1

    .line 1076
    .local v2, "_arg0":Z
    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1077
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setFQDN(ZLjava/lang/String;)V

    .line 1078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1074
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    :cond_44
    const/4 v2, 0x0

    goto :goto_45

    .line 1083
    :sswitch_52
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1086
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->ePDGPrefTechdone(I)V

    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1092
    .end local v2    # "_arg0":I
    :sswitch_53
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1095
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->ePDGHandOverStatus(I)V

    .line 1096
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1101
    .end local v2    # "_arg0":I
    :sswitch_54
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1105
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1107
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1109
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1111
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1113
    .local v6, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1115
    .local v7, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1117
    .local v8, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1119
    .local v9, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1121
    .local v10, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1123
    .local v11, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg10":Ljava/lang/String;
    move-object v1, p0

    .line 1124
    invoke-virtual/range {v1 .. v12}, Landroid/net/IConnectivityManager$Stub;->notifyEPDGCallResult(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1130
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg6":Ljava/lang/String;
    .end local v9    # "_arg7":Ljava/lang/String;
    .end local v10    # "_arg8":Ljava/lang/String;
    .end local v11    # "_arg9":I
    .end local v12    # "_arg10":Ljava/lang/String;
    :sswitch_55
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1134
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1136
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1138
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1139
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/IConnectivityManager$Stub;->notifyEPDGPDNStatus(IIILjava/lang/String;)V

    .line 1140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1145
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :sswitch_56
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1149
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1150
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->getDebugInfo(II)[D

    move-result-object v13

    .line 1151
    .local v13, "_result":[D
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 1153
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1157
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v13    # "_result":[D
    :sswitch_57
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1161
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1162
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1163
    .local v13, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1165
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1169
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":[Ljava/lang/String;
    :sswitch_58
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1172
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getIPpcscAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1173
    .restart local v13    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1175
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1179
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":[Ljava/lang/String;
    :sswitch_59
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1182
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getNetPrefer(Ljava/lang/String;)I

    move-result v13

    .line 1183
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1189
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_5a
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getLteRssi()I

    move-result v13

    .line 1191
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1197
    .end local v13    # "_result":I
    :sswitch_5b
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1201
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1202
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v13

    .line 1203
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    if-eqz v13, :cond_45

    const/4 v1, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1204
    :cond_45
    const/4 v1, 0x0

    goto :goto_46

    .line 1209
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v13    # "_result":Z
    :sswitch_5c
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1213
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1214
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v13

    .line 1215
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    if-eqz v13, :cond_46

    const/4 v1, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1216
    :cond_46
    const/4 v1, 0x0

    goto :goto_47

    .line 1221
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v13    # "_result":Z
    :sswitch_5d
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1224
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityManager$Stub;->getNetworkStatus_for_kt_kaf(I)I

    move-result v13

    .line 1225
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1231
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_5e
    const-string v1, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v13

    .line 1233
    .local v13, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1235
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
