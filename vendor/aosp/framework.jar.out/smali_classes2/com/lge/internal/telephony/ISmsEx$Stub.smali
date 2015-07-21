.class public abstract Lcom/lge/internal/telephony/ISmsEx$Stub;
.super Landroid/os/Binder;
.source "ISmsEx.java"

# interfaces
.implements Lcom/lge/internal/telephony/ISmsEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/telephony/ISmsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/telephony/ISmsEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.internal.telephony.ISmsEx"

.field static final TRANSACTION_copySmsToIccEf:I = 0x6

.field static final TRANSACTION_copySmsToIccEfForSubscriber:I = 0x21

.field static final TRANSACTION_copySmsToIccEfPrivate:I = 0xd

.field static final TRANSACTION_copySmsToIccEfPrivateForSubscriber:I = 0xe

.field static final TRANSACTION_disableGsmBroadcastRange:I = 0x20

.field static final TRANSACTION_enableAutoDCDisconnect:I = 0x18

.field static final TRANSACTION_enableGsmBroadcastRange:I = 0x1f

.field static final TRANSACTION_getIsSimFull:I = 0x1c

.field static final TRANSACTION_getMaxEfSms:I = 0x4

.field static final TRANSACTION_getMaxEfSmsForSubscriber:I = 0x22

.field static final TRANSACTION_getMaxEfSmsMultiModeForSubscriber:I = 0xf

.field static final TRANSACTION_getSmscenterAddress:I = 0x2

.field static final TRANSACTION_getSmscenterAddressForSubscriber:I = 0x24

.field static final TRANSACTION_getUiccType:I = 0x11

.field static final TRANSACTION_insertDBForLGMessage:I = 0x1d

.field static final TRANSACTION_isBlockSendMessage:I = 0x28

.field static final TRANSACTION_isFdnEnabled:I = 0x19

.field static final TRANSACTION_isFdnEnabledOnSubscription:I = 0x26

.field static final TRANSACTION_sendEmailoverMultipartText:I = 0x15

.field static final TRANSACTION_sendEmailoverText:I = 0x14

.field static final TRANSACTION_sendMultipartTextLge:I = 0x17

.field static final TRANSACTION_sendMultipartTextWithCbAddress:I = 0x9

.field static final TRANSACTION_sendMultipartTextWithMsgOption:I = 0xb

.field static final TRANSACTION_sendReadReceipt:I = 0xc

.field static final TRANSACTION_sendTextLge:I = 0x16

.field static final TRANSACTION_sendTextWithCbAddress:I = 0x8

.field static final TRANSACTION_sendTextWithMsgOption:I = 0xa

.field static final TRANSACTION_setIsSimFull:I = 0x1b

.field static final TRANSACTION_setMultipartTextValidityPeriod:I = 0x1

.field static final TRANSACTION_setMultipartTextValidityPeriodForSubscriber:I = 0x27

.field static final TRANSACTION_setSmsIsRoaming:I = 0x1a

.field static final TRANSACTION_setSmsPriority:I = 0x7

.field static final TRANSACTION_setSmscenterAddress:I = 0x3

.field static final TRANSACTION_setSmscenterAddressForSubscriber:I = 0x25

.field static final TRANSACTION_setUiccType:I = 0x10

.field static final TRANSACTION_smsReceptionBlockingforNIAPPolicy:I = 0x1e

.field static final TRANSACTION_updateMessageOnIccEfMultiMode:I = 0x12

.field static final TRANSACTION_updateMessageOnIccEfMultiModeForSubscriber:I = 0x13

.field static final TRANSACTION_updateSmsOnSimReadStatus:I = 0x5

