.class public Lcom/lge/gles/GLESSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "GLESSurfaceView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "quilt GLESSurfaceView"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mRenderer:Lcom/lge/gles/GLESRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/lge/gles/GLESRenderer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "renderer"    # Lcom/lge/gles/GLESRenderer;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/lge/gles/GLESSurfaceView;->init(Landroid/content/Context;Lcom/lge/gles/GLESRenderer;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/gles/GLESRenderer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderer"    # Lcom/lge/gles/GLESRenderer;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/lge/gles/GLESSurfaceView;->init(Landroid/content/Context;Lcom/lge/gles/GLESRenderer;)V

    .line 30
    return-void
.end method

.method private init(Landroid/content/Context;Lcom/lge/gles/GLESRenderer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderer"    # Lcom/lge/gles/GLESRenderer;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/gles/GLESSurfaceView;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    .line 50
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    invoke-interface {v0, p0}, Lcom/lge/gles/GLESRenderer;->setSurfaceView(Lcom/lge/gles/GLESSurfaceView;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    invoke-interface {v0}, Lcom/lge/gles/GLESRenderer;->initRenderer()V

    .line 81
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 82
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    invoke-interface {v0}, Lcom/lge/gles/GLESRenderer;->initRenderer()V

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 95
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 1
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 63
    move-object v0, p1

    check-cast v0, Lcom/lge/gles/GLESRenderer;

    iput-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    .line 64
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    invoke-interface {v0, p0}, Lcom/lge/gles/GLESRenderer;->setSurfaceView(Lcom/lge/gles/GLESSurfaceView;)V

    .line 66
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 67
    return-void
.end method

.method public touchCancel(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v0, Lcom/lge/gles/GLESSurfaceView$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/lge/gles/GLESSurfaceView$4;-><init>(Lcom/lge/gles/GLESSurfaceView;FF)V

    invoke-virtual {p0, v0}, Lcom/lge/gles/GLESSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public touchDown(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/gles/GLESSurfaceView;->touchDown(FFF)Z

    move-result v0

    return v0
.end method

.method public touchDown(FFF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "userData"    # F

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    .line 126
    :cond_0
    new-instance v0, Lcom/lge/gles/GLESSurfaceView$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lge/gles/GLESSurfaceView$1;-><init>(Lcom/lge/gles/GLESSurfaceView;FFF)V

    invoke-virtual {p0, v0}, Lcom/lge/gles/GLESSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 132
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchMove(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/gles/GLESSurfaceView;->touchMove(FFF)Z

    move-result v0

    return v0
.end method

.method public touchMove(FFF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "userData"    # F

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    .line 199
    :cond_0
    new-instance v0, Lcom/lge/gles/GLESSurfaceView$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lge/gles/GLESSurfaceView$3;-><init>(Lcom/lge/gles/GLESSurfaceView;FFF)V

    invoke-virtual {p0, v0}, Lcom/lge/gles/GLESSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 205
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchUp(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/gles/GLESSurfaceView;->touchUp(FFF)V

    .line 145
    return-void
.end method

.method public touchUp(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "userData"    # F

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Lcom/lge/gles/GLESSurfaceView$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lge/gles/GLESSurfaceView$2;-><init>(Lcom/lge/gles/GLESSurfaceView;FFF)V

    invoke-virtual {p0, v0}, Lcom/lge/gles/GLESSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
