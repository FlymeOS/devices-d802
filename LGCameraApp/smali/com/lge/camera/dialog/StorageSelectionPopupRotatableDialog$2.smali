.class Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$2;
.super Ljava/lang/Object;
.source "StorageSelectionPopupRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    const-string v0, "CameraApp"

    const-string v1, "hb cancel button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_storage"

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    iget-object v0, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetStorage"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->onDismiss()V

    .line 69
    return-void
.end method
