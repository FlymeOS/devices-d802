.class Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;
.super Ljava/lang/Object;
.source "ShowLiveEffectSubMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/command/ShowLiveEffectSubMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 354
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isPressedShutterButton()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 355
    const-string v5, "CameraApp"

    const-string v6, "ShutterButton pressed -> block goofyface click"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    # invokes: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->hide()V
    invoke-static {v5}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$000(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)V

    .line 361
    iget-object v6, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    # setter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I
    invoke-static {v6, v5}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$102(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I

    .line 362
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    # getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I
    invoke-static {v5}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$100(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v5

    if-nez v5, :cond_2

    .line 363
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    const/4 v6, 0x1

    # setter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I
    invoke-static {v5, v6}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$202(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I

    .line 371
    :goto_1
    const/4 v4, 0x0

    .line 372
    .local v4, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 373
    .local v1, "menuIndex":I
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    # getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->hasVideoRecordMode:Z
    invoke-static {v5}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$300(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 374
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getLiveEffectList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    # getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I
    invoke-static {v6}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$100(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "value":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 375
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v1

    .line 376
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v4}, Lcom/lge/camera/ControllerFunction;->setLiveEffect(Ljava/lang/String;)V

    .line 377
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 378
    .local v2, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_1

    .line 379
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v1}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 380
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v6, v6, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "recordmode_live_effect"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getChildIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(I)Z

    .line 381
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerAllMenuIcons()V

    .line 387
    :goto_2
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "recordmode_live_effect"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->setPreviousRecordModeString(Ljava/lang/String;)V

    .line 404
    :cond_1
    :goto_3
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOnFaceEffectClickListener idx:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    # getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I
    invoke-static {v7}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$100(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", onClick:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.setting.SetLiveEffect"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    .end local v1    # "menuIndex":I
    .end local v2    # "pref":Lcom/lge/camera/setting/ListPreference;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    const/4 v6, 0x0

    # setter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I
    invoke-static {v5, v6}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$202(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I

    goto/16 :goto_1

    .line 383
    .restart local v1    # "menuIndex":I
    .restart local v2    # "pref":Lcom/lge/camera/setting/ListPreference;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex(Ljava/lang/String;)I

    move-result v3

    .line 384
    .local v3, "settingMenuIndex":I
    const-string v5, "recordmode_live_effect"

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 385
    .local v0, "childIndex":I
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v3, v0}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(II)Z

    goto :goto_2

    .line 390
    .end local v0    # "childIndex":I
    .end local v2    # "pref":Lcom/lge/camera/setting/ListPreference;
    .end local v3    # "settingMenuIndex":I
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_live_effect"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 391
    .restart local v2    # "pref":Lcom/lge/camera/setting/ListPreference;
    if-nez v2, :cond_5

    .line 392
    const-string v5, "CameraApp"

    const-string v6, "pref is null"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 395
    :cond_5
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    # getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I
    invoke-static {v6}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$100(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 396
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_live_effect"

    invoke-interface {v5, v6, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 397
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_live_effect"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v1

    .line 399
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v1}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 400
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v5, v5, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    # getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I
    invoke-static {v6}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$100(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerMenuIcon(II)V

    goto/16 :goto_3
.end method
