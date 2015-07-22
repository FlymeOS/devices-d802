.class public abstract Lcom/lge/systemservice/core/ILeccpManager$Stub;
.super Landroid/os/Binder;
.source "ILeccpManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/ILeccpManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/ILeccpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/ILeccpManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.ILeccpManager"

.field static final TRANSACTION_addMyCard:I = 0xc

.field static final TRANSACTION_clearMyCard:I = 0xe

.field static final TRANSACTION_discoverService:I = 0x14

.field static final TRANSACTION_getCard:I = 0x9

.field static final TRANSACTION_getCards:I = 0x8

.field static final TRANSACTION_getMyCard:I = 0xb

.field static final TRANSACTION_getMyCards:I = 0xa

.field static final TRANSACTION_getStatus:I = 0x3

.field static final TRANSACTION_isBLEServerEnabled:I = 0x4

.field static final TRANSACTION_isFriendCheck:I = 0x10

.field static final TRANSACTION_isPhoneSpeakerEnabled:I = 0x12

.field static final TRANSACTION_register:I = 0x1

.field static final TRANSACTION_removeMyCard:I = 0xd

.field static final TRANSACTION_requestAction:I = 0xf

.field static final TRANSACTION_setBLEServerEnabled:I = 0x5

.field static final TRANSACTION_setFriendCheck:I = 0x11

.field static final TRANSACTION_setPhoneSpeakerEnabled:I = 0x13

.field static final TRANSACTION_startDiscovery:I = 0x6

.field static final TRANSACTION_startDiscoveryWithServices:I = 0x15

.field static final TRANSACTION_stopDiscovery:I = 0x7

.field static final TRANSACTION_unregister:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILeccpManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v1, "com.lge.systemservice.core.ILeccpManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/systemservice/core/ILeccpManager;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/lge/systemservice/core/ILeccpManager;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/lge/systemservice/core/ILeccpManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/ILeccpManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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

    const/4 v5, 0x1

    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 50
    :sswitch_0
    const-string v4, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v4, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/systemservice/core/ILeccpManagerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILeccpManagerListener;

    move-result-object v0

    .line 59
    .local v0, "_arg0":Lcom/lge/systemservice/core/ILeccpManagerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->register(Lcom/lge/systemservice/core/ILeccpManagerListener;I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v0    # "_arg0":Lcom/lge/systemservice/core/ILeccpManagerListener;
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string v4, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->unregister(I)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v6, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->getStatus()Lcom/lge/systemservice/core/LeccpInfo$Status;

    move-result-object v2

    .line 77
    .local v2, "_result":Lcom/lge/systemservice/core/LeccpInfo$Status;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v2, p3, v5}, Lcom/lge/systemservice/core/LeccpInfo$Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v2    # "_result":Lcom/lge/systemservice/core/LeccpInfo$Status;
    :sswitch_4
    const-string v6, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->isBLEServerEnabled()Z

    move-result v2

    .line 91
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v2    # "_result":Z
    :sswitch_5
    const-string v6, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v0, v5

    .line 100
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->setBLEServerEnabled(Z)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_2
    move v0, v4

    .line 99
    goto :goto_1

    .line 106
    :sswitch_6
    const-string v4, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->startDiscovery()V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 113
    :sswitch_7
    const-string v4, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->stopDiscovery()V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    :sswitch_8
    const-string v4, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->getCards()Ljava/util/List;

    move-result-object v3

    .line 122
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/LeccpInfo$Card;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 128
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/LeccpInfo$Card;>;"
    :sswitch_9
    const-string v6, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->getCard(Ljava/lang/String;)Lcom/lge/systemservice/core/LeccpInfo$Card;

    move-result-object v2

    .line 132
    .local v2, "_result":Lcom/lge/systemservice/core/LeccpInfo$Card;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v2, :cond_3

    .line 134
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {v2, p3, v5}, Lcom/lge/systemservice/core/LeccpInfo$Card;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 138
    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Lcom/lge/systemservice/core/LeccpInfo$Card;
    :sswitch_a
    const-string v4, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->getMyCards()Ljava/util/List;

    move-result-object v3

    .line 146
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/LeccpInfo$Card;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 152
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/LeccpInfo$Card;>;"
    :sswitch_b
    const-string v6, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->getMyCard(Ljava/lang/String;)Lcom/lge/systemservice/core/LeccpInfo$Card;

    move-result-object v2

    .line 156
    .restart local v2    # "_result":Lcom/lge/systemservice/core/LeccpInfo$Card;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v2, :cond_4

    .line 158
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {v2, p3, v5}, Lcom/lge/systemservice/core/LeccpInfo$Card;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 162
    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Lcom/lge/systemservice/core/LeccpInfo$Card;
    :sswitch_c
    const-string v6, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->addMyCard(Ljava/lang/String;)Z

    move-result v2

    .line 172
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v2, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_d
    const-string v6, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->removeMyCard(Ljava/lang/String;)Z

    move-result v2

    .line 182
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v2, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 188
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_e
    const-string v6, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->clearMyCard()Z

    move-result v2

    .line 190
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v2, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v2    # "_result":Z
    :sswitch_f
    const-string v4, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 201
    sget-object v4, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;

    .line 206
    .local v1, "_arg1":Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->requestAction(Ljava/lang/String;Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    .end local v1    # "_arg1":Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
    .end local v2    # "_result":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
    goto :goto_2

    .line 213
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
    :sswitch_10
    const-string v6, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->isFriendCheck()Z

    move-result v2

    .line 215
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v2, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 221
    .end local v2    # "_result":Z
    :sswitch_11
    const-string v6, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    move v0, v5

    .line 224
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->setFriendCheck(Z)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_a
    move v0, v4

    .line 223
    goto :goto_3

    .line 230
    :sswitch_12
    const-string v6, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->isPhoneSpeakerEnabled()Z

    move-result v2

    .line 232
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v2, :cond_b

    move v4, v5

    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 238
    .end local v2    # "_result":Z
    :sswitch_13
    const-string v6, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    move v0, v5

    .line 241
    .restart local v0    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->setPhoneSpeakerEnabled(Z)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_c
    move v0, v4

    .line 240
    goto :goto_4

    .line 247
    :sswitch_14
    const-string v4, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 250
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->discoverService(I)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 256
    .end local v0    # "_arg0":I
    :sswitch_15
    const-string v4, "com.lge.systemservice.core.ILeccpManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 259
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->startDiscoveryWithServices([I)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 46
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
