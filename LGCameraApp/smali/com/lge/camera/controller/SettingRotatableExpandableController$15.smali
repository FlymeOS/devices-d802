.class Lcom/lge/camera/controller/SettingRotatableExpandableController$15;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v8, 0xc8

    .line 1131
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->checkMediator()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getDialogID()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getEnableInput()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnItemClickListener position["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_camera_picturesize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_camera_shot_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_video_record_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSelectedChildIndex()I

    move-result v4

    if-ne p3, v4, :cond_3

    .line 1141
    const-string v4, "CameraApp"

    const-string v5, "Exit OnItemClickListener because press down same setting"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v5, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$1;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController$15;)V

    invoke-interface {v4, v5, v8, v9}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1152
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/lge/camera/setting/SettingMenuItem;->getChild(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuItem;->getParameterValue()Ljava/lang/String;

    move-result-object v3

    .line 1154
    .local v3, "selectedChildName":Ljava/lang/String;
    const-string v4, "recordmode_live_effect"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1156
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p3}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(I)Z

    .line 1159
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getMenuCommand()Ljava/lang/String;

    move-result-object v0

    .line 1161
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v4, "com.lge.camera.command.ShowHelpGuidePopup"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1163
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSettingParameterValue()Ljava/lang/String;

    move-result-object v2

    .line 1164
    .local v2, "helpGuide":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 1165
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, ""

    invoke-static {v2}, Lcom/lge/camera/util/DialogCreater;->getHelpDialogId(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    goto/16 :goto_0

    .line 1172
    .end local v2    # "helpGuide":Ljava/lang/String;
    :cond_6
    move-object v1, v0

    .line 1173
    .local v1, "command":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v5, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;

    invoke-direct {v5, p0, v3, v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController$15;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 1192
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->update()V

    .line 1193
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v5, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$3;

    invoke-direct {v5, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$3;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController$15;)V

    invoke-interface {v4, v5, v8, v9}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method
