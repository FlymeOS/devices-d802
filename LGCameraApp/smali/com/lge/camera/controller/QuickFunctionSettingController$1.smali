.class Lcom/lge/camera/controller/QuickFunctionSettingController$1;
.super Ljava/lang/Object;
.source "QuickFunctionSettingController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/QuickFunctionSettingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionSettingController;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 283
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/lge/camera/setting/SettingMenuItem;->getChild(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/SettingMenuItem;->getParameterValue()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "selectedChildName":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPressedShutterButton()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isSwitcherLeverPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "ShutterButton or SwitcherLever is pressed -> block child menu click"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "currentMenukey":Ljava/lang/String;
    const-string v3, "key_camera_picturesize"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "key_video_record_mode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSelectedChildIndex()I

    move-result v3

    if-ne p3, v3, :cond_3

    .line 297
    const-string v3, "CameraApp"

    const-string v4, "Exit OnItemClickListener because press down same setting"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v4, Lcom/lge/camera/controller/QuickFunctionSettingController$1$1;

    invoke-direct {v4, p0}, Lcom/lge/camera/controller/QuickFunctionSettingController$1$1;-><init>(Lcom/lge/camera/controller/QuickFunctionSettingController$1;)V

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 307
    :cond_3
    const-string v3, "recordmode_live_effect"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_video_record_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    if-nez v3, :cond_5

    .line 309
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p3}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(I)Z

    .line 313
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerAllMenuIcons()V

    .line 317
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/SettingMenuItem;->getCommand()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "command":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionSettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v4, Lcom/lge/camera/controller/QuickFunctionSettingController$1$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/lge/camera/controller/QuickFunctionSettingController$1$2;-><init>(Lcom/lge/camera/controller/QuickFunctionSettingController$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 331
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v3}, Lcom/lge/camera/setting/SettingMenuAdapter;->update()V

    goto/16 :goto_0
.end method
