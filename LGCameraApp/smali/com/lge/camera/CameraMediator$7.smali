.class Lcom/lge/camera/CameraMediator$7;
.super Ljava/lang/Object;
.source "CameraMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CameraMediator;->removeFreePanoramaBlackBg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CameraMediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/CameraMediator;)V
    .locals 0

    .prologue
    .line 1941
    iput-object p1, p0, Lcom/lge/camera/CameraMediator$7;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/lge/camera/CameraMediator$7;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 1944
    iget-object v0, p0, Lcom/lge/camera/CameraMediator$7;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview;->setTranslationY(F)V

    .line 1945
    iget-object v0, p0, Lcom/lge/camera/CameraMediator$7;->this$0:Lcom/lge/camera/CameraMediator;

    const v1, 0x7f0d008c

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1946
    return-void
.end method
