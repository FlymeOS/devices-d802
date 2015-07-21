.class public abstract Lcom/lge/net/IFastDownloadManager$Stub;
.super Landroid/os/Binder;
.source "IFastDownloadManager.java"

# interfaces
.implements Lcom/lge/net/IFastDownloadManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/net/IFastDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/net/IFastDownloadManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.net.IFastDownloadManager"

.field static final TRANSACTION_getAccumulatedMobileBandwidth:I = 0x7

.field static final TRANSACTION_getAccumulatedWifiBandwidth:I = 0x6

.field static final TRANSACTION_getAverageBandwidthCache:I = 0xc

.field static final TRANSACTION_getFDSEnabled:I = 0x1

.field static final TRANSACTION_getFDSLogEnabled:I = 0xb

.field static final TRANSACTION_getFDSUsageList:I = 0xa

.field static final TRANSACTION_getMobileBandwidth:I = 0x5

.field static final TRANSACTION_getMobileConnectionStatus:I = 0x2

.field static final TRANSACTION_getMobileLocalAddress:I = 0x9

.field static final TRANSACTION_getPeakBandwidthCache:I = 0xd

.field static final TRANSACTION_getWifiBandwidth:I = 0x4

.field static final TRANSACTION_getWifiConnectionStatus:I = 0x3

.field static final TRANSACTION_getWifiLocalAddress:I = 0x8

.field static final TRANSACTION_registerFDCallback:I = 0x12

.field static final TRANSACTION_setLocalAddress:I = 0xf

.field static final TRANSACTION_startFDS:I = 0x10

.field static final TRANSACTION_stopFDS:I = 0x11

.field static final TRANSACTION_unregisterFDCallback:I = 0x13

.field static final TRANSACTION_updateFDSUsage:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/net/IFastDownloadManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/net/IFastDownloadManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.lge.net.IFastDownloadManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/net/IFastDownloadManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/lge/net/IFastDownloadManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/lge/net/IFastDownloadManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/net/IFastDownloadManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 46
    :sswitch_0
    const-string v6, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v6, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 55
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/net/IFastDownloadManager$Stub;->getFDSEnabled(JLjava/lang/String;)I

    move-result v4

    .line 57
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_2
    const-string v8, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/lge/net/IFastDownloadManager$Stub;->getMobileConnectionStatus()Z

    move-result v4

    .line 65
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v4    # "_result":Z
    :sswitch_3
    const-string v8, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/lge/net/IFastDownloadManager$Stub;->getWifiConnectionStatus()Z

    move-result v4

    .line 73
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v4, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v6, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/lge/net/IFastDownloadManager$Stub;->getWifiBandwidth()D

    move-result-wide v4

    .line 81
    .local v4, "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 87
    .end local v4    # "_result":D
    :sswitch_5
    const-string v6, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/lge/net/IFastDownloadManager$Stub;->getMobileBandwidth()D

    move-result-wide v4

    .line 89
    .restart local v4    # "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 95
    .end local v4    # "_result":D
    :sswitch_6
    const-string v6, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/lge/net/IFastDownloadManager$Stub;->getAccumulatedWifiBandwidth()D

    move-result-wide v4

    .line 97
    .restart local v4    # "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 103
    .end local v4    # "_result":D
    :sswitch_7
    const-string v6, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/lge/net/IFastDownloadManager$Stub;->getAccumulatedMobileBandwidth()D

    move-result-wide v4

    .line 105
    .restart local v4    # "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_0

    .line 111
    .end local v4    # "_result":D
    :sswitch_8
    const-string v6, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/lge/net/IFastDownloadManager$Stub;->getWifiLocalAddress()[B

    move-result-object v4

    .line 113
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 119
    .end local v4    # "_result":[B
    :sswitch_9
    const-string v6, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/lge/net/IFastDownloadManager$Stub;->getMobileLocalAddress()[B

    move-result-object v4

    .line 121
    .restart local v4    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 127
    .end local v4    # "_result":[B
    :sswitch_a
    const-string v6, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 134
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/lge/net/IFastDownloadManager$Stub;->getFDSUsageList(III)J

    move-result-wide v4

    .line 135
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 141
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":J
    :sswitch_b
    const-string v8, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/lge/net/IFastDownloadManager$Stub;->getFDSLogEnabled()Z

    move-result v4

    .line 143
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v4    # "_result":Z
    :sswitch_c
    const-string v6, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/lge/net/IFastDownloadManager$Stub;->getAverageBandwidthCache()[D

    move-result-object v4

    .line 151
    .local v4, "_result":[D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto/16 :goto_0

    .line 157
    .end local v4    # "_result":[D
    :sswitch_d
    const-string v6, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/lge/net/IFastDownloadManager$Stub;->getPeakBandwidthCache()[D

    move-result-object v4

    .line 159
    .restart local v4    # "_result":[D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto/16 :goto_0

    .line 165
    .end local v4    # "_result":[D
    :sswitch_e
    const-string v8, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v2, v7

    .line 170
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/lge/net/IFastDownloadManager$Stub;->updateFDSUsage(IZ)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_3
    move v2, v6

    .line 169
    goto :goto_1

    .line 176
    .end local v0    # "_arg0":I
    :sswitch_f
    const-string v6, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 181
    sget-object v6, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 186
    .local v2, "_arg1":Landroid/net/LinkAddress;
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/lge/net/IFastDownloadManager$Stub;->setLocalAddress(ILandroid/net/LinkAddress;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 184
    .end local v2    # "_arg1":Landroid/net/LinkAddress;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/LinkAddress;
    goto :goto_2

    .line 192
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/LinkAddress;
    :sswitch_10
    const-string v8, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/net/IFastDownloadManager$Stub;->startFDS(I)Z

    move-result v4

    .line 196
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v4, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 202
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_11
    const-string v8, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/net/IFastDownloadManager$Stub;->stopFDS(I)Z

    move-result v4

    .line 206
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v4, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 212
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_12
    const-string v8, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/net/IFDCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/net/IFDCallback;

    move-result-object v0

    .line 215
    .local v0, "_arg0":Lcom/lge/net/IFDCallback;
    invoke-virtual {p0, v0}, Lcom/lge/net/IFastDownloadManager$Stub;->registerFDCallback(Lcom/lge/net/IFDCallback;)Z

    move-result v4

    .line 216
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v4, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 222
    .end local v0    # "_arg0":Lcom/lge/net/IFDCallback;
    .end local v4    # "_result":Z
    :sswitch_13
    const-string v8, "com.lge.net.IFastDownloadManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/net/IFDCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/net/IFDCallback;

    move-result-object v0

    .line 225
    .restart local v0    # "_arg0":Lcom/lge/net/IFDCallback;
    invoke-virtual {p0, v0}, Lcom/lge/net/IFastDownloadManager$Stub;->unregisterFDCallback(Lcom/lge/net/IFDCallback;)Z

    move-result v4

    .line 226
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v4, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
