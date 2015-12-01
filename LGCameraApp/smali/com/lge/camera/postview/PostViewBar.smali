.class public Lcom/lge/camera/postview/PostViewBar;
.super Landroid/widget/RelativeLayout;
.source "PostViewBar.java"


# static fields
.field protected static final sCursorMinStep:I


# instance fields
.field protected mCursorHeight:F

.field protected mCursorMaxStep:I

.field protected mCursorPosHeight:I

.field protected mCursorPosWidth:I

.field protected mCursorWidth:F

.field protected mInitial:Z

.field protected mMaxCursorPos:I

.field protected mMinCursorPos:I

.field public mOnLineTouchListener:Landroid/view/View$OnTouchListener;

.field protected mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

.field protected mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorMaxStep:I

    .line 29
    iput v2, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorHeight:F

    .line 30
    iput v1, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorPosHeight:I

    .line 31
    iput v2, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorWidth:F

    .line 32
    iput v1, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorPosWidth:I

    .line 33
    iput v1, p0, Lcom/lge/camera/postview/PostViewBar;->mMinCursorPos:I

    .line 34
    iput v1, p0, Lcom/lge/camera/postview/PostViewBar;->mMaxCursorPos:I

    .line 37
    iput-boolean v1, p0, Lcom/lge/camera/postview/PostViewBar;->mInitial:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    .line 178
    new-instance v0, Lcom/lge/camera/postview/PostViewBar$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/postview/PostViewBar$2;-><init>(Lcom/lge/camera/postview/PostViewBar;)V

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorMaxStep:I

    .line 29
    iput v2, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorHeight:F

    .line 30
    iput v1, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorPosHeight:I

    .line 31
    iput v2, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorWidth:F

    .line 32
    iput v1, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorPosWidth:I

    .line 33
    iput v1, p0, Lcom/lge/camera/postview/PostViewBar;->mMinCursorPos:I

    .line 34
    iput v1, p0, Lcom/lge/camera/postview/PostViewBar;->mMaxCursorPos:I

    .line 37
    iput-boolean v1, p0, Lcom/lge/camera/postview/PostViewBar;->mInitial:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    .line 178
    new-instance v0, Lcom/lge/camera/postview/PostViewBar$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/postview/PostViewBar$2;-><init>(Lcom/lge/camera/postview/PostViewBar;)V

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorMaxStep:I

    .line 29
    iput v2, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorHeight:F

    .line 30
    iput v1, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorPosHeight:I

    .line 31
    iput v2, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorWidth:F

    .line 32
    iput v1, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorPosWidth:I

    .line 33
    iput v1, p0, Lcom/lge/camera/postview/PostViewBar;->mMinCursorPos:I

    .line 34
    iput v1, p0, Lcom/lge/camera/postview/PostViewBar;->mMaxCursorPos:I

    .line 37
    iput-boolean v1, p0, Lcom/lge/camera/postview/PostViewBar;->mInitial:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    .line 178
    new-instance v0, Lcom/lge/camera/postview/PostViewBar$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/postview/PostViewBar$2;-><init>(Lcom/lge/camera/postview/PostViewBar;)V

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 42
    return-void
.end method


# virtual methods
.method public getCursorValue()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/lge/camera/postview/PostViewBar;->mValue:I

    return v0
.end method

.method public initBar(ILcom/lge/camera/postview/PostViewBarListener;)V
    .locals 2
    .param p1, "maxStep"    # I
    .param p2, "listener"    # Lcom/lge/camera/postview/PostViewBarListener;

    .prologue
    .line 59
    iput-object p2, p0, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    .line 60
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostViewBar;->setLayoutDimension()V

    .line 61
    const v0, 0x7f0d016a

    invoke-virtual {p0, v0}, Lcom/lge/camera/postview/PostViewBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/postview/PostViewBar;->mInitial:Z

    .line 63
    iput p1, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorMaxStep:I

    .line 64
    return-void
.end method

.method public isBarVisible()Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostViewBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBarValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/lge/camera/postview/PostViewBar;->mValue:I

    .line 136
    iget v0, p0, Lcom/lge/camera/postview/PostViewBar;->mValue:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/postview/PostViewBar;->setCursor(I)V

    .line 137
    return-void
.end method

.method public setCursor(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostViewBar;->mInitial:Z

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    new-instance v1, Lcom/lge/camera/postview/PostViewBar$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/postview/PostViewBar$1;-><init>(Lcom/lge/camera/postview/PostViewBar;I)V

    invoke-interface {v0, v1}, Lcom/lge/camera/postview/PostViewBarListener;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setLayoutDimension()V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/postview/PostViewBar;->mMinCursorPos:I

    .line 68
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    const v1, 0x7f0900fb

    invoke-interface {v0, v1}, Lcom/lge/camera/postview/PostViewBarListener;->getPx(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/postview/PostViewBar;->mMaxCursorPos:I

    .line 69
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    const v1, 0x7f0900fd

    invoke-interface {v0, v1}, Lcom/lge/camera/postview/PostViewBarListener;->getPx(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorHeight:F

    .line 70
    iget v0, p0, Lcom/lge/camera/postview/PostViewBar;->mMaxCursorPos:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorHeight:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorPosHeight:I

    .line 71
    return-void
.end method

.method public setListener(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 74
    iget-boolean v1, p0, Lcom/lge/camera/postview/PostViewBar;->mInitial:Z

    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const v1, 0x7f0d0164

    invoke-virtual {p0, v1}, Lcom/lge/camera/postview/PostViewBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "barLayout":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 81
    if-eqz p1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/lge/camera/postview/PostViewBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 84
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setVisible(I)V
    .locals 3
    .param p1, "visible"    # I

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostViewBar;->mInitial:Z

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BarView-showControl:mValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/postview/PostViewBar;->mValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const v0, 0x7f0d016a

    invoke-virtual {p0, v0}, Lcom/lge/camera/postview/PostViewBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/lge/camera/postview/PostViewBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/lge/camera/postview/PostViewBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/postview/PostViewBar;->setListener(Z)V

    .line 55
    iput-object v1, p0, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    .line 56
    return-void
.end method

.method public updateBarWithValue(IZ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "actionEnd"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    invoke-interface {v0, p2}, Lcom/lge/camera/postview/PostViewBarListener;->onCursorMoving(Z)V

    .line 93
    :cond_0
    iget v0, p0, Lcom/lge/camera/postview/PostViewBar;->mValue:I

    if-ne v0, p1, :cond_2

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 96
    :cond_2
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostViewBar;->mInitial:Z

    if-eqz v0, :cond_1

    .line 100
    if-nez p2, :cond_1

    .line 103
    iget v0, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorMaxStep:I

    if-le p1, v0, :cond_3

    .line 104
    iget p1, p0, Lcom/lge/camera/postview/PostViewBar;->mCursorMaxStep:I

    .line 106
    :cond_3
    if-gez p1, :cond_4

    .line 107
    const/4 p1, 0x0

    .line 109
    :cond_4
    invoke-virtual {p0, p1}, Lcom/lge/camera/postview/PostViewBar;->setBarValue(I)V

    .line 111
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    invoke-interface {v0, p1}, Lcom/lge/camera/postview/PostViewBarListener;->onCursorUpdated(I)V

    .line 113
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    invoke-interface {v0, p2}, Lcom/lge/camera/postview/PostViewBarListener;->onCursorMoving(Z)V

    goto :goto_0
.end method
