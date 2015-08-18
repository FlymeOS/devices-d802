.class public abstract Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;
.super Landroid/os/Binder;
.source "IWifiLgeExtManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/IWifiLgeExtManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/IWifiLgeExtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.IWifiLgeExtManager"

.field static final TRANSACTION_Channel5G_HiddenMenu:I = 0xf

.field static final TRANSACTION_Channel_HiddenMenu:I = 0xe

.field static final TRANSACTION_CloseDUT_HiddenMenu:I = 0x2

.field static final TRANSACTION_CodeRate_HiddenMenu:I = 0x28

.field static final TRANSACTION_FRError_HiddenMenu:I = 0x19

.field static final TRANSACTION_FRGood_HiddenMenu:I = 0x18

.field static final TRANSACTION_FRTotal_HiddenMenu:I = 0x17

.field static final TRANSACTION_FrequencyAccuracy5G_HiddenMenu:I = 0x1c

.field static final TRANSACTION_FrequencyAccuracy_HiddenMenu:I = 0x1b

.field static final TRANSACTION_IsRunning_HiddenMenu:I = 0x24

.field static final TRANSACTION_NoModTxStart_BCM_HiddenMenu:I = 0x22

.field static final TRANSACTION_NoModTxStart_HiddenMenu:I = 0x21

.field static final TRANSACTION_NoModTxStop_HiddenMenu:I = 0x23

.field static final TRANSACTION_OpMode_HiddenMenu:I = 0x27

.field static final TRANSACTION_OpenDUT_HiddenMenu:I = 0x1

.field static final TRANSACTION_OtaDisable_HiddenMenu:I = 0x20

.field static final TRANSACTION_OtaEnable_HiddenMenu:I = 0x1f

.field static final TRANSACTION_RSSI_HiddenMenu:I = 0x1a

.field static final TRANSACTION_RxPER_HiddenMenu:I = 0x26

.field static final TRANSACTION_RxStart_HiddenMenu:I = 0x5

.field static final TRANSACTION_RxStop_HiddenMenu:I = 0x6

.field static final TRANSACTION_Set11nPreamble_HiddenMenu:I = 0x16

.field static final TRANSACTION_SetChainExt_HiddenMenu:I = 0x2a

.field static final TRANSACTION_SetChain_HiddenMenu:I = 0x29

.field static final TRANSACTION_SetPreamble_HiddenMenu:I = 0x15

.field static final TRANSACTION_SetTxBF_HiddenMenu:I = 0x2b

.field static final TRANSACTION_TXBW_40M_HiddenMenu:I = 0x1d

.field static final TRANSACTION_TXBW_80M_HiddenMenu:I = 0x1e

.field static final TRANSACTION_TxBurstFrames_HiddenMenu:I = 0x13

.field static final TRANSACTION_TxBurstInterval_HiddenMenu:I = 0x11

.field static final TRANSACTION_TxDataRate11ac_HiddenMenu:I = 0xd

.field static final TRANSACTION_TxDataRate11n40M_HiddenMenu:I = 0xa

.field static final TRANSACTION_TxDataRate11n5G40M_HiddenMenu:I = 0xc

.field static final TRANSACTION_TxDataRate11n5G_HiddenMenu:I = 0xb

.field static final TRANSACTION_TxDataRate11n_HiddenMenu:I = 0x9

.field static final TRANSACTION_TxDataRate5G_HiddenMenu:I = 0x8

.field static final TRANSACTION_TxDataRate_HiddenMenu:I = 0x7

.field static final TRANSACTION_TxDestAddress_HiddenMenu:I = 0x14

.field static final TRANSACTION_TxGain_HiddenMenu:I = 0x10

.field static final TRANSACTION_TxPER_HiddenMenu:I = 0x25

.field static final TRANSACTION_TxPayloadLength_HiddenMenu:I = 0x12

.field static final TRANSACTION_TxStart_HiddenMenu:I = 0x3

