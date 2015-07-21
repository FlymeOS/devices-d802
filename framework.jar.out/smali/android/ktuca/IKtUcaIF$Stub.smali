.class public abstract Landroid/ktuca/IKtUcaIF$Stub;
.super Landroid/os/Binder;
.source "IKtUcaIF.java"

# interfaces
.implements Landroid/ktuca/IKtUcaIF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ktuca/IKtUcaIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ktuca/IKtUcaIF$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.ktuca.IKtUcaIF"

.field static final TRANSACTION_KUCA_CHInit:I = 0x13

.field static final TRANSACTION_KUCA_Close:I = 0x10

.field static final TRANSACTION_KUCA_CloseT:I = 0x19

.field static final TRANSACTION_KUCA_KUH_Establish:I = 0x15

.field static final TRANSACTION_KUCA_KUH_Release:I = 0x16

.field static final TRANSACTION_KUCA_KUH_Transmit:I = 0x17

.field static final TRANSACTION_KUCA_Open:I = 0xe

.field static final TRANSACTION_KUCA_OpenT:I = 0x18

.field static final TRANSACTION_KUCA_Transmit:I = 0xf

.field static final TRANSACTION_KUCA_UCAVersion:I = 0x12

.field static final TRANSACTION_KUCA_getHandle:I = 0x3

.field static final TRANSACTION_KUCA_getICCID:I = 0x6

.field static final TRANSACTION_KUCA_getIMSI:I = 0x5

.field static final TRANSACTION_KUCA_getMDN:I = 0x8

.field static final TRANSACTION_KUCA_getMODEL:I = 0x9

.field static final TRANSACTION_KUCA_getMSISDN:I = 0x4

.field static final TRANSACTION_KUCA_getPUID:I = 0x7

.field static final TRANSACTION_KUCA_getPinStatus:I = 0xc

.field static final TRANSACTION_KUCA_getSIMInfo:I = 0xa

.field static final TRANSACTION_KUCA_getSimStatus:I = 0x11

.field static final TRANSACTION_KUCA_printCHInfo:I = 0x14

.field static final TRANSACTION_KUCA_usimAUTH:I = 0xb

.field static final TRANSACTION_KUCA_verifyPin:I = 0xd

.field static final TRANSACTION_getResource:I = 0x1

