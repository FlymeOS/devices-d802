.class final Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;
.super Landroid/os/Handler;
.source "VzwGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/provider/VzwGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VzwProviderHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwGpsLocationProvider.VzwProviderHandler"


# instance fields
.field final synthetic this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/vzw/location/provider/VzwGpsLocationProvider;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vzw/location/provider/VzwGpsLocationProvider;Lcom/vzw/location/provider/VzwGpsLocationProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vzw/location/provider/VzwGpsLocationProvider;
    .param p2, "x1"    # Lcom/vzw/location/provider/VzwGpsLocationProvider$1;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;-><init>(Lcom/vzw/location/provider/VzwGpsLocationProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 259
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VzwGpsLocationProvider.VzwProviderHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VzwProviderHandler] handleMessage. Msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 276
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VzwGpsLocationProvider.VzwProviderHandler"

    const-string v1, "[VzwProviderHandler] Handle Msg does not exist!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$700(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    monitor-enter v1

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$700(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 283
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$700(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 284
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VzwGpsLocationProvider.VzwProviderHandler"

    const-string v2, "[handleMessage] Released wakelock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    return-void

    .line 262
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "VzwGpsLocationProvider.VzwProviderHandler"

    const-string v1, "[VzwProviderHandler] ENABLE. handleEnable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # invokes: Lcom/vzw/location/provider/VzwGpsLocationProvider;->handleEnable()V
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$400(Lcom/vzw/location/provider/VzwGpsLocationProvider;)V

    goto :goto_0

    .line 267
    :cond_4
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "VzwGpsLocationProvider.VzwProviderHandler"

    const-string v1, "[VzwProviderHandler] DISABLE. handleDisable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # invokes: Lcom/vzw/location/provider/VzwGpsLocationProvider;->handleDisable()V
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$500(Lcom/vzw/location/provider/VzwGpsLocationProvider;)V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "VzwGpsLocationProvider.VzwProviderHandler"

    const-string v2, "[VzwProviderHandler] ENABLE_TRACKING. handleEnableLocationTracking()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_6
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_7

    :goto_2
    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/vzw/location/provider/VzwGpsLocationProvider;->handleEnableLocationTracking(ZI)V
    invoke-static {v1, v0, v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$600(Lcom/vzw/location/provider/VzwGpsLocationProvider;ZI)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 286
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwProviderHandler;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->DEBUG:Z
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VzwGpsLocationProvider.VzwProviderHandler"

    const-string v2, "[handleMessage] Can\'t release wakelock again!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 260
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
