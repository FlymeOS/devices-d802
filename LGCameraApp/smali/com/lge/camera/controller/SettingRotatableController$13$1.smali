.class Lcom/lge/camera/controller/SettingRotatableController$13$1;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableController$13;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/SettingRotatableController$13;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$selectedChildName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableController$13;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$13$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$13;

    iput-object p2, p0, Lcom/lge/camera/controller/SettingRotatableController$13$1;->val$selectedChildName:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/camera/controller/SettingRotatableController$13$1;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$13$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$13;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1309
    const-string v0, "recordmode_live_effect"

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController$13$1;->val$selectedChildName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$13$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$13;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_video_record_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$13$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$13;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController$13$1;->val$command:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController$13$1;->val$selectedChildName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1315
    :goto_0
    return-void

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$13$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$13;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController$13$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$13;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableController$13;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$13$1;->val$command:Ljava/lang/String;

    # invokes: Lcom/lge/camera/controller/SettingRotatableController;->doCommandSubMenuClicked(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/lge/camera/controller/SettingRotatableController;->access$200(Lcom/lge/camera/controller/SettingRotatableController;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
