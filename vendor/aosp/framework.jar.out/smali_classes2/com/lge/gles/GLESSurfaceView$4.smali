.class Lcom/lge/gles/GLESSurfaceView$4;
.super Ljava/lang/Object;
.source "GLESSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/gles/GLESSurfaceView;->touchCancel(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/gles/GLESSurfaceView;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/lge/gles/GLESSurfaceView;FF)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/lge/gles/GLESSurfaceView$4;->this$0:Lcom/lge/gles/GLESSurfaceView;

    iput p2, p0, Lcom/lge/gles/GLESSurfaceView$4;->val$x:F

    iput p3, p0, Lcom/lge/gles/GLESSurfaceView$4;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView$4;->this$0:Lcom/lge/gles/GLESSurfaceView;

    iget-object v0, v0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    iget v1, p0, Lcom/lge/gles/GLESSurfaceView$4;->val$x:F

    iget v2, p0, Lcom/lge/gles/GLESSurfaceView$4;->val$y:F

    invoke-interface {v0, v1, v2}, Lcom/lge/gles/GLESRenderer;->touchCancel(FF)V

    .line 225
    return-void
.end method
