.class public abstract Lcom/lge/fmccall/IFmcCallInterface$Stub;
.super Landroid/os/Binder;
.source "IFmcCallInterface.java"

# interfaces
.implements Lcom/lge/fmccall/IFmcCallInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/fmccall/IFmcCallInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/fmccall/IFmcCallInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.fmccall.IFmcCallInterface"

.field static final TRANSACTION_answerFmcCall:I = 0x6

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0x5

.field static final TRANSACTION_endActiveFmcCall:I = 0x2

.field static final TRANSACTION_endFmcCall:I = 0x1

.field static final TRANSACTION_endRingingFmcCall:I = 0x3

.field static final TRANSACTION_getFmcCallState:I = 0x4

.field static final TRANSACTION_getRingingCallNumber:I = 0x7

.field static final TRANSACTION_getVoipNumber:I = 0x11

.field static final TRANSACTION_holdFmcCall:I = 0xf

.field static final TRANSACTION_isIdle:I = 0xc

.field static final TRANSACTION_isOffhook:I = 0xa

.field static final TRANSACTION_isRinging:I = 0xb

.field static final TRANSACTION_resumeFmcCall:I = 0x10

.field static final TRANSACTION_showCallScreen:I = 0x8

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x9

.field static final TRANSACTION_silenceRinger:I = 0xd

.field static final TRANSACTION_swapFmcCall:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p0, p0, v0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/fmccall/IFmcCallInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.lge.fmccall.IFmcCallInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/fmccall/IFmcCallInterface;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/lge/fmccall/IFmcCallInterface;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/lge/fmccall/IFmcCallInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
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

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 49
    :sswitch_0
    const-string v2, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v4, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->endFmcCall()Z

    move-result v1

    .line 56
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 62
    .end local v1    # "_result":Z
    :sswitch_2
    const-string v4, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->endActiveFmcCall()Z

    move-result v1

    .line 64
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v1    # "_result":Z
    :sswitch_3
    const-string v4, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->endRingingFmcCall()Z

    move-result v1

    .line 72
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v1    # "_result":Z
    :sswitch_4
    const-string v2, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->getFmcCallState()I

    move-result v1

    .line 80
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v1    # "_result":I
    :sswitch_5
    const-string v2, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->cancelMissedCallsNotification()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    :sswitch_6
    const-string v2, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->answerFmcCall()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    :sswitch_7
    const-string v2, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->getRingingCallNumber()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string v4, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->showCallScreen()Z

    move-result v1

    .line 110
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v1    # "_result":Z
    :sswitch_9
    const-string v4, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v0, v3

    .line 119
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v1

    .line 120
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_5
    move v0, v2

    .line 118
    goto :goto_1

    .line 126
    :sswitch_a
    const-string v4, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->isOffhook()Z

    move-result v1

    .line 128
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v1    # "_result":Z
    :sswitch_b
    const-string v4, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->isRinging()Z

    move-result v1

    .line 136
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v1    # "_result":Z
    :sswitch_c
    const-string v4, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->isIdle()Z

    move-result v1

    .line 144
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v1    # "_result":Z
    :sswitch_d
    const-string v2, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->silenceRinger()V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 157
    :sswitch_e
    const-string v2, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->swapFmcCall()V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 164
    :sswitch_f
    const-string v2, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->holdFmcCall()V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 171
    :sswitch_10
    const-string v2, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->resumeFmcCall()V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 178
    :sswitch_11
    const-string v2, "com.lge.fmccall.IFmcCallInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/lge/fmccall/IFmcCallInterface$Stub;->getVoipNumber()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
