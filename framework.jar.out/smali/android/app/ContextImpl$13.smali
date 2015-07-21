.class final Landroid/app/ContextImpl$13;
.super Landroid/app/ContextImpl$StaticServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticService()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 470
    const-string v1, "fast_download"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 471
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/lge/net/FastDownloadManager;

    invoke-static {v0}, Lcom/lge/net/IFastDownloadManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/net/IFastDownloadManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/net/FastDownloadManager;-><init>(Lcom/lge/net/IFastDownloadManager;)V

    return-object v1
.end method
