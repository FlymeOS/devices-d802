.class public abstract Lcom/vzw/location/IVzwLocationProvider$Stub;
.super Landroid/os/Binder;
.source "IVzwLocationProvider.java"

# interfaces
.implements Lcom/vzw/location/IVzwLocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/IVzwLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/IVzwLocationProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vzw.location.IVzwLocationProvider"

.field static final TRANSACTION_addListener:I = 0x14

.field static final TRANSACTION_disable:I = 0xb

.field static final TRANSACTION_enable:I = 0xa

.field static final TRANSACTION_enableLocationTracking:I = 0xf

.field static final TRANSACTION_getAccuracy:I = 0x9

.field static final TRANSACTION_getInternalState:I = 0xe

.field static final TRANSACTION_getPowerRequirement:I = 0x8

.field static final TRANSACTION_getStatus:I = 0xc

.field static final TRANSACTION_getStatusUpdateTime:I = 0xd

.field static final TRANSACTION_hasMonetaryCost:I = 0x4

.field static final TRANSACTION_removeListener:I = 0x15

.field static final TRANSACTION_requiresCell:I = 0x3

.field static final TRANSACTION_requiresNetwork:I = 0x1

.field static final TRANSACTION_requiresSatellite:I = 0x2

.field static final TRANSACTION_sendExtraCommand:I = 0x13

.field static final TRANSACTION_setMinTime:I = 0x10

.field static final TRANSACTION_supportsAltitude:I = 0x5

.field static final TRANSACTION_supportsBearing:I = 0x7

.field static final TRANSACTION_supportsSpeed:I = 0x6

.field static final TRANSACTION_updateLocation:I = 0x12

.field static final TRANSACTION_updateNetworkState:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p0, p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwLocationProvider;
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
    const-string v1, "com.vzw.location.IVzwLocationProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/vzw/location/IVzwLocationProvider;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/vzw/location/IVzwLocationProvider;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/vzw/location/IVzwLocationProvider$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vzw/location/IVzwLocationProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 267
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 47
    :sswitch_0
    const-string v3, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v7, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->requiresNetwork()Z

    move-result v4

    .line 54
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_0

    move v3, v6

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v4    # "_result":Z
    :sswitch_2
    const-string v7, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->requiresSatellite()Z

    move-result v4

    .line 62
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v4, :cond_1

    move v3, v6

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v4    # "_result":Z
    :sswitch_3
    const-string v7, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->requiresCell()Z

    move-result v4

    .line 70
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v4, :cond_2

    move v3, v6

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v7, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->hasMonetaryCost()Z

    move-result v4

    .line 78
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v4, :cond_3

    move v3, v6

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v4    # "_result":Z
    :sswitch_5
    const-string v7, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->supportsAltitude()Z

    move-result v4

    .line 86
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v4, :cond_4

    move v3, v6

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v4    # "_result":Z
    :sswitch_6
    const-string v7, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->supportsSpeed()Z

    move-result v4

    .line 94
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v4, :cond_5

    move v3, v6

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v4    # "_result":Z
    :sswitch_7
    const-string v7, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->supportsBearing()Z

    move-result v4

    .line 102
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v4, :cond_6

    move v3, v6

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 108
    .end local v4    # "_result":Z
    :sswitch_8
    const-string v3, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->getPowerRequirement()I

    move-result v4

    .line 110
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v4    # "_result":I
    :sswitch_9
    const-string v3, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->getAccuracy()I

    move-result v4

    .line 118
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 124
    .end local v4    # "_result":I
    :sswitch_a
    const-string v3, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->enable()V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    :sswitch_b
    const-string v3, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->disable()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 138
    :sswitch_c
    const-string v7, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->getStatus(Landroid/os/Bundle;)I

    move-result v4

    .line 142
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    if-eqz v0, :cond_7

    .line 145
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {v0, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 149
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :sswitch_d
    const-string v3, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->getStatusUpdateTime()J

    move-result-wide v4

    .line 157
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 163
    .end local v4    # "_result":J
    :sswitch_e
    const-string v3, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->getInternalState()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v7, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    move v0, v6

    .line 174
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->enableLocationTracking(Z)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_8
    move v0, v3

    .line 173
    goto :goto_1

    .line 180
    :sswitch_10
    const-string v3, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 184
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 185
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 190
    .local v2, "_arg1":Landroid/os/WorkSource;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/vzw/location/IVzwLocationProvider$Stub;->setMinTime(JLandroid/os/WorkSource;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 188
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/WorkSource;
    goto :goto_2

    .line 196
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    :sswitch_11
    const-string v3, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 201
    sget-object v3, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 206
    .local v2, "_arg1":Landroid/net/NetworkInfo;
    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/vzw/location/IVzwLocationProvider$Stub;->updateNetworkState(ILandroid/net/NetworkInfo;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 204
    .end local v2    # "_arg1":Landroid/net/NetworkInfo;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/NetworkInfo;
    goto :goto_3

    .line 212
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/NetworkInfo;
    :sswitch_12
    const-string v3, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 215
    sget-object v3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 220
    .local v0, "_arg0":Landroid/location/Location;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->updateLocation(Landroid/location/Location;)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 218
    .end local v0    # "_arg0":Landroid/location/Location;
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/location/Location;
    goto :goto_4

    .line 226
    .end local v0    # "_arg0":Landroid/location/Location;
    :sswitch_13
    const-string v7, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    .line 231
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 236
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0, v2}, Lcom/vzw/location/IVzwLocationProvider$Stub;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    .line 237
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v4, :cond_d

    move v7, v6

    :goto_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    if-eqz v2, :cond_e

    .line 240
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {v2, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 234
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":Z
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .restart local v4    # "_result":Z
    :cond_d
    move v7, v3

    .line 238
    goto :goto_6

    .line 244
    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 250
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":Z
    :sswitch_14
    const-string v3, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->addListener(I)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 259
    .end local v0    # "_arg0":I
    :sswitch_15
    const-string v3, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->removeListener(I)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
