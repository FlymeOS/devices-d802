.class public abstract Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;
.super Landroid/os/Binder;
.source "INfcAdapterAddon.java"

# interfaces
.implements Lcom/lge/nfcaddon/INfcAdapterAddon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcaddon/INfcAdapterAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/INfcAdapterAddon$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.nfcaddon.INfcAdapterAddon"

.field static final TRANSACTION_getCardEmulationInterface:I = 0x9

.field static final TRANSACTION_getGsmaNfcControllerInterface:I = 0xa

.field static final TRANSACTION_getNfcAddonPreference:I = 0xc

.field static final TRANSACTION_getNfcCardState:I = 0x2

.field static final TRANSACTION_getNfcConfigureValue:I = 0x10

.field static final TRANSACTION_getNfcDiscoveryState:I = 0x3

.field static final TRANSACTION_getNfcInfo:I = 0x13

.field static final TRANSACTION_getNfcP2pState:I = 0x4

.field static final TRANSACTION_getNfcSysState:I = 0x1

.field static final TRANSACTION_isNfcCardModeEnabled:I = 0x6

.field static final TRANSACTION_isNfcP2pModeEnabled:I = 0x8

.field static final TRANSACTION_isNfcRwModeEnabled:I = 0x7

.field static final TRANSACTION_isNfcSystemEnabled:I = 0x5

.field static final TRANSACTION_isWirelessChargingModeOn:I = 0xe

.field static final TRANSACTION_sendNfcTestCommand:I = 0xb

.field static final TRANSACTION_setLGSharingModeCallback:I = 0x12

.field static final TRANSACTION_setNfcAddonPreference:I = 0xd

.field static final TRANSACTION_setNfcPowerStatus:I = 0xf

.field static final TRANSACTION_setPresentUid:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p0, p0, v0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcAdapterAddon;
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
    const-string v1, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/lge/nfcaddon/INfcAdapterAddon;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getNfcSysState()I

    move-result v2

    .line 52
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v2    # "_result":I
    :sswitch_2
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getNfcCardState()I

    move-result v2

    .line 60
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v2    # "_result":I
    :sswitch_3
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getNfcDiscoveryState()I

    move-result v2

    .line 68
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v2    # "_result":I
    :sswitch_4
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getNfcP2pState()I

    move-result v2

    .line 76
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v2    # "_result":I
    :sswitch_5
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->isNfcSystemEnabled()Z

    move-result v2

    .line 84
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v2    # "_result":Z
    :sswitch_6
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->isNfcCardModeEnabled()Z

    move-result v2

    .line 92
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v2    # "_result":Z
    :sswitch_7
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->isNfcRwModeEnabled()Z

    move-result v2

    .line 100
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v2    # "_result":Z
    :sswitch_8
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->isNfcP2pModeEnabled()Z

    move-result v2

    .line 108
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v2    # "_result":Z
    :sswitch_9
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getCardEmulationInterface()Lcom/lge/nfcaddon/ICardEmulationAddon;

    move-result-object v2

    .line 116
    .local v2, "_result":Lcom/lge/nfcaddon/ICardEmulationAddon;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/lge/nfcaddon/ICardEmulationAddon;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_4
    move-object v3, v5

    goto :goto_1

    .line 122
    .end local v2    # "_result":Lcom/lge/nfcaddon/ICardEmulationAddon;
    :sswitch_a
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getGsmaNfcControllerInterface()Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v2

    .line 124
    .local v2, "_result":Lcom/lge/nfcaddon/IGsmaNfcController;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/lge/nfcaddon/IGsmaNfcController;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 130
    .end local v2    # "_result":Lcom/lge/nfcaddon/IGsmaNfcController;
    :sswitch_b
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 135
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->sendNfcTestCommand(I[B)Z

    move-result v2

    .line 136
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v2, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 143
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":Z
    :sswitch_c
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getNfcAddonPreference(I)Z

    move-result v2

    .line 147
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v2, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_d
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v1, v4

    .line 158
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->setNfcAddonPreference(IZ)Z

    move-result v2

    .line 159
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v2, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :cond_9
    move v1, v3

    .line 157
    goto :goto_2

    .line 165
    .end local v0    # "_arg0":I
    :sswitch_e
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->isWirelessChargingModeOn()Z

    move-result v2

    .line 167
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v2, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 173
    .end local v2    # "_result":Z
    :sswitch_f
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->setNfcPowerStatus(I)Z

    move-result v2

    .line 177
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v2, :cond_b

    move v3, v4

    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_10
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getNfcConfigureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->setPresentUid(I)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 202
    .end local v0    # "_arg0":I
    :sswitch_12
    const-string v5, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/nfcaddon/ILGSharingMessageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/ILGSharingMessageCallback;

    move-result-object v1

    .line 207
    .local v1, "_arg1":Lcom/lge/nfcaddon/ILGSharingMessageCallback;
    invoke-virtual {p0, v0, v1}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->setLGSharingModeCallback(Ljava/lang/String;Lcom/lge/nfcaddon/ILGSharingMessageCallback;)Z

    move-result v2

    .line 208
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v2, :cond_c

    move v3, v4

    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/lge/nfcaddon/ILGSharingMessageCallback;
    .end local v2    # "_result":Z
    :sswitch_13
    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->getNfcInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
