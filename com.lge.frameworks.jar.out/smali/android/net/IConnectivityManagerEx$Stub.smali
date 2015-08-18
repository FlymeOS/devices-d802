.class public abstract Landroid/net/IConnectivityManagerEx$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManagerEx.java"

# interfaces
.implements Landroid/net/IConnectivityManagerEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManagerEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_ePDGHandOverStatus:I = 0x2715

.field static final TRANSACTION_ePDGPrefTechdone:I = 0x2714

.field static final TRANSACTION_ePDGlisten:I = 0x2712

.field static final TRANSACTION_getDebugInfo:I = 0x2716

.field static final TRANSACTION_getLteRssi:I = 0x2718

.field static final TRANSACTION_getNetPrefer:I = 0x2717

.field static final TRANSACTION_setFQDN:I = 0x2713

.field static final TRANSACTION_startusingEPDGFeature:I = 0x2710

.field static final TRANSACTION_stopusingEPDGFeature:I = 0x2711


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManagerEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManagerEx;
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
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManagerEx;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/net/IConnectivityManagerEx;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/net/IConnectivityManagerEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManagerEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static onTransact(Landroid/net/IConnectivityManagerEx;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p0, "server"    # Landroid/net/IConnectivityManagerEx;
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
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    move v3, v0

    .line 136
    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Ljava/lang/String;
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManagerEx;->startusingEPDGFeature(Ljava/lang/String;)I

    move-result v2

    .line 51
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_2
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManagerEx;->stopusingEPDGFeature(Ljava/lang/String;)I

    move-result v2

    .line 61
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_3
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IePDGStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IePDGStateListener;

    move-result-object v0

    .line 71
    .local v0, "_arg0":Landroid/net/IePDGStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .local v1, "_arg1":I
    invoke-interface {p0, v0, v1}, Landroid/net/IConnectivityManagerEx;->ePDGlisten(Landroid/net/IePDGStateListener;I)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Landroid/net/IePDGStateListener;
    .end local v1    # "_arg1":I
    :sswitch_4
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    .line 82
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "_arg1":Ljava/lang/String;
    invoke-interface {p0, v0, v1}, Landroid/net/IConnectivityManagerEx;->setFQDN(ZLjava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_5
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .local v0, "_arg0":I
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManagerEx;->ePDGPrefTechdone(I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .restart local v0    # "_arg0":I
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManagerEx;->ePDGHandOverStatus(I)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 107
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .local v1, "_arg1":I
    invoke-interface {p0, v0, v1}, Landroid/net/IConnectivityManagerEx;->getDebugInfo(II)[D

    move-result-object v2

    .line 113
    .local v2, "_result":[D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto/16 :goto_0

    .line 119
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[D
    :sswitch_8
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "_arg0":Ljava/lang/String;
    invoke-interface {p0, v0}, Landroid/net/IConnectivityManagerEx;->getNetPrefer(Ljava/lang/String;)I

    move-result v2

    .line 123
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_9
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-interface {p0}, Landroid/net/IConnectivityManagerEx;->getLteRssi()I

    move-result v2

    .line 131
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method
