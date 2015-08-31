.class public Lcom/lge/wapservice/push/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, "mimeType":Ljava/lang/String;
    const-string v0, "lgeWapService/clear.push.notification"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-static {p1}, Lcom/lge/wapservice/push/PushNotification;->clearNotification(Landroid/content/Context;)V

    .line 49
    const-string v0, "WapService"

    const-string v8, "<PushReceiver> clearNotification called"

    invoke-static {v0, v8}, Lcom/lge/wapservice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 55
    .local v4, "document":[B
    const-string v0, "smscAdd"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "serviceCenterAddress":Ljava/lang/String;
    const-string v0, "originAdd"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "originatingAddress":Ljava/lang/String;
    const-string v0, "permissionToShow"

    const/4 v8, -0x1

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 59
    .local v5, "permission":I
    invoke-static {p1}, Lcom/lge/wapservice/settings/SettingsResolver;->isPushReceiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    const-string v0, "WapService"

    const-string v8, "<PushReceiver> push message discrd, receive preference disabled"

    invoke-static {v0, v8}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {p1}, Lcom/lge/wapservice/utils/DBManager;->setAppOpsForLGMessage(Landroid/content/Context;)V

    .line 67
    const-string v0, "lgeWapService/start.push.expiration.service"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    invoke-static {p1}, Lcom/lge/wapservice/push/PushExpiration;->startPushExpirationService(Landroid/content/Context;)V

    .line 69
    const-string v0, "WapService"

    const-string v8, "<PushReceiver> startPushExpirationService called"

    invoke-static {v0, v8}, Lcom/lge/wapservice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_3
    const-string v0, "lgeWapService/stop.push.expiration.service"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    invoke-static {p1}, Lcom/lge/wapservice/push/PushExpiration;->stopPushExpirationService(Landroid/content/Context;)V

    .line 73
    const-string v0, "WapService"

    const-string v8, "<PushReceiver> stopPushExpirationService called"

    invoke-static {v0, v8}, Lcom/lge/wapservice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_4
    if-eqz v4, :cond_0

    .line 81
    array-length v0, v4

    const/16 v8, 0x800

    if-le v0, v8, :cond_5

    .line 82
    const-string v0, "WapService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<PushReceiver> push message discrd, received message size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_5
    const/4 v3, 0x5

    .line 88
    .local v3, "msgType":I
    const-string v0, "application/vnd.wap.sic"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    const/4 v3, 0x1

    .line 96
    :goto_1
    const-string v0, "WapService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<PushReceiver> msgType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "WapService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<PushReceiver> DOC= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/lge/wapservice/utils/LgeUtils;->hexConvert([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v6, 0x0

    .line 101
    .local v6, "phoneID":I
    const-string v0, "phone"

    const/4 v8, 0x0

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 102
    const-string v0, "WapService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PushReceiver] onReceive phoneId ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 103
    invoke-static/range {v0 .. v6}, Lcom/lge/wapservice/settings/PushSenderValidityChecker;->SenderValidityCheckMain(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BII)V

    goto/16 :goto_0

    .line 90
    .end local v6    # "phoneID":I
    :cond_6
    const-string v0, "application/vnd.wap.slc"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 91
    const/4 v3, 0x2

    goto :goto_1

    .line 93
    :cond_7
    const/4 v3, 0x4

    goto :goto_1
.end method
