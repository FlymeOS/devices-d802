.class Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$2;
.super Ljava/lang/Object;
.source "SelectVideoLengthRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    const-string v0, "CameraApp"

    const-string v1, "cancel button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;

    # invokes: Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;->onLongVideoClick()V
    invoke-static {v0}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;->access$100(Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;)V

    .line 58
    iget-object v0, p0, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;->onDismiss()V

    .line 59
    return-void
.end method
