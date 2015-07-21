.class public abstract Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;
.super Landroid/os/Binder;
.source "IStatusBarServiceEx.java"

# interfaces
.implements Lcom/lge/internal/statusbar/IStatusBarServiceEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/statusbar/IStatusBarServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.internal.statusbar.IStatusBarServiceEx"

.field static final TRANSACTION_disableNaviBtn:I = 0x2

.field static final TRANSACTION_notifyNavigationBarColor:I = 0x3

.field static final TRANSACTION_onPanelRevealedWithLockStatus:I = 0x5

.field static final TRANSACTION_registerStatusBarEx:I = 0x1

.field static final TRANSACTION_setIconShift:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p0, p0, v0}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/internal/statusbar/IStatusBarServiceEx;
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
    const-string v1, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/internal/statusbar/IStatusBarEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/statusbar/IStatusBarEx;

    move-result-object v2

    .line 54
    .local v2, "_arg1":Lcom/lge/internal/statusbar/IStatusBarEx;
    new-instance v3, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v3}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 56
    .local v3, "_arg2":Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 57
    .local v6, "_arg3_length":I
    if-gez v6, :cond_0

    .line 58
    const/4 v4, 0x0

    .line 64
    .local v4, "_arg3":[I
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    move-object v0, p0

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->registerStatusBarEx(Lcom/android/internal/statusbar/IStatusBar;Lcom/lge/internal/statusbar/IStatusBarEx;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v3, :cond_1

    .line 68
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {v3, p3, v7}, Lcom/android/internal/statusbar/StatusBarIconList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    :goto_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 75
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    move v0, v7

    .line 76
    goto :goto_0

    .line 61
    .end local v4    # "_arg3":[I
    .end local v5    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_0
    new-array v4, v6, [I

    .restart local v4    # "_arg3":[I
    goto :goto_1

    .line 72
    .restart local v5    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 80
    .end local v1    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v2    # "_arg1":Lcom/lge/internal/statusbar/IStatusBarEx;
    .end local v3    # "_arg2":Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v4    # "_arg3":[I
    .end local v5    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v6    # "_arg3_length":I
    :sswitch_2
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 86
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->disableNaviBtn(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 89
    goto :goto_0

    .line 93
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_3
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->notifyNavigationBarColor(I)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 98
    goto :goto_0

    .line 102
    .end local v1    # "_arg0":I
    :sswitch_4
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->setIconShift()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 105
    goto/16 :goto_0

    .line 109
    :sswitch_5
    const-string v0, "com.lge.internal.statusbar.IStatusBarServiceEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->onPanelRevealedWithLockStatus(I)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 114
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
