.class Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$1;
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
    .line 53
    iput-object p1, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    const-string v0, "CameraApp"

    const-string v1, "ok button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;

    # invokes: Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->OnPositiveButtonClick()V
    invoke-static {v0}, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->access$000(Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;)V

    .line 57
    iget-object v0, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->onDismiss()V

    .line 59
    return-void
.end method
