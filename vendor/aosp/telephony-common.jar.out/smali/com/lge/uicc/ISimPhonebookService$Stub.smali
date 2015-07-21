.class public abstract Lcom/lge/uicc/ISimPhonebookService$Stub;
.super Landroid/os/Binder;
.source "ISimPhonebookService.java"

# interfaces
.implements Lcom/lge/uicc/ISimPhonebookService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/ISimPhonebookService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/ISimPhonebookService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.uicc.ISimPhonebookService"

.field static final TRANSACTION_deleteEntry:I = 0x8

.field static final TRANSACTION_deleteGroup:I = 0x9

.field static final TRANSACTION_getSimPhonebookInfo:I = 0x1

.field static final TRANSACTION_insertEntry:I = 0x4

.field static final TRANSACTION_insertGroup:I = 0x5

.field static final TRANSACTION_readEntry:I = 0x2

.field static final TRANSACTION_readGroup:I = 0x3

.field static final TRANSACTION_updateEntry:I = 0x6

.field static final TRANSACTION_updateGroup:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.lge.uicc.ISimPhonebookService"

    invoke-virtual {p0, p0, v0}, Lcom/lge/uicc/ISimPhonebookService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/uicc/ISimPhonebookService;
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
    const-string v1, "com.lge.uicc.ISimPhonebookService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/uicc/ISimPhonebookService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/lge/uicc/ISimPhonebookService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/lge/uicc/ISimPhonebookService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/uicc/ISimPhonebookService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v5, "com.lge.uicc.ISimPhonebookService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "com.lge.uicc.ISimPhonebookService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/uicc/ISimPhonebookService$Stub;->getSimPhonebookInfo(I)Lcom/lge/uicc/SimPhonebookBaseInfo;

    move-result-object v3

    .line 52
    .local v3, "_result":Lcom/lge/uicc/SimPhonebookBaseInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v3, p3, v4}, Lcom/lge/uicc/SimPhonebookBaseInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Lcom/lge/uicc/SimPhonebookBaseInfo;
    :sswitch_2
    const-string v5, "com.lge.uicc.ISimPhonebookService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/uicc/ISimPhonebookService$Stub;->readEntry(II)Lcom/lge/uicc/SimPhonebookBaseEntry;

    move-result-object v3

    .line 70
    .local v3, "_result":Lcom/lge/uicc/SimPhonebookBaseEntry;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v3, p3, v4}, Lcom/lge/uicc/SimPhonebookBaseEntry;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Lcom/lge/uicc/SimPhonebookBaseEntry;
    :sswitch_3
    const-string v5, "com.lge.uicc.ISimPhonebookService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/uicc/ISimPhonebookService$Stub;->readGroup(II)Lcom/lge/uicc/SimPhonebookBaseEntry;

    move-result-object v3

    .line 88
    .restart local v3    # "_result":Lcom/lge/uicc/SimPhonebookBaseEntry;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_2

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {v3, p3, v4}, Lcom/lge/uicc/SimPhonebookBaseEntry;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Lcom/lge/uicc/SimPhonebookBaseEntry;
    :sswitch_4
    const-string v5, "com.lge.uicc.ISimPhonebookService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 106
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 107
    sget-object v5, Lcom/lge/uicc/SimPhonebookBaseEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/uicc/SimPhonebookBaseEntry;

    .line 112
    .local v2, "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/uicc/ISimPhonebookService$Stub;->insertEntry(IILcom/lge/uicc/SimPhonebookBaseEntry;)I

    move-result v3

    .line 113
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 110
    .end local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    .end local v3    # "_result":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    goto :goto_1

    .line 119
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    :sswitch_5
    const-string v5, "com.lge.uicc.ISimPhonebookService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 126
    sget-object v5, Lcom/lge/uicc/SimPhonebookBaseEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/uicc/SimPhonebookBaseEntry;

    .line 131
    .restart local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/uicc/ISimPhonebookService$Stub;->insertGroup(IILcom/lge/uicc/SimPhonebookBaseEntry;)I

    move-result v3

    .line 132
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    .end local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    .end local v3    # "_result":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    goto :goto_2

    .line 138
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    :sswitch_6
    const-string v5, "com.lge.uicc.ISimPhonebookService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 145
    sget-object v5, Lcom/lge/uicc/SimPhonebookBaseEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/uicc/SimPhonebookBaseEntry;

    .line 150
    .restart local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/uicc/ISimPhonebookService$Stub;->updateEntry(IILcom/lge/uicc/SimPhonebookBaseEntry;)I

    move-result v3

    .line 151
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 148
    .end local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    .end local v3    # "_result":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    goto :goto_3

    .line 157
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    :sswitch_7
    const-string v5, "com.lge.uicc.ISimPhonebookService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 164
    sget-object v5, Lcom/lge/uicc/SimPhonebookBaseEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/uicc/SimPhonebookBaseEntry;

    .line 169
    .restart local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/uicc/ISimPhonebookService$Stub;->updateGroup(IILcom/lge/uicc/SimPhonebookBaseEntry;)I

    move-result v3

    .line 170
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 167
    .end local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    .end local v3    # "_result":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    goto :goto_4

    .line 176
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/lge/uicc/SimPhonebookBaseEntry;
    :sswitch_8
    const-string v5, "com.lge.uicc.ISimPhonebookService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 181
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/uicc/ISimPhonebookService$Stub;->deleteEntry(II)I

    move-result v3

    .line 182
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 188
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_9
    const-string v5, "com.lge.uicc.ISimPhonebookService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/uicc/ISimPhonebookService$Stub;->deleteGroup(II)I

    move-result v3

    .line 194
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
