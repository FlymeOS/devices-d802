.class Lcom/lge/camera/dialog/DeleteRotatableDialog$1;
.super Ljava/lang/Object;
.source "DeleteRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/DeleteRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/DeleteRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/DeleteRotatableDialog;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/camera/dialog/DeleteRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/DeleteRotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    const-string v0, "CameraApp"

    const-string v1, "ok button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/lge/camera/dialog/DeleteRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/DeleteRotatableDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/dialog/DeleteRotatableDialog;->onDismiss(Z)V

    .line 52
    return-void
.end method
