.class final Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;
.super Ljava/util/ArrayList;
.source "NotificationManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LGLEDList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_ADD_RECORD:I = 0x3

.field private static final ACTION_CLEAR_RECORD:I = 0x1

.field private static final ACTION_REMOVE_RECORD:I = 0x2


# instance fields
.field private mNotificationExceptionalPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerServiceEx;)V
    .locals 2

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->mNotificationExceptionalPackages:Ljava/util/List;

    .line 256
    # getter for: Lcom/android/server/notification/NotificationManagerServiceEx;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerServiceEx;->access$200(Lcom/android/server/notification/NotificationManagerServiceEx;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$array;->config_notification_exceptional_packages:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->mNotificationExceptionalPackages:Ljava/util/List;

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerServiceEx;Lcom/android/server/notification/NotificationManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/notification/NotificationManagerServiceEx$1;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;-><init>(Lcom/android/server/notification/NotificationManagerServiceEx;)V

    return-void
.end method

.method private isExceptionalPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "val":Z
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->mNotificationExceptionalPackages:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->mNotificationExceptionalPackages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 300
    :cond_0
    return v0
.end method

.method private updateLightListLocked(Ljava/lang/String;I)V
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerServiceEx;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    const/4 v8, 0x0

    .line 315
    .local v8, "notification":Landroid/app/Notification;
    const/4 v2, 0x0

    .line 316
    .local v2, "id":I
    const/4 v7, 0x0

    .line 317
    .local v7, "pkg":Ljava/lang/String;
    const-string v0, "NotificationServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateLightListLocked :r="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", action="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerServiceEx;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/NotificationRecord;

    .line 319
    .local v9, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 321
    const-string v0, "NotificationServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notification="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    .line 323
    iget-object v0, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 326
    :cond_2
    if-eqz v8, :cond_0

    iget v0, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 327
    iget v4, v8, Landroid/app/Notification;->ledARGB:I

    .line 328
    .local v4, "ledARGB":I
    iget v5, v8, Landroid/app/Notification;->ledOnMS:I

    .line 329
    .local v5, "ledOnMS":I
    iget v6, v8, Landroid/app/Notification;->ledOffMS:I

    .line 330
    .local v6, "ledOffMS":I
    iget v0, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    iget v4, v0, Lcom/android/server/notification/NotificationManagerServiceEx;->mDefaultNotificationColor:I

    .line 332
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    iget v5, v0, Lcom/android/server/notification/NotificationManagerServiceEx;->mDefaultNotificationLedOn:I

    .line 333
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->this$0:Lcom/android/server/notification/NotificationManagerServiceEx;

    iget v6, v0, Lcom/android/server/notification/NotificationManagerServiceEx;->mDefaultNotificationLedOff:I

    .line 335
    :cond_3
    if-eqz v4, :cond_0

    if-nez v6, :cond_4

    if-eqz v5, :cond_0

    .line 336
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->isExceptionalPackage(Ljava/lang/String;)Z

    move-result v3

    .local v3, "mExceptional":Z
    move-object v0, p0

    move v1, p2

    .line 337
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->updateLightList(IIZIIILjava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 247
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->add(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    const-string v0, "NotificationServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LED add() : mLights="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->updateLightListLocked(Ljava/lang/String;I)V

    .line 265
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 8

    .prologue
    .line 281
    monitor-enter p0

    .line 282
    :try_start_0
    const-string v0, "NotificationServiceEx"

    const-string v1, "LED clear()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->updateLightList(IIZIIILjava/lang/String;)V

    .line 284
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 285
    monitor-exit p0

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 271
    monitor-enter p0

    .line 272
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 273
    .local v1, "str":Ljava/lang/String;
    const-string v2, "NotificationServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LED remove() : mLights="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;->updateLightListLocked(Ljava/lang/String;I)V

    .line 275
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit p0

    return v2

    .line 276
    .end local v1    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateLightList(IIZIIILjava/lang/String;)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "id"    # I
    .param p3, "exceptional"    # Z
    .param p4, "color"    # I
    .param p5, "onMs"    # I
    .param p6, "offMs"    # I
    .param p7, "pkg"    # Ljava/lang/String;

    .prologue
    .line 347
    if-nez p7, :cond_0

    .line 348
    const-string p7, "native.notifications"

    .line 350
    :cond_0
    # invokes: Lcom/android/server/notification/NotificationManagerServiceEx;->updateLightList_native(IIZIIILjava/lang/String;)V
    invoke-static/range {p1 .. p7}, Lcom/android/server/notification/NotificationManagerServiceEx;->access$1000(IIZIIILjava/lang/String;)V

    .line 351
    return-void
.end method

.method public updateLightRestart()V
    .locals 0

    .prologue
    .line 343
    # invokes: Lcom/android/server/notification/NotificationManagerServiceEx;->updateLightRestart_native()V
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceEx;->access$900()V

    .line 344
    return-void
.end method
