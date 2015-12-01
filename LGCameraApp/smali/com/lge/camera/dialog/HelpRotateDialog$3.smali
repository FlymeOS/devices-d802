.class Lcom/lge/camera/dialog/HelpRotateDialog$3;
.super Ljava/lang/Object;
.source "HelpRotateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/HelpRotateDialog;->setPositiveButtonListener(Landroid/widget/Button;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/HelpRotateDialog;

.field final synthetic val$helpKeyString:Ljava/lang/String;

.field final synthetic val$useCheckBox:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/HelpRotateDialog;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lge/camera/dialog/HelpRotateDialog$3;->this$0:Lcom/lge/camera/dialog/HelpRotateDialog;

    iput-object p2, p0, Lcom/lge/camera/dialog/HelpRotateDialog$3;->val$helpKeyString:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/lge/camera/dialog/HelpRotateDialog$3;->val$useCheckBox:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ok button click. help key is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/dialog/HelpRotateDialog$3;->val$helpKeyString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/lge/camera/dialog/HelpRotateDialog$3;->this$0:Lcom/lge/camera/dialog/HelpRotateDialog;

    iget-object v2, v2, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Main_CameraAppConfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 125
    .local v1, "pref":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2

    .line 126
    iget-object v2, p0, Lcom/lge/camera/dialog/HelpRotateDialog$3;->this$0:Lcom/lge/camera/dialog/HelpRotateDialog;

    iget-boolean v2, v2, Lcom/lge/camera/dialog/HelpRotateDialog;->mDoNotShowAgain:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/lge/camera/dialog/HelpRotateDialog$3;->val$useCheckBox:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/lge/camera/dialog/HelpRotateDialog$3;->val$useCheckBox:Z

    if-nez v2, :cond_2

    .line 128
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/lge/camera/dialog/HelpRotateDialog$3;->val$helpKeyString:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    iget-object v2, p0, Lcom/lge/camera/dialog/HelpRotateDialog$3;->this$0:Lcom/lge/camera/dialog/HelpRotateDialog;

    iget-object v2, v2, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/controller/EnteringViewController;->setSystemHelpSettingOff(Landroid/app/Activity;)V

    .line 134
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/dialog/HelpRotateDialog$3;->this$0:Lcom/lge/camera/dialog/HelpRotateDialog;

    invoke-virtual {v2}, Lcom/lge/camera/dialog/HelpRotateDialog;->onDismiss()V

    .line 135
    return-void
.end method
