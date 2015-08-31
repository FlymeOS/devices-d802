.class public Lcom/lge/wapservice/push/PushExpiration;
.super Landroid/app/Service;
.source "PushExpiration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wapservice/push/PushExpiration$PushTimerTask;
    }
.end annotation


# instance fields
.field private pushTimer:Ljava/util/Timer;

.field private serviceStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wapservice/push/PushExpiration;->serviceStarted:Z

    .line 45
    return-void
.end method

.method public static executePushDeletionForExpired(Landroid/content/Context;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v15, 0x0

    .line 105
    .local v15, "msgId":I
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 106
    .local v13, "expiresDateTime":Ljava/lang/Long;
    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v9, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 107
    .local v9, "currentDateTime":Ljava/util/Date;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "lgeExpires"

    aput-object v3, v5, v2

    .line 108
    .local v5, "PROJECTION":[Ljava/lang/String;
    const-string v6, "(lgeMsgType=1)"

    .line 113
    .local v6, "WHERE":Ljava/lang/String;
    invoke-static {v9}, Lcom/lge/wapservice/push/PushExpiration;->getUTC(Ljava/util/Date;)J

    move-result-wide v10

    .line 116
    .local v10, "currentUTC":J
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<PushExpiration> currentDateTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 122
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_2

    .line 124
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 126
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 128
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<PushExpiration> expiresDateTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v16, 0x0

    cmp-long v2, v2, v16

    if-lez v2, :cond_0

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-ltz v2, :cond_0

    .line 131
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 134
    .local v14, "mDeleteUri":Landroid/net/Uri;
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<PushExpiration> del uri= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " query= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v2}, Lcom/lge/wapservice/utils/DBManager;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 138
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.message.transaction.MESSAGE_STATUS_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 142
    .end local v14    # "mDeleteUri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_2
    return-void
.end method

.method private static getUTC(Ljava/util/Date;)J
    .locals 2
    .param p0, "dateTime"    # Ljava/util/Date;

    .prologue
    .line 161
    const-wide/16 v0, 0x0

    .line 163
    .local v0, "timeMills":J
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 167
    return-wide v0
.end method

.method public static startPushExpirationService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/wapservice/push/PushExpiration;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, "expirationIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 151
    return-void
.end method

.method public static stopPushExpirationService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/wapservice/push/PushExpiration;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, "expirationIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 157
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wapservice/push/PushExpiration;->serviceStarted:Z

    .line 92
    iget-object v0, p0, Lcom/lge/wapservice/push/PushExpiration;->pushTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/lge/wapservice/push/PushExpiration;->pushTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wapservice/push/PushExpiration;->pushTimer:Ljava/util/Timer;

    .line 98
    :cond_0
    const-string v0, "WapService"

    const-string v1, "<PushExpiration> push expiration service stopped.."

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 64
    iget-boolean v1, p0, Lcom/lge/wapservice/push/PushExpiration;->serviceStarted:Z

    if-nez v1, :cond_1

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/wapservice/push/PushExpiration;->serviceStarted:Z

    .line 67
    new-instance v0, Lcom/lge/wapservice/push/PushExpiration$PushTimerTask;

    invoke-direct {v0, p0}, Lcom/lge/wapservice/push/PushExpiration$PushTimerTask;-><init>(Lcom/lge/wapservice/push/PushExpiration;)V

    .line 68
    .local v0, "expirationTask":Lcom/lge/wapservice/push/PushExpiration$PushTimerTask;
    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/lge/wapservice/push/PushExpiration;->pushTimer:Ljava/util/Timer;

    .line 70
    iget-object v1, p0, Lcom/lge/wapservice/push/PushExpiration;->pushTimer:Ljava/util/Timer;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v0, v2, v4, v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 80
    :cond_0
    const-string v1, "WapService"

    const-string v2, "<PushExpiration> push expiration service started.."

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v0    # "expirationTask":Lcom/lge/wapservice/push/PushExpiration$PushTimerTask;
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v1, "WapService"

    const-string v2, "<PushExpiration> push expiration service already started"

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
