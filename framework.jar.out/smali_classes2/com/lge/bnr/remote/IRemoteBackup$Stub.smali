.class public abstract Lcom/lge/bnr/remote/IRemoteBackup$Stub;
.super Landroid/os/Binder;
.source "IRemoteBackup.java"

# interfaces
.implements Lcom/lge/bnr/remote/IRemoteBackup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bnr/remote/IRemoteBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bnr/remote/IRemoteBackup$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.bnr.remote.IRemoteBackup"

.field static final TRANSACTION_registerCallback:I = 0xa

.field static final TRANSACTION_setBackupComplete:I = 0x5

.field static final TRANSACTION_setBackupProgress:I = 0x3

.field static final TRANSACTION_setBackupProgressforCopyFile:I = 0x1

.field static final TRANSACTION_setBackupStreamData:I = 0x2

.field static final TRANSACTION_setEnableBackup:I = 0x7

.field static final TRANSACTION_setEnableRestore:I = 0x8

.field static final TRANSACTION_setFailItem:I = 0x9

.field static final TRANSACTION_setRestoreComplete:I = 0x6

.field static final TRANSACTION_setRestoreProgress:I = 0x4

.field static final TRANSACTION_unregisterCallback:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p0, p0, v0}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/bnr/remote/IRemoteBackup;
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
    const-string v1, "com.lge.bnr.remote.IRemoteBackup"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/bnr/remote/IRemoteBackup;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lge/bnr/remote/IRemoteBackup;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lge/bnr/remote/IRemoteBackup$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/bnr/remote/IRemoteBackup$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setBackupProgressforCopyFile(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string v3, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    sget-object v3, Lcom/lge/bnr/model/BNRZipByteData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/bnr/model/BNRZipByteData;

    .line 68
    .local v1, "_arg1":Lcom/lge/bnr/model/BNRZipByteData;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setBackupStreamData(Ljava/lang/String;Lcom/lge/bnr/model/BNRZipByteData;)I

    move-result v2

    .line 69
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v1    # "_arg1":Lcom/lge/bnr/model/BNRZipByteData;
    .end local v2    # "_result":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/lge/bnr/model/BNRZipByteData;
    goto :goto_1

    .line 75
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/lge/bnr/model/BNRZipByteData;
    :sswitch_3
    const-string v3, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setBackupProgress(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_4
    const-string v3, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setRestoreProgress(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_5
    const-string v3, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    sget-object v3, Lcom/lge/bnr/model/BNRFailItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/bnr/model/BNRFailItem;

    .line 107
    .local v1, "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setBackupComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 105
    .end local v1    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    goto :goto_2

    .line 113
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :sswitch_6
    const-string v3, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    sget-object v3, Lcom/lge/bnr/model/BNRFailItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/bnr/model/BNRFailItem;

    .line 123
    .restart local v1    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setRestoreComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v1    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    goto :goto_3

    .line 129
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :sswitch_7
    const-string v3, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setEnableBackup(Ljava/lang/String;I)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_8
    const-string v3, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setEnableRestore(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string v5, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    sget-object v5, Lcom/lge/bnr/model/BNRFailItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/bnr/model/BNRFailItem;

    .line 159
    .local v1, "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->setFailItem(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)Lcom/lge/bnr/model/BNRFailItem;

    move-result-object v2

    .line 160
    .local v2, "_result":Lcom/lge/bnr/model/BNRFailItem;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v2, :cond_4

    .line 162
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {v2, p3, v4}, Lcom/lge/bnr/model/BNRFailItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 157
    .end local v1    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    .end local v2    # "_result":Lcom/lge/bnr/model/BNRFailItem;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    goto :goto_4

    .line 166
    .restart local v2    # "_result":Lcom/lge/bnr/model/BNRFailItem;
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/lge/bnr/model/BNRFailItem;
    .end local v2    # "_result":Lcom/lge/bnr/model/BNRFailItem;
    :sswitch_a
    const-string v5, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/bnr/remote/IRemoteBackupCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bnr/remote/IRemoteBackupCallback;

    move-result-object v0

    .line 175
    .local v0, "_arg0":Lcom/lge/bnr/remote/IRemoteBackupCallback;
    invoke-virtual {p0, v0}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->registerCallback(Lcom/lge/bnr/remote/IRemoteBackupCallback;)Z

    move-result v2

    .line 176
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v0    # "_arg0":Lcom/lge/bnr/remote/IRemoteBackupCallback;
    .end local v2    # "_result":Z
    :sswitch_b
    const-string v3, "com.lge.bnr.remote.IRemoteBackup"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/bnr/remote/IRemoteBackupCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bnr/remote/IRemoteBackupCallback;

    move-result-object v0

    .line 185
    .restart local v0    # "_arg0":Lcom/lge/bnr/remote/IRemoteBackupCallback;
    invoke-virtual {p0, v0}, Lcom/lge/bnr/remote/IRemoteBackup$Stub;->unregisterCallback(Lcom/lge/bnr/remote/IRemoteBackupCallback;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
