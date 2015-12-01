.class Lcom/lge/camera/CamcorderMediator$2;
.super Ljava/lang/Object;
.source "CamcorderMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CamcorderMediator;->showRecoridngStopButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/CamcorderMediator;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/lge/camera/CamcorderMediator$2;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$2;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CamcorderMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 558
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator$2;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->showRecoridngStopButton()V

    .line 559
    return-void
.end method
