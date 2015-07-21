.class public abstract Lcom/lge/systemservice/core/IFeliCaManager$Stub;
.super Landroid/os/Binder;
.source "IFeliCaManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/IFeliCaManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/IFeliCaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IFeliCaManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.IFeliCaManager"

.field static final TRANSACTION_cmdEXTIDM:I = 0x1

.field static final TRANSACTION_cmdFreqCalRange:I = 0x9

.field static final TRANSACTION_cmdFreqCalRead:I = 0x8

.field static final TRANSACTION_cmdFreqCalWrite:I = 0x7

.field static final TRANSACTION_cmdIDM:I = 0x2

.field static final TRANSACTION_cmdRFIDCK:I = 0x3

.field static final TRANSACTION_cmdRFRegCalCheck:I = 0xb

.field static final TRANSACTION_cmdRFRegCalLoad:I = 0xa

.field static final TRANSACTION_cmdSwitchRange:I = 0x4

.field static final TRANSACTION_cmdSwitchRead:I = 0x6

.field static final TRANSACTION_cmdSwitchWrite:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IFeliCaManager;
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
    const-string v1, "com.lge.systemservice.core.IFeliCaManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/systemservice/core/IFeliCaManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/IFeliCaManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lge/systemservice/core/IFeliCaManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 50
    .local v1, "_arg0_length":I
    if-gez v1, :cond_1

    .line 51
    const/4 v0, 0x0

    .line 56
    .local v0, "_arg0":[B
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdEXTIDM([B)Z

    move-result v2

    .line 57
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 54
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":Z
    :cond_1
    new-array v0, v1, [B

    .restart local v0    # "_arg0":[B
    goto :goto_1

    .line 64
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg0_length":I
    :sswitch_2
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_3

    .line 68
    const/4 v0, 0x0

    .line 73
    .local v0, "_arg0":[Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdIDM([Ljava/lang/String;)Z

    move-result v2

    .line 74
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_result":Z
    :cond_3
    new-array v0, v1, [Ljava/lang/String;

    .restart local v0    # "_arg0":[Ljava/lang/String;
    goto :goto_2

    .line 81
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg0_length":I
    :sswitch_3
    const-string v3, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdRFIDCK()I

    move-result v2

    .line 83
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v2    # "_result":I
    :sswitch_4
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_5

    .line 93
    const/4 v0, 0x0

    .line 98
    .restart local v0    # "_arg0":[Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdSwitchRange([Ljava/lang/String;)Z

    move-result v2

    .line 99
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_result":Z
    :cond_5
    new-array v0, v1, [Ljava/lang/String;

    .restart local v0    # "_arg0":[Ljava/lang/String;
    goto :goto_3

    .line 106
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg0_length":I
    :sswitch_5
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdSwitchWrite(I)Z

    move-result v2

    .line 110
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v2, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_6
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 119
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_8

    .line 120
    const/4 v0, 0x0

    .line 125
    .local v0, "_arg0":[Ljava/lang/String;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdSwitchRead([Ljava/lang/String;)Z

    move-result v2

    .line 126
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v2, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_result":Z
    :cond_8
    new-array v0, v1, [Ljava/lang/String;

    .restart local v0    # "_arg0":[Ljava/lang/String;
    goto :goto_4

    .line 133
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg0_length":I
    :sswitch_7
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 136
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdFreqCalWrite(F)Z

    move-result v2

    .line 137
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v2, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v0    # "_arg0":F
    .end local v2    # "_result":Z
    :sswitch_8
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_b

    .line 147
    const/4 v0, 0x0

    .line 152
    .local v0, "_arg0":[Ljava/lang/String;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdFreqCalRead([Ljava/lang/String;)Z

    move-result v2

    .line 153
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v2, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_result":Z
    :cond_b
    new-array v0, v1, [Ljava/lang/String;

    .restart local v0    # "_arg0":[Ljava/lang/String;
    goto :goto_5

    .line 160
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg0_length":I
    :sswitch_9
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_d

    .line 164
    const/4 v0, 0x0

    .line 169
    .restart local v0    # "_arg0":[Ljava/lang/String;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdFreqCalRange([Ljava/lang/String;)Z

    move-result v2

    .line 170
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v2, :cond_c

    move v3, v4

    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_result":Z
    :cond_d
    new-array v0, v1, [Ljava/lang/String;

    .restart local v0    # "_arg0":[Ljava/lang/String;
    goto :goto_6

    .line 177
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg0_length":I
    :sswitch_a
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdRFRegCalLoad()Z

    move-result v2

    .line 179
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v2, :cond_e

    move v3, v4

    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v2    # "_result":Z
    :sswitch_b
    const-string v5, "com.lge.systemservice.core.IFeliCaManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IFeliCaManager$Stub;->cmdRFRegCalCheck()Z

    move-result v2

    .line 187
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v2, :cond_f

    move v3, v4

    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

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
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
