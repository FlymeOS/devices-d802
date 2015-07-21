.class public abstract Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer$Stub;
.super Landroid/os/Binder;
.source "ILGBluetoothHiddenBindServer.java"

# interfaces
.implements Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.bluetooth.ILGBluetoothHiddenBindServer"

.field static final TRANSACTION_addDummyPairedList:I = 0x5

.field static final TRANSACTION_sendBattRssiSvcRoamLevel:I = 0x3

.field static final TRANSACTION_sendScoOnOff:I = 0x4

.field static final TRANSACTION_setProfileOnOff:I = 0x1

.field static final TRANSACTION_setSspDebugMode:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.bluetooth.ILGBluetoothHiddenBindServer"

    invoke-virtual {p0, p0, v0}, Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.lge.bluetooth.ILGBluetoothHiddenBindServer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.lge.bluetooth.ILGBluetoothHiddenBindServer"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.lge.bluetooth.ILGBluetoothHiddenBindServer"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 52
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer$Stub;->setProfileOnOff(Ljava/lang/String;Z)Z

    move-result v2

    .line 53
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v2, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :cond_1
    move v1, v4

    .line 51
    goto :goto_1

    .line 59
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.lge.bluetooth.ILGBluetoothHiddenBindServer"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 62
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer$Stub;->setSspDebugMode(Z)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_2
    move v0, v4

    .line 61
    goto :goto_2

    .line 68
    :sswitch_3
    const-string v4, "com.lge.bluetooth.ILGBluetoothHiddenBindServer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer$Stub;->sendBattRssiSvcRoamLevel(Ljava/lang/String;I)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_4
    const-string v5, "com.lge.bluetooth.ILGBluetoothHiddenBindServer"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 82
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer$Stub;->sendScoOnOff(Z)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v4

    .line 81
    goto :goto_3

    .line 88
    :sswitch_5
    const-string v5, "com.lge.bluetooth.ILGBluetoothHiddenBindServer"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/lge/bluetooth/ILGBluetoothHiddenBindServer$Stub;->addDummyPairedList()Z

    move-result v2

    .line 90
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v2, :cond_4

    move v4, v3

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
