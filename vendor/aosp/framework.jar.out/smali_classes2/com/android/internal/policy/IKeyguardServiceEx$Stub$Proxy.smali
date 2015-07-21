.class Lcom/android/internal/policy/IKeyguardServiceEx$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeyguardServiceEx.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardServiceEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardServiceEx$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/IKeyguardService;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/IKeyguardServiceEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 55
    return-void
.end method


# virtual methods
.method public doKeyguardUnlockDisabled(ZLjava/lang/String;)V
    .locals 6
    .param p1, "disableUnlock"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 62
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 63
    .local v1, "_reply":Landroid/os/Parcel;
    const/4 v3, 0x1

    new-array v2, v3, [Z

    .line 65
    .local v2, "bData":[Z
    :try_start_0
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 66
    const/4 v3, 0x0

    aput-boolean p1, v2, v3

    .line 67
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 68
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lcom/android/internal/policy/IKeyguardServiceEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2711

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 70
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 73
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 75
    return-void

    .line 72
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 73
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
