.class Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
.super Ljava/lang/Object;
.source "ImageButtonEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/ImageButtonEx;
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

.field final synthetic this$0:Lcom/lge/camera/components/ImageButtonEx;


# direct methods
.method public constructor <init>(Lcom/lge/camera/components/ImageButtonEx;IIII)V
    .locals 0
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->this$0:Lcom/lge/camera/components/ImageButtonEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p2, p0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mLeft:I

    .line 37
    iput p3, p0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mTop:I

    .line 38
    iput p4, p0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mRight:I

    .line 39
    iput p5, p0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mBottom:I

    .line 40
    return-void
.end method
