.class public abstract Lcom/lge/view/IWindowManagerEx$Stub;
.super Landroid/os/Binder;
.source "IWindowManagerEx.java"

# interfaces
.implements Lcom/lge/view/IWindowManagerEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/IWindowManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/view/IWindowManagerEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.view.IWindowManagerEx"

.field static final TRANSACTION_addAllowList:I = 0xa

.field static final TRANSACTION_exchangeAllowListSet:I = 0xc

.field static final TRANSACTION_getLGSystemUiVisibility:I = 0x3

.field static final TRANSACTION_getSystemBarShownState:I = 0x2

.field static final TRANSACTION_getWindowInfoList:I = 0x4

.field static final TRANSACTION_isWindowSplit:I = 0x6

.field static final TRANSACTION_moveWindowTokenToTop:I = 0x1

.field static final TRANSACTION_printAllowPopupLists:I = 0xd

.field static final TRANSACTION_removeAllowList:I = 0xb

.field static final TRANSACTION_sendSplitWindowFocusChanged:I = 0x7

.field static final TRANSACTION_startControlPopup:I = 0x8

.field static final TRANSACTION_stopControlPopup:I = 0x9

.field static final TRANSACTION_switchSplitWindows:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p0, p0, v0}, Lcom/lge/view/IWindowManagerEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/view/IWindowManagerEx;
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
    const-string v1, "com.lge.view.IWindowManagerEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/view/IWindowManagerEx;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lge/view/IWindowManagerEx;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lge/view/IWindowManagerEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/view/IWindowManagerEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/lge/view/IWindowManagerEx$Stub;->moveWindowTokenToTop(Landroid/os/IBinder;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_2
    const-string v6, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/lge/view/IWindowManagerEx$Stub;->getSystemBarShownState()I

    move-result v3

    .line 58
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v3    # "_result":I
    :sswitch_3
    const-string v6, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/view/IWindowManagerEx$Stub;->getLGSystemUiVisibility()I

    move-result v3

    .line 66
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v3    # "_result":I
    :sswitch_4
    const-string v7, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v1, v5

    .line 77
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/lge/view/IWindowManagerEx$Stub;->getWindowInfoList(IZ)Ljava/util/List;

    move-result-object v4

    .line 78
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_0
    move v1, v6

    .line 76
    goto :goto_1

    .line 84
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string v6, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/lge/view/IWindowManagerEx$Stub;->switchSplitWindows()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    :sswitch_6
    const-string v7, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;

    move-result-object v0

    .line 95
    .local v0, "_arg0":Landroid/view/IWindowSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 97
    .local v1, "_arg1":Landroid/view/IWindow;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .local v2, "_arg2":Landroid/graphics/Rect;
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/view/IWindowManagerEx$Stub;->isWindowSplit(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/graphics/Rect;)Z

    move-result v3

    .line 99
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v3, :cond_1

    move v7, v5

    :goto_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v2, p3, v5}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_1
    move v7, v6

    .line 100
    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v0    # "_arg0":Landroid/view/IWindowSession;
    .end local v1    # "_arg1":Landroid/view/IWindow;
    .end local v2    # "_arg2":Landroid/graphics/Rect;
    .end local v3    # "_result":Z
    :sswitch_7
    const-string v7, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 116
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v1, v5

    .line 117
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/lge/view/IWindowManagerEx$Stub;->sendSplitWindowFocusChanged(Landroid/os/IBinder;Z)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_3
    move v1, v6

    .line 116
    goto :goto_3

    .line 123
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_8
    const-string v6, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/lge/view/IWindowManagerEx$Stub;->startControlPopup()V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 130
    :sswitch_9
    const-string v6, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/lge/view/IWindowManagerEx$Stub;->stopControlPopup()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 137
    :sswitch_a
    const-string v6, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/view/IWindowManagerEx$Stub;->addAllowList(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 146
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v6, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/view/IWindowManagerEx$Stub;->removeAllowList(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 155
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string v6, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/view/IWindowManagerEx$Stub;->exchangeAllowListSet([Ljava/lang/String;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 164
    .end local v0    # "_arg0":[Ljava/lang/String;
    :sswitch_d
    const-string v6, "com.lge.view.IWindowManagerEx"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/lge/view/IWindowManagerEx$Stub;->printAllowPopupLists()V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
