.class Lcom/lge/camera/controller/SettingRotatableController$13;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SettingRotatableController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableController;)V
    .locals 0

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1274
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/SettingRotatableController;->checkMediator()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getDialogID()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getEnableInput()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnItemClickListener position["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v2

    .line 1280
    .local v2, "currentMenukey":Ljava/lang/String;
    const-string v5, "key_camera_picturesize"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "key_camera_shot_mode"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "key_video_record_mode"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getSelectedChildIndex()I

    move-result v5

    if-ne p3, v5, :cond_3

    .line 1284
    const-string v5, "CameraApp"

    const-string v6, "Exit OnItemClickListener because press down same setting"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1288
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/lge/camera/setting/SettingMenuItem;->getChild(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/setting/SettingMenuItem;->getParameterValue()Ljava/lang/String;

    move-result-object v4

    .line 1290
    .local v4, "selectedChildName":Ljava/lang/String;
    const-string v5, "recordmode_live_effect"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1292
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, p3}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(I)Z

    .line 1295
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getMenuCommand()Ljava/lang/String;

    move-result-object v0

    .line 1296
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v5, "com.lge.camera.command.ShowHelpGuidePopup"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1297
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getSettingParameterValue()Ljava/lang/String;

    move-result-object v3

    .line 1298
    .local v3, "helpGuide":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 1299
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, ""

    invoke-static {v3}, Lcom/lge/camera/util/DialogCreater;->getHelpDialogId(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    invoke-interface {v5, v6, v7, v8}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    goto/16 :goto_0

    .line 1305
    .end local v3    # "helpGuide":Ljava/lang/String;
    :cond_6
    move-object v1, v0

    .line 1306
    .local v1, "command":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v6, Lcom/lge/camera/controller/SettingRotatableController$13$1;

    invoke-direct {v6, p0, v4, v1}, Lcom/lge/camera/controller/SettingRotatableController$13$1;-><init>(Lcom/lge/camera/controller/SettingRotatableController$13;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 1317
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v5}, Lcom/lge/camera/setting/SettingMenuAdapter;->update()V

    goto/16 :goto_0
.end method
