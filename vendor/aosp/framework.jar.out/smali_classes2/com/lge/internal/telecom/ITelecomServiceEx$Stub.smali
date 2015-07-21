.class public abstract Lcom/lge/internal/telecom/ITelecomServiceEx$Stub;
.super Landroid/os/Binder;
.source "ITelecomServiceEx.java"

# interfaces
.implements Lcom/lge/internal/telecom/ITelecomServiceEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/telecom/ITelecomServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/telecom/ITelecomServiceEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.internal.telecom.ITelecomService"

.field static final TRANSACTION_isReservedCall:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.internal.telecom.ITelecomService"

    invoke-virtual {p0, p0, v0}, Lcom/lge/internal/telecom/ITelecomServiceEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telecom/ITelecomServiceEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "android.internal.telecom.ITelecomService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/internal/telecom/ITelecomServiceEx;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/lge/internal/telecom/ITelecomServiceEx;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/lge/internal/telecom/ITelecomServiceEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/internal/telecom/ITelecomServiceEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static onTransact(Lcom/lge/internal/telecom/ITelecomServiceEx;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p0, "server"    # Lcom/lge/internal/telecom/ITelecomServiceEx;
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
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    move v2, v1

    .line 61
    :goto_0
    return v2

    .line 49
    :sswitch_0
    const-string v1, "android.internal.telecom.ITelecomService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v3, "android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-interface {p0}, Lcom/lge/internal/telecom/ITelecomServiceEx;->isReservedCall()Z

    move-result v0

    .line 56
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method