.field static final TRANSACTION_TxStop_HiddenMenu:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWifiLgeExtManager;
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
    const-string v1, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/systemservice/core/IWifiLgeExtManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/lge/systemservice/core/IWifiLgeExtManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 491
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 45
    :sswitch_0
    const-string v6, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v0, v5

    .line 53
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->OpenDUT_HiddenMenu(Z)Z

    move-result v4

    .line 54
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_0

    move v6, v5

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_1
    move v0, v6

    .line 52
    goto :goto_1

    .line 60
    :sswitch_2
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v0, v5

    .line 63
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->CloseDUT_HiddenMenu(Z)Z

    move-result v4

    .line 64
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v4, :cond_2

    move v6, v5

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_3
    move v0, v6

    .line 62
    goto :goto_2

    .line 70
    :sswitch_3
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v0, v5

    .line 73
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxStart_HiddenMenu(Z)Z

    move-result v4

    .line 74
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v4, :cond_4

    move v6, v5

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_5
    move v0, v6

    .line 72
    goto :goto_3

    .line 80
    :sswitch_4
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    move v0, v5

    .line 83
    .restart local v0    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxStop_HiddenMenu(Z)Z

    move-result v4

    .line 84
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v4, :cond_6

    move v6, v5

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_7
    move v0, v6

    .line 82
    goto :goto_4

    .line 90
    :sswitch_5
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    move v0, v5

    .line 93
    .restart local v0    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->RxStart_HiddenMenu(Z)Z

    move-result v4

    .line 94
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v4, :cond_8

    move v6, v5

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_9
    move v0, v6

    .line 92
    goto :goto_5

    .line 100
    :sswitch_6
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    move v0, v5

    .line 103
    .restart local v0    # "_arg0":Z
    :goto_6
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->RxStop_HiddenMenu(Z)Z

    move-result v4

    .line 104
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v4, :cond_a

    move v6, v5

    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_b
    move v0, v6

    .line 102
    goto :goto_6

    .line 110
    :sswitch_7
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxDataRate_HiddenMenu(Ljava/lang/String;)Z

    move-result v4

    .line 114
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v4, :cond_c

    move v6, v5

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_8
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxDataRate5G_HiddenMenu(Ljava/lang/String;)Z

    move-result v4

    .line 124
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v4, :cond_d

    move v6, v5

    :cond_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 136
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxDataRate11n_HiddenMenu(III)Z

    move-result v4

    .line 138
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v4, :cond_e

    move v6, v5

    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxDataRate11n40M_HiddenMenu(III)Z

    move-result v4

    .line 152
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v4, :cond_f

    move v6, v5

    :cond_f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 158
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_b
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxDataRate11n5G_HiddenMenu(III)Z

    move-result v4

    .line 166
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v4, :cond_10

    move v6, v5

    :cond_10
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_c
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxDataRate11n5G40M_HiddenMenu(III)Z

    move-result v4

    .line 180
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v4, :cond_11

    move v6, v5

    :cond_11
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 186
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_d
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 190
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 192
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .restart local v2    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 195
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxDataRate11ac_HiddenMenu(IIII)Z

    move-result v4

    .line 196
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v4, :cond_12

    move v6, v5

    :cond_12
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 202
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :sswitch_e
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 206
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->Channel_HiddenMenu(II)Z

    move-result v4

    .line 208
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v4, :cond_13

    move v6, v5

    :cond_13
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_f
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->Channel5G_HiddenMenu(II)Z

    move-result v4

    .line 220
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v4, :cond_14

    move v6, v5

    :cond_14
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 226
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_10
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxGain_HiddenMenu(I)Z

    move-result v4

    .line 230
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v4, :cond_15

    move v6, v5

    :cond_15
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_11
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 239
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxBurstInterval_HiddenMenu(I)Z

    move-result v4

    .line 240
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v4, :cond_16

    move v6, v5

    :cond_16
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 246
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_12
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 249
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxPayloadLength_HiddenMenu(I)Z

    move-result v4

    .line 250
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v4, :cond_17

    move v6, v5

    :cond_17
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 256
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_13
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxBurstFrames_HiddenMenu(I)Z

    move-result v4

    .line 260
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v4, :cond_18

    move v6, v5

    :cond_18
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 266
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_14
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxDestAddress_HiddenMenu(Ljava/lang/String;)Z

    move-result v4

    .line 270
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v4, :cond_19

    move v6, v5

    :cond_19
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 276
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_15
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->SetPreamble_HiddenMenu(I)Z

    move-result v4

    .line 280
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v4, :cond_1a

    move v6, v5

    :cond_1a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 286
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_16
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->Set11nPreamble_HiddenMenu(I)Z

    move-result v4

    .line 290
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v4, :cond_1b

    move v6, v5

    :cond_1b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 296
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_17
    const-string v6, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->FRTotal_HiddenMenu()I

    move-result v4

    .line 298
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 304
    .end local v4    # "_result":I
    :sswitch_18
    const-string v6, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->FRGood_HiddenMenu()I

    move-result v4

    .line 306
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 312
    .end local v4    # "_result":I
    :sswitch_19
    const-string v6, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->FRError_HiddenMenu()I

    move-result v4

    .line 314
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 320
    .end local v4    # "_result":I
    :sswitch_1a
    const-string v6, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->RSSI_HiddenMenu()I

    move-result v4

    .line 322
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 328
    .end local v4    # "_result":I
    :sswitch_1b
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->FrequencyAccuracy_HiddenMenu(Ljava/lang/String;I)Z

    move-result v4

    .line 334
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    if-eqz v4, :cond_1c

    move v6, v5

    :cond_1c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 340
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_1c
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 344
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 345
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->FrequencyAccuracy5G_HiddenMenu(Ljava/lang/String;I)Z

    move-result v4

    .line 346
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    if-eqz v4, :cond_1d

    move v6, v5

    :cond_1d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 352
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_1d
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 355
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TXBW_40M_HiddenMenu(I)Z

    move-result v4

    .line 356
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    if-eqz v4, :cond_1e

    move v6, v5

    :cond_1e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 362
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_1e
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 365
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TXBW_80M_HiddenMenu(I)Z

    move-result v4

    .line 366
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    if-eqz v4, :cond_1f

    move v6, v5

    :cond_1f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 372
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_1f
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->OtaEnable_HiddenMenu()Z

    move-result v4

    .line 374
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    if-eqz v4, :cond_20

    move v6, v5

    :cond_20
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 380
    .end local v4    # "_result":Z
    :sswitch_20
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->OtaDisable_HiddenMenu()Z

    move-result v4

    .line 382
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    if-eqz v4, :cond_21

    move v6, v5

    :cond_21
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 388
    .end local v4    # "_result":Z
    :sswitch_21
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->NoModTxStart_HiddenMenu()Z

    move-result v4

    .line 390
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    if-eqz v4, :cond_22

    move v6, v5

    :cond_22
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 396
    .end local v4    # "_result":Z
    :sswitch_22
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 399
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->NoModTxStart_BCM_HiddenMenu(I)Z

    move-result v4

    .line 400
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    if-eqz v4, :cond_23

    move v6, v5

    :cond_23
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 406
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_23
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->NoModTxStop_HiddenMenu()Z

    move-result v4

    .line 408
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v4, :cond_24

    move v6, v5

    :cond_24
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 414
    .end local v4    # "_result":Z
    :sswitch_24
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->IsRunning_HiddenMenu()Z

    move-result v4

    .line 416
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v4, :cond_25

    move v6, v5

    :cond_25
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 422
    .end local v4    # "_result":Z
    :sswitch_25
    const-string v6, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->TxPER_HiddenMenu(Ljava/lang/String;)I

    move-result v4

    .line 426
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 432
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_26
    const-string v6, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->RxPER_HiddenMenu(Ljava/lang/String;)I

    move-result v4

    .line 436
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 442
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_27
    const-string v6, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->OpMode_HiddenMenu(Ljava/lang/String;)I

    move-result v4

    .line 446
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 452
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_28
    const-string v6, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->CodeRate_HiddenMenu(Ljava/lang/String;)I

    move-result v4

    .line 456
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 462
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_29
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 465
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->SetChain_HiddenMenu(I)Z

    move-result v4

    .line 466
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    if-eqz v4, :cond_26

    move v6, v5

    :cond_26
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 472
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_2a
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 475
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->SetChainExt_HiddenMenu(I)Z

    move-result v4

    .line 476
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    if-eqz v4, :cond_27

    move v6, v5

    :cond_27
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 482
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_2b
    const-string v7, "com.lge.systemservice.core.IWifiLgeExtManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 485
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->SetTxBF_HiddenMenu(I)Z

    move-result v4

    .line 486
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    if-eqz v4, :cond_28

    move v6, v5

    :cond_28
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

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
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
