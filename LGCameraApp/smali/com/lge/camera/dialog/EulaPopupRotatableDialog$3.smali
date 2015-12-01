.class Lcom/lge/camera/dialog/EulaPopupRotatableDialog$3;
.super Ljava/lang/Object;
.source "EulaPopupRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$3;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    const-string v2, "CameraApp"

    const-string v3, "ok button click...."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$3;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    # getter for: Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mDoNotShowAgain:Z
    invoke-static {v2}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->access$000(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$3;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    iget-object v2, v2, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "EULA_POPUP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 81
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "EULA_DO_NOT_SHOW"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$3;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    invoke-virtual {v2}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->onDismiss()V

    .line 86
    iget-object v2, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$3;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    iget-object v2, v2, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    .line 87
    return-void
.end method
