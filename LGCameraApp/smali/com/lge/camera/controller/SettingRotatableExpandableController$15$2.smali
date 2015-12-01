.class Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$selectedChildName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableExpandableController$15;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iput-object p2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->val$selectedChildName:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1175
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1176
    const-string v1, "recordmode_live_effect"

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->val$selectedChildName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_record_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->val$command:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->val$selectedChildName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1190
    :goto_0
    return-void

    .line 1179
    :cond_0
    const-string v1, "com.lge.camera.command.setting.SetAudiozoom"

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->val$command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "on"

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->val$selectedChildName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    # getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I
    invoke-static {v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$1500(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I

    move-result v2

    const/16 v3, 0x5a

    invoke-static {v1, v2, v3}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    # getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I
    invoke-static {v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$1500(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I

    move-result v2

    const/16 v3, 0x10e

    invoke-static {v1, v2, v3}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1183
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/ToastController;->hide()V

    .line 1184
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    const v2, 0x7f0a033c

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1185
    .local v0, "notifyMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;J)V

    .line 1186
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->val$command:Ljava/lang/String;

    # invokes: Lcom/lge/camera/controller/SettingRotatableExpandableController;->doCommandSubMenuClicked(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$1600(Lcom/lge/camera/controller/SettingRotatableExpandableController;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1188
    .end local v0    # "notifyMsg":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$15;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableExpandableController$15;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$15$2;->val$command:Ljava/lang/String;

    # invokes: Lcom/lge/camera/controller/SettingRotatableExpandableController;->doCommandSubMenuClicked(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$1600(Lcom/lge/camera/controller/SettingRotatableExpandableController;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
