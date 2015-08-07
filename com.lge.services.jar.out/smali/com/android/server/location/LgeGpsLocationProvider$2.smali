.class Lcom/android/server/location/LgeGpsLocationProvider$2;
.super Ljava/lang/Object;
.source "LgeGpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LgeGpsLocationProvider;->handleInjectNtpTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LgeGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider$2;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1352
    new-instance v2, Landroid/net/SntpClient;

    invoke-direct {v2}, Landroid/net/SntpClient;-><init>()V

    .line 1354
    .local v2, "client":Landroid/net/SntpClient;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/LgeGpsLocationProvider$2;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget-object v3, v3, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const-string v3, "NtpServer"

    invoke-static {v3}, Lcom/android/server/location/LgeGpsConstants;->loadStrConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1355
    .local v9, "strTempNtpServer":Ljava/lang/String;
    if-eqz v9, :cond_2

    const/16 v3, 0x2710

    invoke-virtual {v2, v9, v3}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1356
    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    .line 1357
    .local v4, "time":J
    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    .line 1358
    .local v6, "timeReference":J
    invoke-virtual {v2}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v14

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    long-to-int v8, v14

    .line 1359
    .local v8, "certainty":I
    const-string v3, "LgeGpsLocationProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NTP server: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1362
    .local v12, "now":J
    const-string v3, "LgeGpsLocationProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NTP server returned: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") reference: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " certainty: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " system time offset: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v16, v4, v12

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/LgeGpsLocationProvider$2;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/LgeGpsLocationProvider;->native_inject_time(JJI)V

    .line 1369
    const-wide/32 v10, 0x5265c00

    .line 1377
    .end local v4    # "time":J
    .end local v6    # "timeReference":J
    .end local v8    # "certainty":I
    .end local v12    # "now":J
    .local v10, "delay":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/LgeGpsLocationProvider$2;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    const/16 v14, 0xa

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lcom/android/server/location/LgeGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/LgeGpsLocationProvider$2;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget-boolean v3, v3, Lcom/android/server/location/LgeGpsLocationProvider;->mPeriodicTimeInjection:Z

    if-eqz v3, :cond_0

    .line 1382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/LgeGpsLocationProvider$2;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget-object v3, v3, Lcom/android/server/location/LgeGpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x5

    invoke-virtual {v3, v14, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1387
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/LgeGpsLocationProvider$2;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    # getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/location/LgeGpsLocationProvider;->access$1300(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/LgeGpsLocationProvider$2;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    # getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/location/LgeGpsLocationProvider;->access$1300(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1391
    :cond_1
    return-void

    .line 1372
    .end local v10    # "delay":J
    :cond_2
    const-string v3, "LgeGpsLocationProvider"

    const-string v14, "requestTime failed"

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    const-wide/32 v10, 0x493e0

    .restart local v10    # "delay":J
    goto :goto_0
.end method
