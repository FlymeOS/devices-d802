.class Lcom/lge/camera/dialog/EnableGalleryRotatableDialog$2;
.super Ljava/lang/Object;
.source "EnableGalleryRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    const-string v0, "CameraApp"

    const-string v1, "cancel button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;->onDismiss()V

    .line 90
    return-void
.end method
