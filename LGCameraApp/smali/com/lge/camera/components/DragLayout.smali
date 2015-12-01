.class public Lcom/lge/camera/components/DragLayout;
.super Landroid/widget/RelativeLayout;
.source "DragLayout.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private mDragging:Z

.field private mMotionDownX:F

.field private mMotionDownY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/DragLayout;->mDragging:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getDrag()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lge/camera/components/DragLayout;->mDragging:Z

    return v0
.end method

.method public getMotionDownX()F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/camera/components/DragLayout;->mMotionDownX:F

    return v0
.end method

.method public getMotionDownY()F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/lge/camera/components/DragLayout;->mMotionDownY:F

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 55
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v1, v3

    .line 56
    .local v1, "screenX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    .line 57
    .local v2, "screenY":I
    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/lge/camera/components/DragLayout;->mDragging:Z

    return v3

    .line 62
    :pswitch_1
    int-to-float v3, v1

    iput v3, p0, Lcom/lge/camera/components/DragLayout;->mMotionDownX:F

    .line 63
    int-to-float v3, v2

    iput v3, p0, Lcom/lge/camera/components/DragLayout;->mMotionDownY:F

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setDrag(Z)V
    .locals 0
    .param p1, "drag"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lge/camera/components/DragLayout;->mDragging:Z

    .line 50
    return-void
.end method

.method public setMotionDownX(F)V
    .locals 0
    .param p1, "motionDownX"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/lge/camera/components/DragLayout;->mMotionDownX:F

    .line 34
    return-void
.end method

.method public setMotionDownY(F)V
    .locals 0
    .param p1, "motionDownY"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/lge/camera/components/DragLayout;->mMotionDownY:F

    .line 42
    return-void
.end method
