.class Lcom/lge/camera/dialog/AuCloudDialog$2;
.super Ljava/lang/Object;
.source "AuCloudDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/AuCloudDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/AuCloudDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/AuCloudDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/camera/dialog/AuCloudDialog$2;->this$0:Lcom/lge/camera/dialog/AuCloudDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    const-string v0, "CameraApp"

    const-string v1, "cancel button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/lge/camera/dialog/AuCloudDialog$2;->this$0:Lcom/lge/camera/dialog/AuCloudDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/AuCloudDialog;->onDismiss()V

    .line 68
    return-void
.end method
