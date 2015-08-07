.class final Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;
.super Ljava/lang/Thread;
.source "LgeGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LgeGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LgeGpsLocationProviderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LgeGpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 1

    .prologue
    .line 964
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    .line 965
    const-string v0, "LgeGpsLocationProvider"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 966
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 969
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 970
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 971
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    new-instance v1, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;

    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;Lcom/android/server/location/LgeGpsLocationProvider$1;)V

    # setter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$1002(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;

    .line 973
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    # getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/location/LgeGpsLocationProvider;->access$1200(Lcom/android/server/location/LgeGpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 974
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 975
    return-void
.end method
