.class public abstract Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub;
.super Landroid/os/Binder;
.source "ISmartCoverViewManagerService.java"

# interfaces
.implements Lcom/android/internal/policy/ISmartCoverViewManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/ISmartCoverViewManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.ISmartCoverViewManagerService"

.field static final TRANSACTION_isShowing:I = 0x1

.field static final TRANSACTION_onBootCompleted:I = 0x8

.field static final TRANSACTION_onCoverHide:I = 0x9

.field static final TRANSACTION_onCoverShow:I = 0xa

.field static final TRANSACTION_onCoverStateChanged:I = 0x2

.field static final TRANSACTION_onCoverTypeChanged:I = 0x3

.field static final TRANSACTION_onScreenTurnedOff:I = 0x4

.field static final TRANSACTION_onScreenTurnedOn:I = 0x5

.field static final TRANSACTION_onSystemReady:I = 0x6

.field static final TRANSACTION_setCurrentUser:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.policy.ISmartCoverViewManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/ISmartCoverViewManagerService;
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
    const-string v1, "com.android.internal.policy.ISmartCoverViewManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/ISmartCoverViewManagerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/policy/ISmartCoverViewManagerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.android.internal.policy.ISmartCoverViewManagerService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.android.internal.policy.ISmartCoverViewManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub;->isShowing()Z

    move-result v1

    .line 49
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 55
    .end local v1    # "_result":Z
    :sswitch_2
    const-string v2, "com.android.internal.policy.ISmartCoverViewManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub;->onCoverStateChanged(I)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v2, "com.android.internal.policy.ISmartCoverViewManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub;->onCoverTypeChanged(I)V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v2, "com.android.internal.policy.ISmartCoverViewManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub;->onScreenTurnedOff(I)V

    goto :goto_0

    .line 79
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string v2, "com.android.internal.policy.ISmartCoverViewManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub;->onScreenTurnedOn()V

    goto :goto_0

    .line 85
    :sswitch_6
    const-string v2, "com.android.internal.policy.ISmartCoverViewManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub;->onSystemReady()V

    goto :goto_0

    .line 91
    :sswitch_7
    const-string v2, "com.android.internal.policy.ISmartCoverViewManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub;->setCurrentUser(I)V

    goto :goto_0

    .line 99
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v2, "com.android.internal.policy.ISmartCoverViewManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub;->onBootCompleted()V

    goto :goto_0

    .line 105
    :sswitch_9
    const-string v2, "com.android.internal.policy.ISmartCoverViewManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub;->onCoverHide()V

    goto :goto_0

    .line 111
    :sswitch_a
    const-string v2, "com.android.internal.policy.ISmartCoverViewManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/policy/ISmartCoverViewManagerService$Stub;->onCoverShow()V

    goto :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
