.class public abstract Lcom/lge/wifi/impl/IWifiExtManager$Stub;
.super Landroid/os/Binder;
.source "IWifiExtManager.java"

# interfaces
.implements Lcom/lge/wifi/impl/IWifiExtManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/IWifiExtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/IWifiExtManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.wifi.impl.IWifiExtManager"

.field static final TRANSACTION_getCallingWifiUid:I = 0xc

.field static final TRANSACTION_getConnectionExtInfo:I = 0x1

.field static final TRANSACTION_getMacAddress:I = 0x4

.field static final TRANSACTION_getP2pState:I = 0x3

.field static final TRANSACTION_getSecurityType:I = 0x2

.field static final TRANSACTION_getSoftApMaxScb:I = 0xa

.field static final TRANSACTION_isInternetCheckAvailable:I = 0x6

.field static final TRANSACTION_isVZWMobileHotspotEnabled:I = 0x8

.field static final TRANSACTION_setCallingWifiUid:I = 0xb

.field static final TRANSACTION_setDlnaUsing:I = 0x5

.field static final TRANSACTION_setProvisioned:I = 0x7

.field static final TRANSACTION_setVZWMobileHotspot:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/IWifiExtManager;
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
    const-string v1, "com.lge.wifi.impl.IWifiExtManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/wifi/impl/IWifiExtManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/lge/wifi/impl/IWifiExtManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/lge/wifi/impl/IWifiExtManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v3, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->getConnectionExtInfo()Lcom/lge/wifi/impl/WifiExtInfo;

    move-result-object v1

    .line 52
    .local v1, "_result":Lcom/lge/wifi/impl/WifiExtInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v1, p3, v2}, Lcom/lge/wifi/impl/WifiExtInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v1    # "_result":Lcom/lge/wifi/impl/WifiExtInfo;
    :sswitch_2
    const-string v3, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->getSecurityType()I

    move-result v1

    .line 66
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v1    # "_result":I
    :sswitch_3
    const-string v3, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->getP2pState()I

    move-result v1

    .line 74
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v1    # "_result":I
    :sswitch_4
    const-string v3, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string v4, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 91
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->setDlnaUsing(Z)Z

    move-result v1

    .line 92
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v1, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_2
    move v0, v3

    .line 90
    goto :goto_1

    .line 98
    :sswitch_6
    const-string v4, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->isInternetCheckAvailable()Z

    move-result v1

    .line 100
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v1, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v1    # "_result":Z
    :sswitch_7
    const-string v4, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 109
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->setProvisioned(Z)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_4
    move v0, v3

    .line 108
    goto :goto_2

    .line 115
    :sswitch_8
    const-string v4, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->isVZWMobileHotspotEnabled()Z

    move-result v1

    .line 117
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v1, :cond_5

    move v3, v2

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v1    # "_result":Z
    :sswitch_9
    const-string v4, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    move v0, v2

    .line 126
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->setVZWMobileHotspot(Z)Z

    move-result v1

    .line 127
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v1, :cond_6

    move v3, v2

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_7
    move v0, v3

    .line 125
    goto :goto_3

    .line 133
    :sswitch_a
    const-string v3, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->getSoftApMaxScb(I)I

    move-result v1

    .line 137
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_b
    const-string v3, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->setCallingWifiUid(I)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 152
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string v3, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->getCallingWifiUid()I

    move-result v1

    .line 154
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
