.class public abstract Lcom/lge/internal/telephony/ITelephonyEx$Stub;
.super Landroid/os/Binder;
.source "ITelephonyEx.java"

# interfaces
.implements Lcom/lge/internal/telephony/ITelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/telephony/ITelephonyEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/telephony/ITelephonyEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.internal.telephony.ITelephony"

.field static final TRANSACTION_checkDataProfileEx:I = 0x272a

.field static final TRANSACTION_clearDataDisabledFlag:I = 0x2712

.field static final TRANSACTION_endAllCall:I = 0x2717

.field static final TRANSACTION_getAPNList:I = 0x272c

.field static final TRANSACTION_getCurrentLine:I = 0x2715

.field static final TRANSACTION_getDebugInfo:I = 0x2729

.field static final TRANSACTION_getMipErrorCode:I = 0x272b

.field static final TRANSACTION_getMobileDebugScreen:I = 0x2740

.field static final TRANSACTION_getMobileQualityInformation:I = 0x2727

.field static final TRANSACTION_getRoamingCountryUpdate:I = 0x271c

.field static final TRANSACTION_handleDataInterface:I = 0x2728

.field static final TRANSACTION_isBluetoothAudioOn:I = 0x271a

.field static final TRANSACTION_isDialingOrRinging:I = 0x2718

.field static final TRANSACTION_isHeadsetPlugged:I = 0x2719

.field static final TRANSACTION_isOtaSpActive:I = 0x273e

.field static final TRANSACTION_isReservedCall:I = 0x2713

.field static final TRANSACTION_isSKTPhone20RelaxationRingingMode:I = 0x273d

.field static final TRANSACTION_isTwoLineSupported:I = 0x2716

.field static final TRANSACTION_mocaAlarmEvent:I = 0x2736

.field static final TRANSACTION_mocaAlarmEventReg:I = 0x2737

.field static final TRANSACTION_mocaCheckMem:I = 0x273c

.field static final TRANSACTION_mocaGetData:I = 0x2738

.field static final TRANSACTION_mocaGetMisc:I = 0x273a

.field static final TRANSACTION_mocaGetRFParameter:I = 0x2739

.field static final TRANSACTION_mocaSetEvent:I = 0x2735

.field static final TRANSACTION_mocaSetLog:I = 0x2734

.field static final TRANSACTION_mocaSetMem:I = 0x273b

.field static final TRANSACTION_oemSsaAlarmEvent:I = 0x272f

.field static final TRANSACTION_oemSsaCheckMem:I = 0x2733

.field static final TRANSACTION_oemSsaGetData:I = 0x2731

.field static final TRANSACTION_oemSsaHdvAlarmEvent:I = 0x2730

.field static final TRANSACTION_oemSsaSetEvent:I = 0x272e

.field static final TRANSACTION_oemSsaSetLog:I = 0x272d

.field static final TRANSACTION_oemSsaSetMem:I = 0x2732

.field static final TRANSACTION_releaseRoamingCountryUpdate:I = 0x271d

.field static final TRANSACTION_resetVoiceMessageCount:I = 0x2710

.field static final TRANSACTION_setDataDisabledFlag:I = 0x2711

.field static final TRANSACTION_setNetworkBand:I = 0x273f

.field static final TRANSACTION_setRoamingCountryUpdate:I = 0x271b

.field static final TRANSACTION_startMobileQualityInformation:I = 0x2725

.field static final TRANSACTION_startRoamingCountryUpdate:I = 0x271e

.field static final TRANSACTION_stopMobileQualityInformation:I = 0x2726

.field static final TRANSACTION_toggleCurrentLine:I = 0x2714

.field static final TRANSACTION_uknightEventSet:I = 0x2720

.field static final TRANSACTION_uknightGetData:I = 0x2723

.field static final TRANSACTION_uknightLogSet:I = 0x271f

.field static final TRANSACTION_uknightMemCheck:I = 0x2724

.field static final TRANSACTION_uknightMemSet:I = 0x2722

