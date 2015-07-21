.class Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;
.super Ljava/lang/Object;
.source "VzwGpsLocationProvider.java"

# interfaces
.implements Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/provider/VzwGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VzwGpsCallback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwGpsLocationProvider.VzwGpsCallback"


# instance fields
.field private DEBUG:Z

.field private mVzwLocationManagerSrv:Lcom/vzw/location/IVzwLocationManager;

.field final synthetic this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/vzw/location/provider/VzwGpsLocationProvider;Lcom/vzw/location/IVzwLocationManager;)V
    .locals 2
    .param p2, "lm"    # Lcom/vzw/location/IVzwLocationManager;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    .line 357
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[VzwGpsCallback] Start create VzwGpsCallback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    iput-object p2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->mVzwLocationManagerSrv:Lcom/vzw/location/IVzwLocationManager;

    .line 359
    return-void
.end method

.method private isFlagSetForLocationField(II)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "flag"    # I

    .prologue
    .line 353
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ReportEngineStatus(I)V
    .locals 5
    .param p1, "statusCode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 362
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] Start ReportEngineStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$800(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v0

    .line 365
    .local v0, "wasNavigating":Z
    packed-switch p1, :pswitch_data_0

    .line 396
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$800(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineOn:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$900(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$700(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_4

    .line 397
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] Acquiring wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_3
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$700(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 402
    :cond_4
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$800(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v1

    if-eq v0, v1, :cond_6

    .line 404
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ReportEngineStatus] wasNavigating != mNavigating. Set EngineStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->getStringForEngineStatus(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_5
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineStatus:I
    invoke-static {v1, p1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1002(Lcom/vzw/location/provider/VzwGpsLocationProvider;I)I

    .line 408
    :cond_6
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$800(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineOn:Z
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$900(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$700(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 409
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] Releasing wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_7
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$700(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 412
    :cond_8
    return-void

    .line 367
    :pswitch_0
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] GPS_STATUS_NONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 371
    :pswitch_1
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] GPS_STATUS_SESSION_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_9
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1, v4}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$802(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)Z

    .line 373
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineOn:Z
    invoke-static {v1, v4}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$902(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)Z

    goto/16 :goto_0

    .line 377
    :pswitch_2
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_a

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] GPS_STATUS_SESSION_END"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_a
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$802(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)Z

    goto/16 :goto_0

    .line 382
    :pswitch_3
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] GPS_STATUS_ENGINE_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_b
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineOn:Z
    invoke-static {v1, v4}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$902(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)Z

    goto/16 :goto_0

    .line 387
    :pswitch_4
    iget-boolean v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v1, :cond_c

    const-string v1, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v2, "[ReportEngineStatus] GPS_STATUS_ENGINE_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_c
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineOn:Z
    invoke-static {v1, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$902(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)Z

    .line 389
    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v1, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$802(Lcom/vzw/location/provider/VzwGpsLocationProvider;Z)Z

    goto/16 :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public ReportGpsStatus(I)V
    .locals 3
    .param p1, "statusCode"    # I

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ReportGpsStatus] Start ReportGpsStatus - reportVzwEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_0
    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_2

    .line 604
    :cond_1
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[ReportGpsStatus] - GPS_EVENT_GENERAL_FAILURE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_2
    return-void
.end method

.method public ReportLocation(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)V
    .locals 13
    .param p1, "location"    # Lcom/qualcomm/location/vzw_library/VzwHalLocation;

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[ReportLocation] Start ReportLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[ReportLocation] reportLocation from native engine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLastFixTime:J
    invoke-static {v0, v2, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1102(Lcom/vzw/location/provider/VzwGpsLocationProvider;J)J

    .line 421
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSessionId()I

    move-result v11

    .line 422
    .local v11, "sessionIdBack":I
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getValidFieldMask()I

    move-result v9

    .line 424
    .local v9, "flags":I
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v12

    monitor-enter v12

    .line 425
    :try_start_0
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[ReportLocation] Create VzwLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setAccuracy(F)V

    .line 429
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/vzw/location/VzwLocation;->setAltitude(D)V

    .line 431
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getAltitude()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setAltitudeWrtEllipsoid(F)V

    .line 433
    const/4 v0, 0x4

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 434
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getAltitudeWrtSeaLevel()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setAltituteWrtSeaLevel(F)V

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setBearing(F)V

    .line 439
    const v0, 0x8000

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getMagneticVariation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setMagneticVariation(F)V

    .line 443
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 444
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/vzw/location/VzwLocation;->setLatitude(D)V

    .line 447
    :cond_5
    const/4 v0, 0x2

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 448
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/vzw/location/VzwLocation;->setLongitude(D)V

    .line 451
    :cond_6
    const/16 v0, 0x4000

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 453
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget v0, v0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mServerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 454
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getFixMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setFixMode(I)V

    .line 461
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setSpeed(F)V

    .line 463
    const/high16 v0, 0x10000

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 464
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/vzw/location/VzwLocation;->setTime(J)V

    .line 467
    :cond_8
    const/16 v0, 0x20

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 468
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getVerticalDilutionOfPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setVerticalDilutionOfPrecision(F)V

    .line 471
    :cond_9
    const/16 v0, 0x8

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 472
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getPositionDilutionOfPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setPositionDilutionOfPrecision(F)V

    .line 475
    :cond_a
    const/16 v0, 0x10

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 476
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getHorizontalDilutionOfPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setHorizontalDilutionOfPrecision(F)V

    .line 479
    :cond_b
    const/16 v0, 0x80

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x40

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x100

    invoke-direct {p0, v9, v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->isFlagSetForLocationField(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 482
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getHorizontalConfidence()F

    move-result v1

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getVerticalAccuracy()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getMajorAxis()F

    move-result v3

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getMajorAxisAngle()F

    move-result v4

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getMinorAxis()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/vzw/location/VzwLocation;->setPositionUncertaintyError(FFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :cond_c
    :try_start_1
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[ReportLocation] Pass VzwLocation to VzwLocationManagerService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_d
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->mVzwLocationManagerSrv:Lcom/vzw/location/IVzwLocationManager;

    iget-object v1, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/vzw/location/IVzwLocationManager;->reportLocation(Landroid/location/Location;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    :cond_e
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewAzimuth()[F

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewElevation()[F

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewPRNs()[I

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewSignalToNoiseRatio()[F

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesUsedPRN()[I

    move-result-object v0

    if-eqz v0, :cond_10

    .line 503
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[ReportLocation] There is updated Satellites Info from Native."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    :cond_f
    :try_start_3
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesUsedPRN()[I

    move-result-object v1

    array-length v1, v1

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNumSvUsedInView:I
    invoke-static {v0, v1}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1302(Lcom/vzw/location/provider/VzwGpsLocationProvider;I)I

    .line 506
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->mVzwLocationManagerSrv:Lcom/vzw/location/IVzwLocationManager;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesUsedPRN()[I

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewPRNs()[I

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesUsedPRN()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewPRNs()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewElevation()[F

    move-result-object v5

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewAzimuth()[F

    move-result-object v6

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSatellitesInViewSignalToNoiseRatio()[F

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/vzw/location/IVzwLocationManager;->reportSvStatusChanged(II[I[I[F[F[F)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 522
    :cond_10
    :goto_2
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 523
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwStatus:I
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1400(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 525
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 528
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1500(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 530
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvCount:I
    invoke-static {v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1600(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v2

    # invokes: Lcom/vzw/location/provider/VzwGpsLocationProvider;->updateStatus(II)V
    invoke-static {v0, v1, v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1700(Lcom/vzw/location/provider/VzwGpsLocationProvider;II)V

    .line 532
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_11
    return-void

    .line 456
    :cond_12
    :try_start_5
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget v0, v0, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mServerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 457
    iget-object v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;
    invoke-static {v0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1200(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getFixMode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setFixMode(I)V

    goto/16 :goto_0

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 493
    :catch_0
    move-exception v8

    .line 494
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_6
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "[ReportLocation] ReportLocation to VzwLocationManager failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 513
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 514
    .restart local v8    # "e":Landroid/os/RemoteException;
    iget-boolean v0, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v1, "reportSvStatusChanged to VzwLocationManager failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 518
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v8

    .line 519
    .local v8, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public ReportSvStatus(Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;)V
    .locals 14
    .param p1, "svSvInfo"    # Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;

    .prologue
    .line 536
    iget-boolean v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v3, "[ReportSvStatus] Start ReportSvStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    new-instance v1, Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-direct {v1}, Lcom/vzw/location/VzwGpsDeviceStatus;-><init>()V

    .line 540
    .local v1, "deviceStatus":Lcom/vzw/location/VzwGpsDeviceStatus;
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesWithEphemeris()[I

    move-result-object v11

    .line 541
    .local v11, "svs_with_ephemeris":[I
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesWithAlmanac()[I

    move-result-object v10

    .line 543
    .local v10, "svs_with_almanac":[I
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getNumSatellitesInView()I

    move-result v3

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNumSvInView:I
    invoke-static {v2, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1802(Lcom/vzw/location/provider/VzwGpsLocationProvider;I)I

    .line 545
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesInViewPRNs()[I

    move-result-object v3

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvsInView:[I
    invoke-static {v2, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1902(Lcom/vzw/location/provider/VzwGpsLocationProvider;[I)[I

    .line 546
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesInViewSignalToNoiseRatio()[F

    move-result-object v3

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvInViewSnr:[F
    invoke-static {v2, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$2002(Lcom/vzw/location/provider/VzwGpsLocationProvider;[F)[F

    .line 547
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesInViewElevation()[F

    move-result-object v3

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvInViewElevation:[F
    invoke-static {v2, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$2102(Lcom/vzw/location/provider/VzwGpsLocationProvider;[F)[F

    .line 548
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getSatellitesInViewAzimuth()[F

    move-result-object v3

    # setter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvInViewAzimuths:[F
    invoke-static {v2, v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$2202(Lcom/vzw/location/provider/VzwGpsLocationProvider;[F)[F

    .line 551
    const-wide/16 v4, 0x0

    .line 552
    .local v4, "emphemerisMask":J
    const-wide/16 v6, 0x0

    .line 553
    .local v6, "almanacsMask":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v2, v11

    if-ge v8, v2, :cond_1

    .line 554
    const-wide/16 v2, 0x1

    aget v12, v11, v8

    add-int/lit8 v12, v12, -0x1

    shl-long/2addr v2, v12

    or-long/2addr v4, v2

    .line 553
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 556
    :cond_1
    iget-boolean v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "VzwGpsLocationProvider.VzwGpsCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ReportSvStatus] Converted emphemerisMask="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_2
    const/4 v8, 0x0

    :goto_1
    array-length v2, v10

    if-ge v8, v2, :cond_3

    .line 558
    const-wide/16 v2, 0x1

    aget v12, v10, v8

    add-int/lit8 v12, v12, -0x1

    shl-long/2addr v2, v12

    or-long/2addr v6, v2

    .line 557
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 560
    :cond_3
    iget-boolean v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "VzwGpsLocationProvider.VzwGpsCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ReportSvStatus] Converted almanacsMask="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_4
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineStatus:I
    invoke-static {v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsDeviceStatus;->setHwState(I)V

    .line 564
    iget-boolean v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "VzwGpsLocationProvider.VzwGpsCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ReportSvStatus] EngineStatus="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v12, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mEngineStatus:I
    invoke-static {v12}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v12

    invoke-static {v12}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->getStringForEngineStatus(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_5
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvInViewSnr:[F
    invoke-static {v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$2000(Lcom/vzw/location/provider/VzwGpsLocationProvider;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvsInView:[I
    invoke-static {v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1900(Lcom/vzw/location/provider/VzwGpsLocationProvider;)[I

    move-result-object v3

    invoke-virtual/range {v1 .. v7}, Lcom/vzw/location/VzwGpsDeviceStatus;->setStatus([F[IJJ)V

    .line 569
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->mVzwLocationManagerSrv:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v2, v1}, Lcom/vzw/location/IVzwLocationManager;->reportGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :cond_6
    :goto_2
    iget-boolean v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "VzwGpsLocationProvider.VzwGpsCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ReportSvStatus] updateStatus will be called. updateStatus(mVzwStatus, mNumSvInView) mNumSvInView="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v12, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNumSvInView:I
    invoke-static {v12}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1800(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_7
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget-object v3, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwStatus:I
    invoke-static {v3}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1400(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v3

    iget-object v12, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNumSvUsedInView:I
    invoke-static {v12}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1300(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v12

    # invokes: Lcom/vzw/location/provider/VzwGpsLocationProvider;->updateStatus(II)V
    invoke-static {v2, v3, v12}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1700(Lcom/vzw/location/provider/VzwGpsLocationProvider;II)V

    .line 577
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mNavigating:Z
    invoke-static {v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$800(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mVzwStatus:I
    invoke-static {v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1400(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLastFixTime:J
    invoke-static {v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1100(Lcom/vzw/location/provider/VzwGpsLocationProvider;)J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-lez v2, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v12, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mLastFixTime:J
    invoke-static {v12}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1100(Lcom/vzw/location/provider/VzwGpsLocationProvider;)J

    move-result-wide v12

    sub-long/2addr v2, v12

    const-wide/16 v12, 0x2710

    cmp-long v2, v2, v12

    if-lez v2, :cond_9

    .line 582
    iget-boolean v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v3, "[ReportSvStatus] Send an intent to notify that the GPS is no longer receiving fixes."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_8
    new-instance v9, Landroid/content/Intent;

    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v9, "intent":Landroid/content/Intent;
    const-string v2, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 587
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1500(Lcom/vzw/location/provider/VzwGpsLocationProvider;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v9, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 589
    iget-object v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    const/4 v3, 0x1

    iget-object v12, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->this$0:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    # getter for: Lcom/vzw/location/provider/VzwGpsLocationProvider;->mSvCount:I
    invoke-static {v12}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1600(Lcom/vzw/location/provider/VzwGpsLocationProvider;)I

    move-result v12

    # invokes: Lcom/vzw/location/provider/VzwGpsLocationProvider;->updateStatus(II)V
    invoke-static {v2, v3, v12}, Lcom/vzw/location/provider/VzwGpsLocationProvider;->access$1700(Lcom/vzw/location/provider/VzwGpsLocationProvider;II)V

    .line 591
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_9
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v2, p0, Lcom/vzw/location/provider/VzwGpsLocationProvider$VzwGpsCallback;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "VzwGpsLocationProvider.VzwGpsCallback"

    const-string v3, "reportGpsDeviceStatusChanged to VzwLocationManager failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