.field static final TRANSACTION_updateSmsOnSimReadStatusForSubscriber:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.lge.internal.telephony.ISmsEx"

    invoke-virtual {p0, p0, v0}, Lcom/lge/internal/telephony/ISmsEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ISmsEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-string v1, "com.lge.internal.telephony.ISmsEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/internal/telephony/ISmsEx;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/lge/internal/telephony/ISmsEx;

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lcom/lge/internal/telephony/ISmsEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/internal/telephony/ISmsEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 48
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
    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 661
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 56
    :sswitch_0
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    const/4 v4, 0x1

    goto :goto_0

    .line 61
    :sswitch_1
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 64
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setMultipartTextValidityPeriod(I)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v4, 0x1

    goto :goto_0

    .line 70
    .end local v5    # "_arg0":I
    :sswitch_2
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getSmscenterAddress()Ljava/lang/String;

    move-result-object v43

    .line 72
    .local v43, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    const/4 v4, 0x1

    goto :goto_0

    .line 78
    .end local v43    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setSmscenterAddress(Ljava/lang/String;)Z

    move-result v43

    .line 82
    .local v43, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v43, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v4, 0x1

    goto :goto_0

    .line 83
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 88
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":Z
    :sswitch_4
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getMaxEfSms()I

    move-result v43

    .line 90
    .local v43, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/4 v4, 0x1

    goto :goto_0

    .line 96
    .end local v43    # "_result":I
    :sswitch_5
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 100
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v6, 0x1

    .line 101
    .local v6, "_arg1":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/lge/internal/telephony/ISmsEx$Stub;->updateSmsOnSimReadStatus(IZ)Z

    move-result v43

    .line 102
    .local v43, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v43, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 100
    .end local v6    # "_arg1":Z
    .end local v43    # "_result":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 103
    .restart local v6    # "_arg1":Z
    .restart local v43    # "_result":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 108
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Z
    .end local v43    # "_result":Z
    :sswitch_6
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 112
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 114
    .local v6, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 115
    .local v7, "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/lge/internal/telephony/ISmsEx$Stub;->copySmsToIccEf(I[B[B)I

    move-result v43

    .line 116
    .local v43, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 122
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":[B
    .end local v43    # "_result":I
    :sswitch_7
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 125
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setSmsPriority(I)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 131
    .end local v5    # "_arg0":I
    :sswitch_8
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 148
    .local v9, "_arg4":Landroid/app/PendingIntent;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 149
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 155
    .local v10, "_arg5":Landroid/app/PendingIntent;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg6":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 156
    invoke-virtual/range {v4 .. v11}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendTextWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 145
    .end local v9    # "_arg4":Landroid/app/PendingIntent;
    .end local v10    # "_arg5":Landroid/app/PendingIntent;
    .end local v11    # "_arg6":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_4

    .line 152
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_5

    .line 162
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/app/PendingIntent;
    .end local v10    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_9
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 166
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 168
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 170
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 172
    .local v16, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 174
    .local v17, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .line 176
    .local v18, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg6":Ljava/lang/String;
    move-object/from16 v12, p0

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v19, v11

    .line 177
    invoke-virtual/range {v12 .. v19}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendMultipartTextWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 183
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v18    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_a
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 187
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 189
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 191
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 193
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 194
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 200
    .restart local v9    # "_arg4":Landroid/app/PendingIntent;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 201
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 207
    .restart local v10    # "_arg5":Landroid/app/PendingIntent;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 208
    sget-object v4, Lcom/lge/internal/telephony/LGSendingSMSOption;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lge/internal/telephony/LGSendingSMSOption;

    .local v11, "_arg6":Lcom/lge/internal/telephony/LGSendingSMSOption;
    :goto_8
    move-object/from16 v4, p0

    .line 213
    invoke-virtual/range {v4 .. v11}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendTextWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/lge/internal/telephony/LGSendingSMSOption;)V

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 197
    .end local v9    # "_arg4":Landroid/app/PendingIntent;
    .end local v10    # "_arg5":Landroid/app/PendingIntent;
    .end local v11    # "_arg6":Lcom/lge/internal/telephony/LGSendingSMSOption;
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_6

    .line 204
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_7

    .line 211
    :cond_7
    const/4 v11, 0x0

    .restart local v11    # "_arg6":Lcom/lge/internal/telephony/LGSendingSMSOption;
    goto :goto_8

    .line 219
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/app/PendingIntent;
    .end local v10    # "_arg5":Landroid/app/PendingIntent;
    .end local v11    # "_arg6":Lcom/lge/internal/telephony/LGSendingSMSOption;
    :sswitch_b
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 223
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 225
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 227
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 229
    .restart local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 231
    .restart local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .line 233
    .restart local v18    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Lcom/lge/internal/telephony/LGSendingSMSOption;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v19

    .local v19, "_arg6":Ljava/util/List;, "Ljava/util/List<Lcom/lge/internal/telephony/LGSendingSMSOption;>;"
    move-object/from16 v12, p0

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    .line 234
    invoke-virtual/range {v12 .. v19}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendMultipartTextWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 240
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v18    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v19    # "_arg6":Ljava/util/List;, "Ljava/util/List<Lcom/lge/internal/telephony/LGSendingSMSOption;>;"
    :sswitch_c
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 244
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 245
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendReadReceipt(Ljava/lang/String;I)V

    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 251
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_d
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 255
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 257
    .local v6, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 259
    .local v7, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 260
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/lge/internal/telephony/ISmsEx$Stub;->copySmsToIccEfPrivate(I[B[BI)I

    move-result v43

    .line 261
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 267
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":[B
    .end local v8    # "_arg3":I
    .end local v43    # "_result":I
    :sswitch_e
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 271
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 273
    .restart local v6    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 275
    .restart local v7    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 277
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .local v26, "_arg4":J
    move-object/from16 v21, p0

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move/from16 v25, v8

    .line 278
    invoke-virtual/range {v21 .. v27}, Lcom/lge/internal/telephony/ISmsEx$Stub;->copySmsToIccEfPrivateForSubscriber(I[B[BIJ)I

    move-result v43

    .line 279
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 285
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":[B
    .end local v8    # "_arg3":I
    .end local v26    # "_arg4":J
    .end local v43    # "_result":I
    :sswitch_f
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 289
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    .line 290
    .local v44, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-virtual {v0, v5, v1, v2}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getMaxEfSmsMultiModeForSubscriber(IJ)I

    move-result v43

    .line 291
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 297
    .end local v5    # "_arg0":I
    .end local v43    # "_result":I
    .end local v44    # "_arg1":J
    :sswitch_10
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 300
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setUiccType(I)V

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 306
    .end local v5    # "_arg0":I
    :sswitch_11
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getUiccType()I

    move-result v43

    .line 308
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 314
    .end local v43    # "_result":I
    :sswitch_12
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 318
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 320
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 322
    .restart local v7    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 323
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/lge/internal/telephony/ISmsEx$Stub;->updateMessageOnIccEfMultiMode(II[BI)Z

    move-result v43

    .line 324
    .local v43, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v43, :cond_8

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 325
    :cond_8
    const/4 v4, 0x0

    goto :goto_9

    .line 330
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[B
    .end local v8    # "_arg3":I
    .end local v43    # "_result":Z
    :sswitch_13
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 334
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 336
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 338
    .restart local v7    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 340
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .restart local v26    # "_arg4":J
    move-object/from16 v21, p0

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    move/from16 v25, v8

    .line 341
    invoke-virtual/range {v21 .. v27}, Lcom/lge/internal/telephony/ISmsEx$Stub;->updateMessageOnIccEfMultiModeForSubscriber(II[BIJ)Z

    move-result v43

    .line 342
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v43, :cond_9

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 343
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 348
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[B
    .end local v8    # "_arg3":I
    .end local v26    # "_arg4":J
    .end local v43    # "_result":Z
    :sswitch_14
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 352
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 356
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 358
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 359
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 365
    .restart local v9    # "_arg4":Landroid/app/PendingIntent;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 366
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .restart local v10    # "_arg5":Landroid/app/PendingIntent;
    :goto_c
    move-object/from16 v4, p0

    .line 371
    invoke-virtual/range {v4 .. v10}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendEmailoverText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 362
    .end local v9    # "_arg4":Landroid/app/PendingIntent;
    .end local v10    # "_arg5":Landroid/app/PendingIntent;
    :cond_a
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_b

    .line 369
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_c

    .line 377
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/app/PendingIntent;
    .end local v10    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_15
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 381
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 383
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 385
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 387
    .restart local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 389
    .restart local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .restart local v18    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v12, p0

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    .line 390
    invoke-virtual/range {v12 .. v18}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendEmailoverMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 396
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v18    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_16
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 400
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 402
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 404
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 406
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 407
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 413
    .restart local v9    # "_arg4":Landroid/app/PendingIntent;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 414
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 420
    .restart local v10    # "_arg5":Landroid/app/PendingIntent;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 422
    .local v11, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 424
    .local v12, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 426
    .local v13, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 428
    .local v14, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    const/4 v15, 0x1

    .local v15, "_arg10":Z
    :goto_f
    move-object/from16 v4, p0

    .line 429
    invoke-virtual/range {v4 .. v15}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IIIZ)V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 410
    .end local v9    # "_arg4":Landroid/app/PendingIntent;
    .end local v10    # "_arg5":Landroid/app/PendingIntent;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    .end local v14    # "_arg9":I
    .end local v15    # "_arg10":Z
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_d

    .line 417
    :cond_d
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_e

    .line 428
    .restart local v11    # "_arg6":Ljava/lang/String;
    .restart local v12    # "_arg7":I
    .restart local v13    # "_arg8":I
    .restart local v14    # "_arg9":I
    :cond_e
    const/4 v15, 0x0

    goto :goto_f

    .line 435
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/app/PendingIntent;
    .end local v10    # "_arg5":Landroid/app/PendingIntent;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    .end local v14    # "_arg9":I
    :sswitch_17
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 439
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 441
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 443
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 445
    .restart local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 447
    .restart local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .line 449
    .restart local v18    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 451
    .restart local v11    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 453
    .restart local v12    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 455
    .restart local v13    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 457
    .restart local v14    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    const/4 v15, 0x1

    .restart local v15    # "_arg10":Z
    :goto_10
    move-object/from16 v28, p0

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v16

    move-object/from16 v33, v17

    move-object/from16 v34, v18

    move-object/from16 v35, v11

    move/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move/from16 v39, v15

    .line 458
    invoke-virtual/range {v28 .. v39}, Lcom/lge/internal/telephony/ISmsEx$Stub;->sendMultipartTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IIIZ)V

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 457
    .end local v15    # "_arg10":Z
    :cond_f
    const/4 v15, 0x0

    goto :goto_10

    .line 464
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    .end local v14    # "_arg9":I
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v18    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_18
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 467
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/internal/telephony/ISmsEx$Stub;->enableAutoDCDisconnect(I)V

    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 473
    .end local v5    # "_arg0":I
    :sswitch_19
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/lge/internal/telephony/ISmsEx$Stub;->isFdnEnabled()Z

    move-result v43

    .line 475
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    if-eqz v43, :cond_10

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 476
    :cond_10
    const/4 v4, 0x0

    goto :goto_11

    .line 481
    .end local v43    # "_result":Z
    :sswitch_1a
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    const/4 v5, 0x1

    .line 484
    .local v5, "_arg0":Z
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setSmsIsRoaming(Z)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 483
    .end local v5    # "_arg0":Z
    :cond_11
    const/4 v5, 0x0

    goto :goto_12

    .line 490
    :sswitch_1b
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/4 v5, 0x1

    .line 493
    .restart local v5    # "_arg0":Z
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setIsSimFull(Z)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 492
    .end local v5    # "_arg0":Z
    :cond_12
    const/4 v5, 0x0

    goto :goto_13

    .line 499
    :sswitch_1c
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getIsSimFull()Z

    move-result v43

    .line 501
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v43, :cond_13

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 502
    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .line 507
    .end local v43    # "_result":Z
    :sswitch_1d
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 510
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 516
    .local v5, "_arg0":Landroid/net/Uri;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    .line 517
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 522
    .local v6, "_arg1":Landroid/content/ContentValues;
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/lge/internal/telephony/ISmsEx$Stub;->insertDBForLGMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v43

    .line 523
    .local v43, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    if-eqz v43, :cond_16

    .line 525
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    const/4 v4, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 531
    :goto_17
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 513
    .end local v5    # "_arg0":Landroid/net/Uri;
    .end local v6    # "_arg1":Landroid/content/ContentValues;
    .end local v43    # "_result":Landroid/net/Uri;
    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/net/Uri;
    goto :goto_15

    .line 520
    :cond_15
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ContentValues;
    goto :goto_16

    .line 529
    .restart local v43    # "_result":Landroid/net/Uri;
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 535
    .end local v5    # "_arg0":Landroid/net/Uri;
    .end local v6    # "_arg1":Landroid/content/ContentValues;
    .end local v43    # "_result":Landroid/net/Uri;
    :sswitch_1e
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 538
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/internal/telephony/ISmsEx$Stub;->smsReceptionBlockingforNIAPPolicy(Ljava/lang/String;)Z

    move-result v43

    .line 539
    .local v43, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    if-eqz v43, :cond_17

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 540
    :cond_17
    const/4 v4, 0x0

    goto :goto_18

    .line 545
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":Z
    :sswitch_1f
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 549
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 550
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/lge/internal/telephony/ISmsEx$Stub;->enableGsmBroadcastRange(II)Z

    move-result v43

    .line 551
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    if-eqz v43, :cond_18

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 552
    :cond_18
    const/4 v4, 0x0

    goto :goto_19

    .line 557
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v43    # "_result":Z
    :sswitch_20
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 561
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 562
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/lge/internal/telephony/ISmsEx$Stub;->disableGsmBroadcastRange(II)Z

    move-result v43

    .line 563
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v43, :cond_19

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 564
    :cond_19
    const/4 v4, 0x0

    goto :goto_1a

    .line 569
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v43    # "_result":Z
    :sswitch_21
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 573
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 575
    .local v6, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 577
    .local v7, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .local v24, "_arg3":J
    move-object/from16 v20, p0

    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 578
    invoke-virtual/range {v20 .. v25}, Lcom/lge/internal/telephony/ISmsEx$Stub;->copySmsToIccEfForSubscriber(I[B[BJ)I

    move-result v43

    .line 579
    .local v43, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 585
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":[B
    .end local v24    # "_arg3":J
    .end local v43    # "_result":I
    :sswitch_22
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    .line 588
    .local v40, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getMaxEfSmsForSubscriber(J)I

    move-result v43

    .line 589
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 595
    .end local v40    # "_arg0":J
    .end local v43    # "_result":I
    :sswitch_23
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 599
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v6, 0x1

    .line 601
    .local v6, "_arg1":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v46

    .line 602
    .local v46, "_arg2":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v46

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/lge/internal/telephony/ISmsEx$Stub;->updateSmsOnSimReadStatusForSubscriber(IZJ)Z

    move-result v43

    .line 603
    .local v43, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    if-eqz v43, :cond_1b

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 599
    .end local v6    # "_arg1":Z
    .end local v43    # "_result":Z
    .end local v46    # "_arg2":J
    :cond_1a
    const/4 v6, 0x0

    goto :goto_1b

    .line 604
    .restart local v6    # "_arg1":Z
    .restart local v43    # "_result":Z
    .restart local v46    # "_arg2":J
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1c

    .line 609
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Z
    .end local v43    # "_result":Z
    .end local v46    # "_arg2":J
    :sswitch_24
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    .line 612
    .restart local v40    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/lge/internal/telephony/ISmsEx$Stub;->getSmscenterAddressForSubscriber(J)Ljava/lang/String;

    move-result-object v43

    .line 613
    .local v43, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 619
    .end local v40    # "_arg0":J
    .end local v43    # "_result":Ljava/lang/String;
    :sswitch_25
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 623
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    .line 624
    .restart local v44    # "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-virtual {v0, v5, v1, v2}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setSmscenterAddressForSubscriber(Ljava/lang/String;J)Z

    move-result v43

    .line 625
    .local v43, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    if-eqz v43, :cond_1c

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 626
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1d

    .line 631
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":Z
    .end local v44    # "_arg1":J
    :sswitch_26
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    .line 634
    .restart local v40    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/lge/internal/telephony/ISmsEx$Stub;->isFdnEnabledOnSubscription(J)Z

    move-result v43

    .line 635
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    if-eqz v43, :cond_1d

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 636
    :cond_1d
    const/4 v4, 0x0

    goto :goto_1e

    .line 641
    .end local v40    # "_arg0":J
    .end local v43    # "_result":Z
    :sswitch_27
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 645
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    .line 646
    .restart local v44    # "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-virtual {v0, v5, v1, v2}, Lcom/lge/internal/telephony/ISmsEx$Stub;->setMultipartTextValidityPeriodForSubscriber(IJ)V

    .line 647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 652
    .end local v5    # "_arg0":I
    .end local v44    # "_arg1":J
    :sswitch_28
    const-string v4, "com.lge.internal.telephony.ISmsEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v42

    .line 655
    .local v42, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/lge/internal/telephony/ISmsEx$Stub;->isBlockSendMessage(Ljava/util/List;)Z

    move-result v43

    .line 656
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    if-eqz v43, :cond_1e

    const/4 v4, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 657
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1f

    .line 52
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