.field static final TRANSACTION_releaseResource:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p0, p0, v0}, Landroid/ktuca/IKtUcaIF$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/ktuca/IKtUcaIF;
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
    const-string v1, "android.ktuca.IKtUcaIF"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/ktuca/IKtUcaIF;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/ktuca/IKtUcaIF;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/ktuca/IKtUcaIF$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 646
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/ktuca/IKtUcaIF$Stub;->getResource()I

    move-result v10

    .line 50
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 56
    .end local v10    # "_result":I
    :sswitch_2
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/ktuca/IKtUcaIF$Stub;->releaseResource()I

    move-result v10

    .line 58
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    .end local v10    # "_result":I
    :sswitch_3
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 68
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 70
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 72
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 74
    .local v4, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .local v5, "_arg4":[I
    move-object v0, p0

    .line 75
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getHandle([B[B[B[B[I)J

    move-result-wide v10

    .line 76
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 79
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 80
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v10    # "_result":J
    :sswitch_4
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 88
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 89
    .local v6, "_arg1_length":I
    if-gez v6, :cond_0

    .line 90
    const/4 v2, 0x0

    .line 96
    .restart local v2    # "_arg1":[B
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 97
    .local v7, "_arg2_length":I
    if-gez v7, :cond_1

    .line 98
    const/4 v3, 0x0

    .line 104
    .local v3, "_arg2":[I
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 106
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, "_arg4":[B
    move-object v0, p0

    .line 107
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMSISDN([B[B[II[B)J

    move-result-wide v10

    .line 108
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 112
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 93
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_0
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_1

    .line 101
    .restart local v7    # "_arg2_length":I
    :cond_1
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_2

    .line 116
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_5
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 120
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 121
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_2

    .line 122
    const/4 v2, 0x0

    .line 128
    .restart local v2    # "_arg1":[B
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 129
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_3

    .line 130
    const/4 v3, 0x0

    .line 136
    .restart local v3    # "_arg2":[I
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 138
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5    # "_arg4":[B
    move-object v0, p0

    .line 139
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v10

    .line 140
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 143
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 144
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 125
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_2
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_3

    .line 133
    .restart local v7    # "_arg2_length":I
    :cond_3
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_4

    .line 148
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_6
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 152
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 153
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_4

    .line 154
    const/4 v2, 0x0

    .line 160
    .restart local v2    # "_arg1":[B
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 161
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_5

    .line 162
    const/4 v3, 0x0

    .line 168
    .restart local v3    # "_arg2":[I
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 170
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5    # "_arg4":[B
    move-object v0, p0

    .line 171
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v10

    .line 172
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 175
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 176
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 157
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_4
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_5

    .line 165
    .restart local v7    # "_arg2_length":I
    :cond_5
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_6

    .line 180
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_7
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 184
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 185
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_6

    .line 186
    const/4 v2, 0x0

    .line 192
    .restart local v2    # "_arg1":[B
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 193
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_7

    .line 194
    const/4 v3, 0x0

    .line 200
    .restart local v3    # "_arg2":[I
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 202
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5    # "_arg4":[B
    move-object v0, p0

    .line 203
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v10

    .line 204
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 206
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 207
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 208
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 189
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_6
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_7

    .line 197
    .restart local v7    # "_arg2_length":I
    :cond_7
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_8

    .line 212
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_8
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 216
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 217
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_8

    .line 218
    const/4 v2, 0x0

    .line 224
    .restart local v2    # "_arg1":[B
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 225
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_9

    .line 226
    const/4 v3, 0x0

    .line 232
    .restart local v3    # "_arg2":[I
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 234
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5    # "_arg4":[B
    move-object v0, p0

    .line 235
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v10

    .line 236
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 239
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 240
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 221
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_8
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_9

    .line 229
    .restart local v7    # "_arg2_length":I
    :cond_9
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_a

    .line 244
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_9
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 248
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 249
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_a

    .line 250
    const/4 v2, 0x0

    .line 256
    .restart local v2    # "_arg1":[B
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 257
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_b

    .line 258
    const/4 v3, 0x0

    .line 264
    .restart local v3    # "_arg2":[I
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 266
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5    # "_arg4":[B
    move-object v0, p0

    .line 267
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v10

    .line 268
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 270
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 271
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 272
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 253
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_a
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_b

    .line 261
    .restart local v7    # "_arg2_length":I
    :cond_b
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_c

    .line 276
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_a
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 280
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 281
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_c

    .line 282
    const/4 v2, 0x0

    .line 288
    .restart local v2    # "_arg1":[B
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 289
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_d

    .line 290
    const/4 v3, 0x0

    .line 295
    .restart local v3    # "_arg2":[I
    :goto_e
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v10

    .line 296
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 298
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 299
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 285
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_c
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_d

    .line 293
    .restart local v7    # "_arg2_length":I
    :cond_d
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_e

    .line 304
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_b
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 308
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 310
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 312
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 313
    .local v8, "_arg3_length":I
    if-gez v8, :cond_e

    .line 314
    const/4 v4, 0x0

    .line 320
    .local v4, "_arg3":[B
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 321
    .local v9, "_arg4_length":I
    if-gez v9, :cond_f

    .line 322
    const/4 v5, 0x0

    .local v5, "_arg4":[I
    :goto_10
    move-object v0, p0

    .line 327
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v10

    .line 328
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 330
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 331
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 332
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 317
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v9    # "_arg4_length":I
    .end local v10    # "_result":J
    :cond_e
    new-array v4, v8, [B

    .restart local v4    # "_arg3":[B
    goto :goto_f

    .line 325
    .restart local v9    # "_arg4_length":I
    :cond_f
    new-array v5, v9, [I

    .restart local v5    # "_arg4":[I
    goto :goto_10

    .line 336
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v8    # "_arg3_length":I
    .end local v9    # "_arg4_length":I
    :sswitch_c
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 340
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 343
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_10

    .line 344
    const/4 v3, 0x0

    .line 350
    .restart local v3    # "_arg2":[B
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 351
    .restart local v8    # "_arg3_length":I
    if-gez v8, :cond_11

    .line 352
    const/4 v4, 0x0

    .line 357
    .local v4, "_arg3":[I
    :goto_12
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v10

    .line 358
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 360
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 361
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 362
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 347
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[I
    .end local v8    # "_arg3_length":I
    .end local v10    # "_result":J
    :cond_10
    new-array v3, v7, [B

    .restart local v3    # "_arg2":[B
    goto :goto_11

    .line 355
    .restart local v8    # "_arg3_length":I
    :cond_11
    new-array v4, v8, [I

    .restart local v4    # "_arg3":[I
    goto :goto_12

    .line 366
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[I
    .end local v7    # "_arg2_length":I
    .end local v8    # "_arg3_length":I
    :sswitch_d
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 370
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 372
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 375
    .restart local v8    # "_arg3_length":I
    if-gez v8, :cond_12

    .line 376
    const/4 v4, 0x0

    .line 382
    .local v4, "_arg3":[B
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 383
    .restart local v9    # "_arg4_length":I
    if-gez v9, :cond_13

    .line 384
    const/4 v5, 0x0

    .restart local v5    # "_arg4":[I
    :goto_14
    move-object v0, p0

    .line 389
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v10

    .line 390
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 392
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 393
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 394
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 379
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v9    # "_arg4_length":I
    .end local v10    # "_result":J
    :cond_12
    new-array v4, v8, [B

    .restart local v4    # "_arg3":[B
    goto :goto_13

    .line 387
    .restart local v9    # "_arg4_length":I
    :cond_13
    new-array v5, v9, [I

    .restart local v5    # "_arg4":[I
    goto :goto_14

    .line 398
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v8    # "_arg3_length":I
    .end local v9    # "_arg4_length":I
    :sswitch_e
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 402
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 403
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_14

    .line 404
    const/4 v2, 0x0

    .line 410
    .local v2, "_arg1":[B
    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 411
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_15

    .line 412
    const/4 v3, 0x0

    .line 417
    .local v3, "_arg2":[I
    :goto_16
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Open([B[B[I)J

    move-result-wide v10

    .line 418
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 420
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 421
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 422
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 407
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_14
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_15

    .line 415
    .restart local v7    # "_arg2_length":I
    :cond_15
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_16

    .line 426
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_f
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 430
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 432
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 434
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 435
    .restart local v8    # "_arg3_length":I
    if-gez v8, :cond_16

    .line 436
    const/4 v4, 0x0

    .line 442
    .restart local v4    # "_arg3":[B
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 443
    .restart local v9    # "_arg4_length":I
    if-gez v9, :cond_17

    .line 444
    const/4 v5, 0x0

    .restart local v5    # "_arg4":[I
    :goto_18
    move-object v0, p0

    .line 449
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v10

    .line 450
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 452
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 453
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 454
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 439
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v9    # "_arg4_length":I
    .end local v10    # "_result":J
    :cond_16
    new-array v4, v8, [B

    .restart local v4    # "_arg3":[B
    goto :goto_17

    .line 447
    .restart local v9    # "_arg4_length":I
    :cond_17
    new-array v5, v9, [I

    .restart local v5    # "_arg4":[I
    goto :goto_18

    .line 458
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v8    # "_arg3_length":I
    .end local v9    # "_arg4_length":I
    :sswitch_10
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 462
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 463
    .local v2, "_arg1":B
    invoke-virtual {p0, v1, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Close([BB)J

    move-result-wide v10

    .line 464
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 466
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 470
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":B
    .end local v10    # "_result":J
    :sswitch_11
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 474
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 475
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_18

    .line 476
    const/4 v2, 0x0

    .line 481
    .local v2, "_arg1":[B
    :goto_19
    invoke-virtual {p0, v1, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSimStatus([B[B)J

    move-result-wide v10

    .line 482
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 484
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 485
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 479
    .end local v2    # "_arg1":[B
    .end local v10    # "_result":J
    :cond_18
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_19

    .line 489
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v6    # "_arg1_length":I
    :sswitch_12
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 493
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 494
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_19

    .line 495
    const/4 v2, 0x0

    .line 501
    .restart local v2    # "_arg1":[B
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 502
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_1a

    .line 503
    const/4 v3, 0x0

    .line 508
    .local v3, "_arg2":[I
    :goto_1b
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v10

    .line 509
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 511
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 512
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 513
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 498
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_19
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_1a

    .line 506
    .restart local v7    # "_arg2_length":I
    :cond_1a
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_1b

    .line 517
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_13
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 521
    .local v1, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 522
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_1b

    .line 523
    const/4 v2, 0x0

    .line 529
    .restart local v2    # "_arg1":[B
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 530
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_1c

    .line 531
    const/4 v3, 0x0

    .line 536
    .restart local v3    # "_arg2":[I
    :goto_1d
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CHInit(B[B[I)J

    move-result-wide v10

    .line 537
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 539
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 540
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 541
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 526
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_1b
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_1c

    .line 534
    .restart local v7    # "_arg2_length":I
    :cond_1c
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_1d

    .line 545
    .end local v1    # "_arg0":B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_14
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 548
    .restart local v1    # "_arg0":B
    invoke-virtual {p0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_printCHInfo(B)J

    move-result-wide v10

    .line 549
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 551
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 555
    .end local v1    # "_arg0":B
    .end local v10    # "_result":J
    :sswitch_15
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 558
    .restart local v1    # "_arg0":B
    invoke-virtual {p0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Establish(B)J

    move-result-wide v10

    .line 559
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 561
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 565
    .end local v1    # "_arg0":B
    .end local v10    # "_result":J
    :sswitch_16
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 568
    .restart local v1    # "_arg0":B
    invoke-virtual {p0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Release(B)J

    move-result-wide v10

    .line 569
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 571
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 575
    .end local v1    # "_arg0":B
    .end local v10    # "_result":J
    :sswitch_17
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 579
    .restart local v1    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 581
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 583
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 584
    .restart local v8    # "_arg3_length":I
    if-gez v8, :cond_1d

    .line 585
    const/4 v4, 0x0

    .line 591
    .restart local v4    # "_arg3":[B
    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 592
    .restart local v9    # "_arg4_length":I
    if-gez v9, :cond_1e

    .line 593
    const/4 v5, 0x0

    .restart local v5    # "_arg4":[I
    :goto_1f
    move-object v0, p0

    .line 598
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v10

    .line 599
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 601
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 602
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 603
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 588
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v9    # "_arg4_length":I
    .end local v10    # "_result":J
    :cond_1d
    new-array v4, v8, [B

    .restart local v4    # "_arg3":[B
    goto :goto_1e

    .line 596
    .restart local v9    # "_arg4_length":I
    :cond_1e
    new-array v5, v9, [I

    .restart local v5    # "_arg4":[I
    goto :goto_1f

    .line 607
    .end local v1    # "_arg0":B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v8    # "_arg3_length":I
    .end local v9    # "_arg4_length":I
    :sswitch_18
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 611
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 612
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_1f

    .line 613
    const/4 v2, 0x0

    .line 619
    .restart local v2    # "_arg1":[B
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 620
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_20

    .line 621
    const/4 v3, 0x0

    .line 626
    .local v3, "_arg2":[I
    :goto_21
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_OpenT([B[B[I)J

    move-result-wide v10

    .line 627
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 629
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 630
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 631
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 616
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_1f
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_20

    .line 624
    .restart local v7    # "_arg2_length":I
    :cond_20
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_21

    .line 635
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_19
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 639
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 640
    .local v2, "_arg1":B
    invoke-virtual {p0, v1, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CloseT([BB)J

    move-result-wide v10

    .line 641
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 643
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
