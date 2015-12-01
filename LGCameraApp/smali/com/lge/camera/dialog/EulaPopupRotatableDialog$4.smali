.class Lcom/lge/camera/dialog/EulaPopupRotatableDialog$4;
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
    .line 90
    iput-object p1, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$4;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    const-string v0, "CameraApp"

    const-string v1, "cancel button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$4;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->onDismiss()V

    .line 94
    return-void
.end method