.field static final TRANSACTION_uknightStateChangeSet:I = 0x2721


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ITelephonyEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v1, "android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/internal/telephony/ITelephonyEx;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/lge/internal/telephony/ITelephonyEx;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/lge/internal/telephony/ITelephonyEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/internal/telephony/ITelephonyEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static onTransact(Lcom/lge/internal/telephony/ITelephonyEx;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p0, "server"    # Lcom/lge/internal/telephony/ITelephonyEx;
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 46
    sparse-switch p1, :sswitch_data_0

    move v4, v3

    .line 540
    :goto_0
    return v4

    .line 50
    :sswitch_0
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->resetVoiceMessageCount()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    :sswitch_2
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .local v1, "_arg1":I
    invoke-interface {p0, v0, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->setDataDisabledFlag(II)I

    move-result v2

    .line 68
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :sswitch_3
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .restart local v0    # "_arg0":I
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->clearDataDisabledFlag(I)I

    move-result v2

    .line 78
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_4
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->isReservedCall()Z

    move-result v2

    .line 86
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v2    # "_result":Z
    :sswitch_5
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->toggleCurrentLine()I

    move-result v2

    .line 94
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v2    # "_result":I
    :sswitch_6
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->getCurrentLine()I

    move-result v2

    .line 102
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 108
    .end local v2    # "_result":I
    :sswitch_7
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->isTwoLineSupported()Z

    move-result v2

    .line 110
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v2    # "_result":Z
    :sswitch_8
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->endAllCall()Z

    move-result v2

    .line 118
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 124
    .end local v2    # "_result":Z
    :sswitch_9
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->isDialingOrRinging()Z

    move-result v2

    .line 126
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v2    # "_result":Z
    :sswitch_a
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->isHeadsetPlugged()Z

    move-result v2

    .line 134
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 140
    .end local v2    # "_result":Z
    :sswitch_b
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->isBluetoothAudioOn()Z

    move-result v2

    .line 142
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 148
    .end local v2    # "_result":Z
    :sswitch_c
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    move v0, v4

    .line 151
    .local v0, "_arg0":Z
    :goto_1
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->setRoamingCountryUpdate(Z)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_6
    move v0, v3

    .line 150
    goto :goto_1

    .line 157
    :sswitch_d
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->getRoamingCountryUpdate()Z

    move-result v2

    .line 159
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v2, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 165
    .end local v2    # "_result":Z
    :sswitch_e
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->releaseRoamingCountryUpdate()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 172
    :sswitch_f
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "_arg0":Ljava/lang/String;
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->startRoamingCountryUpdate(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 181
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 184
    .local v0, "_arg0":[B
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightLogSet([B)[B

    move-result-object v2

    .line 185
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 191
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":[B
    :sswitch_11
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 194
    .restart local v0    # "_arg0":[B
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightEventSet([B)[B

    move-result-object v2

    .line 195
    .restart local v2    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 201
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":[B
    :sswitch_12
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .local v0, "_arg0":I
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightStateChangeSet(I)Z

    move-result v2

    .line 205
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v2, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 211
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_13
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 214
    .restart local v0    # "_arg0":I
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightMemSet(I)Z

    move-result v2

    .line 215
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v2, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 221
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_14
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 224
    .restart local v0    # "_arg0":I
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightGetData(I)Lcom/lge/internal/telephony/KNDataResponse;

    move-result-object v2

    .line 225
    .local v2, "_result":Lcom/lge/internal/telephony/KNDataResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v2, :cond_a

    .line 227
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    invoke-virtual {v2, p3, v4}, Lcom/lge/internal/telephony/KNDataResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 231
    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 237
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Lcom/lge/internal/telephony/KNDataResponse;
    :sswitch_15
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightMemCheck()[I

    move-result-object v2

    .line 239
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 245
    .end local v2    # "_result":[I
    :sswitch_16
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->startMobileQualityInformation()V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 252
    :sswitch_17
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->stopMobileQualityInformation()V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 259
    :sswitch_18
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->getMobileQualityInformation()Ljava/util/Map;

    move-result-object v2

    .line 261
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 267
    .end local v2    # "_result":Ljava/util/Map;
    :sswitch_19
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "_arg0":Ljava/lang/String;
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->handleDataInterface(Ljava/lang/String;)I

    move-result v2

    .line 271
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 277
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_1a
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 281
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 282
    .restart local v1    # "_arg1":I
    invoke-interface {p0, v0, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->getDebugInfo(II)[I

    move-result-object v2

    .line 283
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 289
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[I
    :sswitch_1b
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 294
    .restart local v1    # "_arg1":I
    invoke-interface {p0, v0, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->checkDataProfileEx(II)Z

    move-result v2

    .line 295
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v2, :cond_b

    move v3, v4

    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 301
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_1c
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->getMipErrorCode()I

    move-result v2

    .line 303
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 309
    .end local v2    # "_result":I
    :sswitch_1d
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->getAPNList()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 321
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 322
    .local v1, "_arg1":[B
    invoke-interface {p0, v0, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetLog([B[B)[B

    move-result-object v2

    .line 323
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 329
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":[B
    :sswitch_1f
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 332
    .restart local v0    # "_arg0":[B
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetEvent([B)[B

    move-result-object v2

    .line 333
    .restart local v2    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 339
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":[B
    :sswitch_20
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 342
    .restart local v0    # "_arg0":[B
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaAlarmEvent([B)[B

    move-result-object v2

    .line 343
    .restart local v2    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 349
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":[B
    :sswitch_21
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 352
    .restart local v0    # "_arg0":[B
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaHdvAlarmEvent([B)[B

    move-result-object v2

    .line 353
    .restart local v2    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 359
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":[B
    :sswitch_22
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .local v0, "_arg0":I
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaGetData(I)Lcom/lge/internal/telephony/OEMSSADataResponse;

    move-result-object v2

    .line 363
    .local v2, "_result":Lcom/lge/internal/telephony/OEMSSADataResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v2, :cond_c

    .line 365
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    invoke-virtual {v2, p3, v4}, Lcom/lge/internal/telephony/OEMSSADataResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 369
    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 375
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Lcom/lge/internal/telephony/OEMSSADataResponse;
    :sswitch_23
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 378
    .restart local v0    # "_arg0":I
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetMem(I)Z

    move-result v2

    .line 379
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v2, :cond_d

    move v3, v4

    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 385
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_24
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaCheckMem()[I

    move-result-object v2

    .line 387
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 393
    .end local v2    # "_result":[I
    :sswitch_25
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 397
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 398
    .restart local v1    # "_arg1":[B
    invoke-interface {p0, v0, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetLog([B[B)[B

    move-result-object v2

    .line 399
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 405
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":[B
    :sswitch_26
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 408
    .restart local v0    # "_arg0":[B
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetEvent([B)[B

    move-result-object v2

    .line 409
    .restart local v2    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 415
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":[B
    :sswitch_27
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 418
    .restart local v0    # "_arg0":[B
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaAlarmEvent([B)[B

    move-result-object v2

    .line 419
    .restart local v2    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 425
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":[B
    :sswitch_28
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 428
    .local v0, "_arg0":I
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaAlarmEventReg(I)Z

    move-result v2

    .line 429
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    if-eqz v2, :cond_e

    move v3, v4

    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 435
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_29
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 438
    .restart local v0    # "_arg0":I
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetData(I)Lcom/lge/internal/telephony/MOCADataResponse;

    move-result-object v2

    .line 439
    .local v2, "_result":Lcom/lge/internal/telephony/MOCADataResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    if-eqz v2, :cond_f

    .line 441
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    invoke-virtual {v2, p3, v4}, Lcom/lge/internal/telephony/MOCADataResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 445
    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 451
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Lcom/lge/internal/telephony/MOCADataResponse;
    :sswitch_2a
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 455
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 456
    .local v1, "_arg1":I
    invoke-interface {p0, v0, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetRFParameter(II)Lcom/lge/internal/telephony/MOCARFParameterResponse;

    move-result-object v2

    .line 457
    .local v2, "_result":Lcom/lge/internal/telephony/MOCARFParameterResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    if-eqz v2, :cond_10

    .line 459
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    invoke-virtual {v2, p3, v4}, Lcom/lge/internal/telephony/MOCARFParameterResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 463
    :cond_10
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 469
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Lcom/lge/internal/telephony/MOCARFParameterResponse;
    :sswitch_2b
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 473
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 474
    .restart local v1    # "_arg1":I
    invoke-interface {p0, v0, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetMisc(II)Lcom/lge/internal/telephony/MOCAMiscResponse;

    move-result-object v2

    .line 475
    .local v2, "_result":Lcom/lge/internal/telephony/MOCAMiscResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    if-eqz v2, :cond_11

    .line 477
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    invoke-virtual {v2, p3, v4}, Lcom/lge/internal/telephony/MOCAMiscResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 481
    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 487
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Lcom/lge/internal/telephony/MOCAMiscResponse;
    :sswitch_2c
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 490
    .restart local v0    # "_arg0":I
    invoke-interface {p0, v0}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetMem(I)Z

    move-result v2

    .line 491
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v2, :cond_12

    move v3, v4

    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 497
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_2d
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaCheckMem()[I

    move-result-object v2

    .line 499
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 505
    .end local v2    # "_result":[I
    :sswitch_2e
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->isSKTPhone20RelaxationRingingMode()Z

    move-result v2

    .line 507
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    if-eqz v2, :cond_13

    move v3, v4

    :cond_13
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 513
    .end local v2    # "_result":Z
    :sswitch_2f
    const-string v5, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->isOtaSpActive()Z

    move-result v2

    .line 515
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    if-eqz v2, :cond_14

    move v3, v4

    :cond_14
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 521
    .end local v2    # "_result":Z
    :sswitch_30
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 526
    .restart local v1    # "_arg1":I
    invoke-interface {p0, v0, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->setNetworkBand(Ljava/lang/String;I)I

    move-result v2

    .line 527
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 533
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :sswitch_31
    const-string v3, "android.internal.telephony.ITelephony"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-interface {p0}, Lcom/lge/internal/telephony/ITelephonyEx;->getMobileDebugScreen()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_1
        0x2711 -> :sswitch_2
        0x2712 -> :sswitch_3
        0x2713 -> :sswitch_4
        0x2714 -> :sswitch_5
        0x2715 -> :sswitch_6
        0x2716 -> :sswitch_7
        0x2717 -> :sswitch_8
        0x2718 -> :sswitch_9
        0x2719 -> :sswitch_a
        0x271a -> :sswitch_b
        0x271b -> :sswitch_c
        0x271c -> :sswitch_d
        0x271d -> :sswitch_e
        0x271e -> :sswitch_f
        0x271f -> :sswitch_10
        0x2720 -> :sswitch_11
        0x2721 -> :sswitch_12
        0x2722 -> :sswitch_13
        0x2723 -> :sswitch_14
        0x2724 -> :sswitch_15
        0x2725 -> :sswitch_16
        0x2726 -> :sswitch_17
        0x2727 -> :sswitch_18
        0x2728 -> :sswitch_19
        0x2729 -> :sswitch_1a
        0x272a -> :sswitch_1b
        0x272b -> :sswitch_1c
        0x272c -> :sswitch_1d
        0x272d -> :sswitch_1e
        0x272e -> :sswitch_1f
        0x272f -> :sswitch_20
        0x2730 -> :sswitch_21
        0x2731 -> :sswitch_22
        0x2732 -> :sswitch_23
        0x2733 -> :sswitch_24
        0x2734 -> :sswitch_25
        0x2735 -> :sswitch_26
        0x2736 -> :sswitch_27
        0x2737 -> :sswitch_28
        0x2738 -> :sswitch_29
        0x2739 -> :sswitch_2a
        0x273a -> :sswitch_2b
        0x273b -> :sswitch_2c
        0x273c -> :sswitch_2d
        0x273d -> :sswitch_2e
        0x273e -> :sswitch_2f
        0x273f -> :sswitch_30
        0x2740 -> :sswitch_31
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method
