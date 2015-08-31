.class public Lcom/lge/wapservice/settings/PushSenderValidityChecker;
.super Ljava/lang/Object;
.source "PushSenderValidityChecker.java"


# direct methods
.method public static SenderValidityCheckMain(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BII)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceCenterAddress"    # Ljava/lang/String;
    .param p2, "originatingAddress"    # Ljava/lang/String;
    .param p3, "msgType"    # I
    .param p4, "document"    # [B
    .param p5, "permission"    # I
    .param p6, "phoneId"    # I

    .prologue
    const/4 v3, 0x1

    .line 58
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PushSenderValidityChecker} SenderValidityCheckMain phoneID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-ne p5, v3, :cond_1

    .line 62
    const/4 v6, 0x1

    .line 67
    .local v6, "result":I
    :goto_0
    if-ne v6, v3, :cond_2

    move-object v0, p0

    move v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p6

    .line 68
    invoke-static/range {v0 .. v5}, Lcom/lge/wapservice/push/PushValidation;->executePushReceiveValidation(Landroid/content/Context;I[BLjava/lang/String;Ljava/lang/String;I)V

    .line 76
    :cond_0
    :goto_1
    return-void

    .line 64
    .end local v6    # "result":I
    :cond_1
    const/4 v6, 0x1

    .restart local v6    # "result":I
    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, 0x2

    if-ne v6, v0, :cond_0

    .line 71
    const-string v0, "WapService"

    const-string v1, "This Sender is about to be updated in the list..."

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lge/wapservice/settings/PushSenderValidityChecker;->createUnknownSenderUpdateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[B)V

    goto :goto_1
.end method

.method public static createPendingNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[B)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceCenterAddress"    # Ljava/lang/String;
    .param p2, "originatingAddress"    # Ljava/lang/String;
    .param p3, "msgType"    # I
    .param p4, "document"    # [B

    .prologue
    const/4 v2, 0x0

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/wapservice/settings/SenderListUpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.wapservice.smscaddress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "com.lge.wapservice.originatingaddress"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "com.lge.wapservice.msgtype"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v1, "com.lge.wapservice.document"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 115
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static createUnknownSenderUpdateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceCenterAddress"    # Ljava/lang/String;
    .param p2, "originatingAddress"    # Ljava/lang/String;
    .param p3, "msgType"    # I
    .param p4, "document"    # [B

    .prologue
    .line 85
    const v5, 0x7f07005f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "tickerText":Ljava/lang/String;
    const v5, 0x7f070060

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "title":Ljava/lang/String;
    const v5, 0x7f070061

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "message":Ljava/lang/String;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 92
    .local v0, "manager":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 93
    .local v2, "notification":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 94
    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 95
    const v5, 0x7f020002

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 97
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lge/wapservice/settings/PushSenderValidityChecker;->createPendingNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[B)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, p0, v4, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 101
    iget v5, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v2, Landroid/app/Notification;->defaults:I

    .line 102
    iget v5, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/app/Notification;->defaults:I

    .line 103
    const/16 v5, 0x2382

    invoke-virtual {v0, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 104
    return-void
.end method
