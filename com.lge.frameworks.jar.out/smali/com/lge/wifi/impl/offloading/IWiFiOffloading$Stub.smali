.class public abstract Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;
.super Landroid/os/Binder;
.source "IWiFiOffloading.java"

# interfaces
.implements Lcom/lge/wifi/impl/offloading/IWiFiOffloading;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/offloading/IWiFiOffloading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.wifi.impl.offloading.IWiFiOffloading"

.field static final TRANSACTION_disableWifi:I = 0x6

.field static final TRANSACTION_disableWifioffloadTimerReminder:I = 0x13

.field static final TRANSACTION_disable_background:I = 0xf

.field static final TRANSACTION_enable:I = 0x2

.field static final TRANSACTION_enable_background:I = 0x5

.field static final TRANSACTION_getAutoAP_ssid:I = 0xe

.field static final TRANSACTION_getWifiOffloadingStart:I = 0x18

.field static final TRANSACTION_getisAutoOn:I = 0xa

.field static final TRANSACTION_getisNotifyMe:I = 0x9

.field static final TRANSACTION_getisWifiAPOn:I = 0xb

.field static final TRANSACTION_getisWifiOn:I = 0x8

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_isOffloadingReminder_on:I = 0x12

.field static final TRANSACTION_isOffloadingTimer_on:I = 0x11

.field static final TRANSACTION_isWifiAPOn:I = 0xc

.field static final TRANSACTION_isWifiOffloadingEnabled:I = 0x10

.field static final TRANSACTION_resetWifioffloadTimerReminder:I = 0x15

.field static final TRANSACTION_setWifiOffloadOngoing:I = 0x16

.field static final TRANSACTION_setWifiOffloadingStart:I = 0x17

.field static final TRANSACTION_setisWifiAPOn:I = 0xd

.field static final TRANSACTION_setisWifiOn:I = 0x7

.field static final TRANSACTION_start:I = 0x3

.field static final TRANSACTION_start_background:I = 0x4

.field static final TRANSACTION_stopWifioffloadTimer:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p0, p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/offloading/IWiFiOffloading;
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
    const-string v1, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 248
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->init()Z

    move-result v1

    .line 52
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v1    # "_result":Z
    :sswitch_2
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->enable()Z

    move-result v1

    .line 60
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v1    # "_result":Z
    :sswitch_3
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 69
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->start(Z)Z

    move-result v1

    .line 70
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_3
    move v0, v2

    .line 68
    goto :goto_1

    .line 76
    :sswitch_4
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v0, v3

    .line 79
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->start_background(Z)Z

    move-result v1

    .line 80
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_5
    move v0, v2

    .line 78
    goto :goto_2

    .line 86
    :sswitch_5
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->enable_background()Z

    move-result v1

    .line 88
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v1    # "_result":Z
    :sswitch_6
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->disableWifi()V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 101
    :sswitch_7
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 104
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->setisWifiOn(Z)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_7
    move v0, v2

    .line 103
    goto :goto_3

    .line 110
    :sswitch_8
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->getisWifiOn()Z

    move-result v1

    .line 112
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v1    # "_result":Z
    :sswitch_9
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->getisNotifyMe()Z

    move-result v1

    .line 120
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 126
    .end local v1    # "_result":Z
    :sswitch_a
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->getisAutoOn()Z

    move-result v1

    .line 128
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v1, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v1    # "_result":Z
    :sswitch_b
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->getisWifiAPOn()Z

    move-result v1

    .line 136
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v1, :cond_b

    move v2, v3

    :cond_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v1    # "_result":Z
    :sswitch_c
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->isWifiAPOn()Z

    move-result v1

    .line 144
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v1, :cond_c

    move v2, v3

    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v1    # "_result":Z
    :sswitch_d
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    move v0, v3

    .line 153
    .restart local v0    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->setisWifiAPOn(Z)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_d
    move v0, v2

    .line 152
    goto :goto_4

    .line 159
    :sswitch_e
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->getAutoAP_ssid()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->disable_background()Z

    move-result v1

    .line 169
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v1, :cond_e

    move v2, v3

    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v1    # "_result":Z
    :sswitch_10
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->isWifiOffloadingEnabled()I

    move-result v1

    .line 177
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v1    # "_result":I
    :sswitch_11
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->isOffloadingTimer_on()Z

    move-result v1

    .line 185
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v1, :cond_f

    move v2, v3

    :cond_f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    .end local v1    # "_result":Z
    :sswitch_12
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->isOffloadingReminder_on()I

    move-result v1

    .line 193
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 199
    .end local v1    # "_result":I
    :sswitch_13
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->disableWifioffloadTimerReminder()V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 206
    :sswitch_14
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->stopWifioffloadTimer()V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 213
    :sswitch_15
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->resetWifioffloadTimerReminder(I)Z

    move-result v1

    .line 217
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v1, :cond_10

    move v2, v3

    :cond_10
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_16
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    move v0, v3

    .line 226
    .local v0, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->setWifiOffloadOngoing(Z)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_11
    move v0, v2

    .line 225
    goto :goto_5

    .line 232
    :sswitch_17
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 235
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->setWifiOffloadingStart(I)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 241
    .end local v0    # "_arg0":I
    :sswitch_18
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->getWifiOffloadingStart()I

    move-result v1

    .line 243
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
