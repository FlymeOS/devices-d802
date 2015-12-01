.class Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReleaseArea"
.end annotation


# instance fields
.field public mBottom:I

.field public mLeft:I

.field public mRight:I

.field public mTop:I

.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method public constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;IIII)V
    .locals 0
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p2, p0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mLeft:I

    .line 123
    iput p3, p0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mTop:I

    .line 124
    iput p4, p0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mRight:I

    .line 125
    iput p5, p0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mBottom:I

    .line 126
    return-void
.end method
