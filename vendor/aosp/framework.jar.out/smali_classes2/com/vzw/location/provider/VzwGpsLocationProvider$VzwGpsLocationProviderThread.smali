.class final Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsLocationProviderThread;
.super Ljava/lang/Thread;
.source "VzwGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/provider/VzwGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VzwGpsLocationProviderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/vzw/location/provider/VzwGpsLocationProvider;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsLocationProviderThread;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    .line 232
    const-string v0, "VzwLocatoinProvider"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 233
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 236
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 237
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 238
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsLocationProviderThread;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "VzwGpsLocationProviderThread. Create mVzwLocationProviderThreadHandler(VzwProviderHandler)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsLocationProviderThread;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    new-instance v1, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;

    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsLocationProviderThread;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;-><init>(Lcom/vzw/location/provider/VzwGpsLocationProvider;Lcom/vzw/location/provider/VzwGpsLocationProvider$1;)V

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwLocationProviderThreadHandler:Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;
    invoke-static {v0, v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$102(Lcom/vzw/location/provider/VzwGpsLocationProvider;Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;)Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;

    .line 240
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsLocationProviderThread;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$300(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 241
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 242
    return-void
.end method
