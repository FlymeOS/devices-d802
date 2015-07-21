.class public abstract Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter$Stub;
.super Landroid/os/Binder;
.source "ILGBleQuietmodeAdapter.java"

# interfaces
.implements Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.bluetooth.le.quietmode.ILGBleQuietmodeAdapter"

.field static final TRANSACTION_disable:I = 0x2

.field static final TRANSACTION_enable:I = 0x1

.field static final TRANSACTION_isEnabled:I = 0x3

.field static final TRANSACTION_isQuietmodeSupported:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x5

.field static final TRANSACTION_unregisterCallback:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.bluetooth.le.quietmode.ILGBleQuietmodeAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;
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
    const-string v1, "com.lge.bluetooth.le.quietmode.ILGBleQuietmodeAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.lge.bluetooth.le.quietmode.ILGBleQuietmodeAdapter"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.lge.bluetooth.le.quietmode.ILGBleQuietmodeAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter$Stub;->enable()Z

    move-result v1

    .line 49
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v1    # "_result":Z
    :sswitch_2
    const-string v4, "com.lge.bluetooth.le.quietmode.ILGBleQuietmodeAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter$Stub;->disable()Z

    move-result v1

    .line 57
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v1    # "_result":Z
    :sswitch_3
    const-string v4, "com.lge.bluetooth.le.quietmode.ILGBleQuietmodeAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter$Stub;->isEnabled()Z

    move-result v1

    .line 65
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v1    # "_result":Z
    :sswitch_4
    const-string v4, "com.lge.bluetooth.le.quietmode.ILGBleQuietmodeAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter$Stub;->isQuietmodeSupported()Z

    move-result v1

    .line 73
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v1    # "_result":Z
    :sswitch_5
    const-string v4, "com.lge.bluetooth.le.quietmode.ILGBleQuietmodeAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback;

    move-result-object v0

    .line 82
    .local v0, "_arg0":Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback;
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter$Stub;->registerCallback(Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback;)Z

    move-result v1

    .line 83
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback;
    .end local v1    # "_result":Z
    :sswitch_6
    const-string v4, "com.lge.bluetooth.le.quietmode.ILGBleQuietmodeAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback;

    move-result-object v0

    .line 92
    .restart local v0    # "_arg0":Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback;
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter$Stub;->unregisterCallback(Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback;)Z

    move-result v1

    .line 93
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
