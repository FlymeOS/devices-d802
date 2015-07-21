.class Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;
.super Ljava/lang/Object;
.source "VzwClient.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/server/VzwClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VzwGpsLocationListener"
.end annotation


# instance fields
.field final mListener:Lcom/vzw/location/ILocationListener;

.field final synthetic this$0:Lcom/vzw/location/server/VzwClient;


# direct methods
.method public constructor <init>(Lcom/vzw/location/server/VzwClient;Lcom/vzw/location/ILocationListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/vzw/location/ILocationListener;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->this$0:Lcom/vzw/location/server/VzwClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p2, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->mListener:Lcom/vzw/location/ILocationListener;

    .line 394
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v0}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VzwClient"

    const-string v1, "[VzwGpsStatusListener] VzwGPS location listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->this$0:Lcom/vzw/location/server/VzwClient;

    invoke-virtual {v0}, Lcom/vzw/location/server/VzwClient;->removeVzwGpsLocationListener()Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    .line 461
    return-void
.end method

.method public callLocationChangedLocked(Lcom/vzw/location/VzwLocation;)Z
    .locals 4
    .param p1, "location"    # Lcom/vzw/location/VzwLocation;

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v2, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->mListener:Lcom/vzw/location/ILocationListener;

    if-eqz v2, :cond_1

    .line 423
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :try_start_1
    iget-object v2, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v2}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VzwClient"

    const-string v3, "[VzwGpsLocationListener] Calling mListener.onLocationChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    iget-object v2, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->mListener:Lcom/vzw/location/ILocationListener;

    invoke-interface {v2, p1}, Lcom/vzw/location/ILocationListener;->onLocationChanged(Lcom/vzw/location/VzwLocation;)V

    .line 426
    monitor-exit p0

    .line 431
    const/4 v1, 0x1

    .line 433
    :cond_1
    :goto_0
    return v1

    .line 426
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v2, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->mListener:Lcom/vzw/location/ILocationListener;

    if-eqz v2, :cond_1

    .line 440
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :try_start_1
    iget-object v2, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v2}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VzwClient"

    const-string v3, "[VzwGpsLocationListener] Calling mListener.callProviderEnabledLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    if-eqz p2, :cond_2

    .line 443
    iget-object v2, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->mListener:Lcom/vzw/location/ILocationListener;

    invoke-interface {v2, p1}, Lcom/vzw/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 447
    :goto_0
    monitor-exit p0

    .line 452
    const/4 v1, 0x1

    .line 454
    :cond_1
    :goto_1
    return v1

    .line 445
    :cond_2
    iget-object v2, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->mListener:Lcom/vzw/location/ILocationListener;

    invoke-interface {v2, p1}, Lcom/vzw/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v2, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->mListener:Lcom/vzw/location/ILocationListener;

    if-eqz v2, :cond_1

    .line 408
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :try_start_1
    iget-object v2, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->this$0:Lcom/vzw/location/server/VzwClient;

    # getter for: Lcom/vzw/location/server/VzwClient;->DEBUG:Z
    invoke-static {v2}, Lcom/vzw/location/server/VzwClient;->access$500(Lcom/vzw/location/server/VzwClient;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VzwClient"

    const-string v3, "[VzwGpsLocationListener] Calling mListener.onStatusChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    iget-object v2, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->mListener:Lcom/vzw/location/ILocationListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/vzw/location/ILocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 411
    monitor-exit p0

    .line 415
    const/4 v1, 0x1

    .line 417
    :cond_1
    :goto_0
    return v1

    .line 411
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getListener()Lcom/vzw/location/ILocationListener;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->mListener:Lcom/vzw/location/ILocationListener;

    return-object v0
.end method

.method public isThereListener()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->mListener:Lcom/vzw/location/ILocationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 457
    return-void
.end method
