.class public Lcom/lge/net/FastDownloadService$FDSUIHandler;
.super Ljava/lang/Object;
.source "FastDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/net/FastDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FDSUIHandler"
.end annotation


# static fields
.field private static final MOBILE_BANDWIDTH:I = 0xde

.field private static final WIFI_BANDWIDTH:I = 0x6f


# instance fields
.field private mDownloadState:I

.field private mNotification:Landroid/app/Notification;

.field final synthetic this$0:Lcom/lge/net/FastDownloadService;


# direct methods
.method public constructor <init>(Lcom/lge/net/FastDownloadService;)V
    .locals 1

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1203
    sget-boolean v0, Lcom/lge/net/FastDownloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "FDSUIHandler starting up"

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 1204
    :cond_0
    return-void
.end method


# virtual methods
.method public getDownloadState(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1211
    iget v0, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mDownloadState:I

    return v0
.end method

.method public removeNotificationArea()V
    .locals 2

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->access$2600(Lcom/lge/net/FastDownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1266
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->access$2600(Lcom/lge/net/FastDownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0xde

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1267
    return-void
.end method

.method public showNotificationArea(DD)V
    .locals 11
    .param p1, "wifiBandwidth"    # D
    .param p3, "mobileBandwidth"    # D

    .prologue
    .line 1221
    const/16 v2, 0x6f

    .line 1222
    .local v2, "notificationId":I
    add-double v4, p1, p3

    .line 1223
    .local v4, "totalBandwidth":D
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    .line 1224
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Landroid/app/Notification;->when:J

    .line 1225
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 1226
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 1227
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1228
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lge/net/FastDownloadService;->access$2500(Lcom/lge/net/FastDownloadService;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1230
    const-string v3, "Fast Download Throughput"

    .line 1231
    .local v3, "title":Ljava/lang/CharSequence;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wi-Fi : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Mbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nMobile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Mbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nTotal : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, "details":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    iput-object v3, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1234
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lge/net/FastDownloadService;->access$2500(Lcom/lge/net/FastDownloadService;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v3, v0, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1236
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$2600(Lcom/lge/net/FastDownloadService;)Landroid/app/NotificationManager;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    invoke-virtual {v6, v2, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1237
    return-void
.end method

.method public showNotificationArea(ID)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "bandwidth"    # D

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1240
    const/4 v2, 0x0

    .line 1241
    .local v2, "notificationId":I
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    .line 1242
    iget-object v4, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/app/Notification;->when:J

    .line 1243
    iget-object v4, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 1244
    iget-object v4, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    const v5, 0x108008a

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 1245
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1246
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lge/net/FastDownloadService;->access$2500(Lcom/lge/net/FastDownloadService;)Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x10000000

    invoke-static {v5, v8, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1247
    const-string v3, "Fast Download Throughput"

    .line 1248
    .local v3, "title":Ljava/lang/CharSequence;
    const-string v0, ""

    .line 1251
    .local v0, "details":Ljava/lang/CharSequence;
    if-nez p1, :cond_1

    .line 1252
    const/16 v2, 0x6f

    .line 1253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wi-Fi : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.2f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Mbps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1258
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1259
    iget-object v4, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lge/net/FastDownloadService;->access$2500(Lcom/lge/net/FastDownloadService;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1261
    iget-object v4, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/lge/net/FastDownloadService;->access$2600(Lcom/lge/net/FastDownloadService;)Landroid/app/NotificationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v2, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1262
    return-void

    .line 1254
    :cond_1
    if-ne p1, v9, :cond_0

    .line 1255
    const/16 v2, 0xde

    .line 1256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mobile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.2f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Mbps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showToastPopup()V
    .locals 0

    .prologue
    .line 1215
    return-void
.end method

.method public showUserSelectPopup()V
    .locals 0

    .prologue
    .line 1218
    return-void
.end method

.method public updateDownloadState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1207
    iput p1, p0, Lcom/lge/net/FastDownloadService$FDSUIHandler;->mDownloadState:I

    .line 1208
    return-void
.end method
