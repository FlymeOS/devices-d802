.class Lcom/lge/camera/dialog/StoragePopupRotatableDialog$1;
.super Ljava/lang/Object;
.source "StoragePopupRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/StoragePopupRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/StoragePopupRotatableDialog;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/StoragePopupRotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    const-string v0, "CameraApp"

    const-string v1, "ok button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/StoragePopupRotatableDialog;

    # invokes: Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->OnPositiveButtonClick()V
    invoke-static {v0}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->access$000(Lcom/lge/camera/dialog/StoragePopupRotatableDialog;)V

    .line 72
    iget-object v0, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/StoragePopupRotatableDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->onDismiss()V

    .line 73
    return-void
.end method
