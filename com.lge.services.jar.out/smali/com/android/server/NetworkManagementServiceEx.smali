.class public Lcom/android/server/NetworkManagementServiceEx;
.super Lcom/android/server/NetworkManagementService;
.source "NetworkManagementServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementServiceEx$1;,
        Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final NETD_SOCKET_NAME:Ljava/lang/String; = "netd"

.field private static final TAG:Ljava/lang/String; = "NetworkManagementServiceEx"


# instance fields
.field private mBinderInternal:Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;

.field private mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mContext:Landroid/content/Context;

.field private final mExObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkManagementEventObserverEx;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socket"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementServiceEx;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 28
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementServiceEx;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 30
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementServiceEx;->mExObservers:Landroid/os/RemoteCallbackList;

    .line 33
    iput-object v2, p0, Lcom/android/server/NetworkManagementServiceEx;->mBinderInternal:Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;

    .line 75
    iput-object p1, p0, Lcom/android/server/NetworkManagementServiceEx;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;

    invoke-direct {v0, p0, v2}, Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/NetworkManagementServiceEx;Lcom/android/server/NetworkManagementServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementServiceEx;->mBinderInternal:Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NetworkManagementServiceEx;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementServiceEx;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/server/NetworkManagementServiceEx;->mExObservers:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementServiceEx;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementServiceEx;

    return-object v0
.end method

.method static create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementServiceEx;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "socket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementServiceEx;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, "ret":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "originatedBinderDescName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/NetworkManagementServiceEx;->mBinderInternal:Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2}, Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/server/NetworkManagementServiceEx;->mBinderInternal:Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementServiceEx$ExtendedBinderInternal;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 67
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0
.end method
