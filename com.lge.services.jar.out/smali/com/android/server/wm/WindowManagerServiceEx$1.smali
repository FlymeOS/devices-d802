.class Lcom/android/server/wm/WindowManagerServiceEx$1;
.super Landroid/os/Handler;
.source "WindowManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerServiceEx;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerServiceEx;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceEx$1;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x1

    .line 530
    const/4 v2, 0x0

    .line 531
    .local v2, "dsdpDisplayId":I
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx$1;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v12, "display"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 532
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v7

    .line 533
    .local v7, "presentationDisplays":[Landroid/view/Display;
    array-length v11, v7

    sput v11, Lcom/android/server/wm/WindowManagerServiceEx;->m_ExtDisplayNum:I

    .line 535
    sget v11, Lcom/android/server/wm/WindowManagerServiceEx;->m_ExtDisplayNum:I

    if-le v11, v13, :cond_0

    .line 536
    aget-object v11, v7, v13

    invoke-virtual {v11}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 539
    :cond_0
    const/4 v3, 0x1

    .line 540
    .local v3, "isMirroring":Z
    const/4 v5, 0x0

    .line 542
    .local v5, "mirroringMode":I
    sget v11, Lcom/android/server/wm/WindowManagerServiceEx;->m_ExtDisplayNum:I

    if-ne v11, v13, :cond_2

    .line 543
    const-string v11, "WindowManager"

    const-string v12, "[DSDR][WMSE.java] No external Displays connected. sys.lge.dsdp.mode set to STOP"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v5, 0x0

    .line 573
    :goto_0
    sget v11, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    if-eq v11, v5, :cond_1

    .line 574
    sput v5, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    .line 575
    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.lge.intent.action.DUAL_SCREEN_STATUS_CHANGED"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v6, "notifyIntent":Landroid/content/Intent;
    const/high16 v11, 0x4000000

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 577
    const-string v11, "Status"

    sget v12, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    sget v11, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 579
    const-string v11, "WindowManager"

    const-string v12, "[DSDR][WMSE.java] sys.lge.dsdp.mode set to START"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v11, "sys.lge.dsdp.mode"

    const-string v12, "start"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :goto_1
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx$1;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerServiceEx;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    const/4 v13, -0x2

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 586
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DSDR][WMSE.java]mDsdpHandler() : sending broadcast - mDsdpMode == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v6    # "notifyIntent":Landroid/content/Intent;
    :cond_1
    :goto_2
    return-void

    .line 547
    :cond_2
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerServiceEx$1;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-virtual {v11, v2}, Lcom/android/server/wm/WindowManagerServiceEx;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 548
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_3

    .line 549
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DSDR][WMSE.java] Display ID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Display Content is NULL. sys.lge.dsdp.mode set to STOP"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v11, "sys.lge.dsdp.mode"

    const-string v12, "stop"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const/4 v3, 0x1

    .line 552
    const/4 v11, 0x0

    sput v11, Lcom/android/server/wm/WindowManagerServiceEx;->mDsdpMode:I

    goto :goto_2

    .line 555
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v10

    .line 556
    .local v10, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    .line 557
    .local v9, "windowCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v9, :cond_5

    .line 558
    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 559
    .local v8, "window":Lcom/android/server/wm/WindowState;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7e9

    if-ne v11, v12, :cond_6

    .line 560
    :cond_4
    const/4 v3, 0x0

    .line 566
    .end local v8    # "window":Lcom/android/server/wm/WindowState;
    :cond_5
    if-ne v3, v13, :cond_7

    .line 567
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 557
    .restart local v8    # "window":Lcom/android/server/wm/WindowState;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 569
    .end local v8    # "window":Lcom/android/server/wm/WindowState;
    :cond_7
    const/4 v5, 0x2

    goto/16 :goto_0

    .line 582
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "j":I
    .end local v9    # "windowCount":I
    .end local v10    # "windows":Lcom/android/server/wm/WindowList;
    .restart local v6    # "notifyIntent":Landroid/content/Intent;
    :cond_8
    const-string v11, "WindowManager"

    const-string v12, "[DSDR][WMSE.java] sys.lge.dsdp.mode set to STOP"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v11, "sys.lge.dsdp.mode"

    const-string v12, "stop"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
