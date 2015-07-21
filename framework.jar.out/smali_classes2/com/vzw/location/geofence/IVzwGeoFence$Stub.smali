.class public abstract Lcom/vzw/location/geofence/IVzwGeoFence$Stub;
.super Landroid/os/Binder;
.source "IVzwGeoFence.java"

# interfaces
.implements Lcom/vzw/location/geofence/IVzwGeoFence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/geofence/IVzwGeoFence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/geofence/IVzwGeoFence$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vzw.location.geofence.IVzwGeoFence"

.field static final TRANSACTION_clearGeoFence:I = 0x2

.field static final TRANSACTION_clearGeoFenceUser:I = 0x3

.field static final TRANSACTION_setGeoFence:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.vzw.location.geofence.IVzwGeoFence"

    invoke-virtual {p0, p0, v0}, Lcom/vzw/location/geofence/IVzwGeoFence$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vzw/location/geofence/IVzwGeoFence;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.vzw.location.geofence.IVzwGeoFence"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/vzw/location/geofence/IVzwGeoFence;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/vzw/location/geofence/IVzwGeoFence;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/vzw/location/geofence/IVzwGeoFence$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vzw/location/geofence/IVzwGeoFence$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v3, "com.vzw.location.geofence.IVzwGeoFence"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "com.vzw.location.geofence.IVzwGeoFence"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    sget-object v3, Lcom/vzw/location/geofence/VzwGeoFenceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/geofence/VzwGeoFenceParams;

    .line 58
    .local v1, "_arg1":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/vzw/location/geofence/IVzwGeoFence$Stub;->setGeoFence(Landroid/os/IBinder;Lcom/vzw/location/geofence/VzwGeoFenceParams;)Z

    move-result v2

    .line 59
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v2, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v1    # "_arg1":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    .end local v2    # "_result":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    goto :goto_1

    .line 60
    .restart local v2    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 65
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    .end local v2    # "_result":Z
    :sswitch_2
    const-string v3, "com.vzw.location.geofence.IVzwGeoFence"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 69
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 75
    .local v1, "_arg1":Landroid/app/PendingIntent;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/vzw/location/geofence/IVzwGeoFence$Stub;->clearGeoFence(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_3

    .line 81
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_3
    const-string v3, "com.vzw.location.geofence.IVzwGeoFence"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vzw/location/geofence/IVzwGeoFence$Stub;->clearGeoFenceUser(I)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
