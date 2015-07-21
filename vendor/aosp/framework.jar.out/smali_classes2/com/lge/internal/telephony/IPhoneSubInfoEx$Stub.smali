.class public abstract Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub;
.super Landroid/os/Binder;
.source "IPhoneSubInfoEx.java"

# interfaces
.implements Lcom/lge/internal/telephony/IPhoneSubInfoEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/telephony/IPhoneSubInfoEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.internal.telephony.IPhoneSubInfoEx"

.field static final TRANSACTION_getDeviceIdForVZW:I = 0x3

.field static final TRANSACTION_getDmNodeHandlerDiagMonNetwork:I = 0x4

.field static final TRANSACTION_getEsn:I = 0x8

.field static final TRANSACTION_getMSIN:I = 0x1

.field static final TRANSACTION_getMSINUsingSubId:I = 0x2

.field static final TRANSACTION_getTimeFromSIB16String:I = 0x6

.field static final TRANSACTION_getValueFromSIB16String:I = 0x5

.field static final TRANSACTION_setPttDrxMode:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.lge.internal.telephony.IPhoneSubInfoEx"

    invoke-virtual {p0, p0, v0}, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/IPhoneSubInfoEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.lge.internal.telephony.IPhoneSubInfoEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 46
    :sswitch_0
    const-string v6, "com.lge.internal.telephony.IPhoneSubInfoEx"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v6, "com.lge.internal.telephony.IPhoneSubInfoEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub;->getMSIN()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v6, "com.lge.internal.telephony.IPhoneSubInfoEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 62
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub;->getMSINUsingSubId(J)Ljava/lang/String;

    move-result-object v4

    .line 63
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":J
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v6, "com.lge.internal.telephony.IPhoneSubInfoEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub;->getDeviceIdForVZW(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v7, "com.lge.internal.telephony.IPhoneSubInfoEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v0, v5

    .line 83
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 85
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 86
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub;->getDmNodeHandlerDiagMonNetwork(ZII)Ljava/lang/String;

    move-result-object v4

    .line 87
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Ljava/lang/String;
    :cond_0
    move v0, v6

    .line 81
    goto :goto_1

    .line 93
    :sswitch_5
    const-string v6, "com.lge.internal.telephony.IPhoneSubInfoEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub;->getValueFromSIB16String()[I

    move-result-object v4

    .line 95
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 101
    .end local v4    # "_result":[I
    :sswitch_6
    const-string v6, "com.lge.internal.telephony.IPhoneSubInfoEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub;->getTimeFromSIB16String()[J

    move-result-object v4

    .line 103
    .local v4, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_0

    .line 109
    .end local v4    # "_result":[J
    :sswitch_7
    const-string v7, "com.lge.internal.telephony.IPhoneSubInfoEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub;->setPttDrxMode(I)Z

    move-result v4

    .line 113
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v4, :cond_1

    move v6, v5

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_8
    const-string v6, "com.lge.internal.telephony.IPhoneSubInfoEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub;->getEsn()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
