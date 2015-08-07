.class final Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;
.super Landroid/os/INetworkManagementServiceEx$Stub;
.source "NetworkManagementServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExtendedBinderInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementServiceEx;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/NetworkManagementServiceEx;

    invoke-direct {p0}, Landroid/os/INetworkManagementServiceEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementServiceEx;Lcom/android/server/NetworkManagementServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NetworkManagementServiceEx;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementServiceEx$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/NetworkManagementServiceEx;)V

    return-void
.end method


# virtual methods
.method public getNetworkStatsUidInterface(ILjava/lang/String;I)J
    .locals 2
    .param p1, "uid"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public registerObserverEx(Landroid/net/INetworkManagementEventObserverEx;)V
    .locals 1
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserverEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/NetworkManagementServiceEx;

    # getter for: Lcom/android/server/NetworkManagementServiceEx;->mExObservers:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/server/NetworkManagementServiceEx;->access$000(Lcom/android/server/NetworkManagementServiceEx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 47
    return-void
.end method

.method public unregisterObserverEx(Landroid/net/INetworkManagementEventObserverEx;)V
    .locals 1
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserverEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/NetworkManagementServiceEx;

    # getter for: Lcom/android/server/NetworkManagementServiceEx;->mExObservers:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/server/NetworkManagementServiceEx;->access$000(Lcom/android/server/NetworkManagementServiceEx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 52
    return-void
.end method
