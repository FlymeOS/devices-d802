.class Lcom/lge/camera/postview/PostViewBar$2;
.super Ljava/lang/Object;
.source "PostViewBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/postview/PostViewBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/postview/PostViewBar;


# direct methods
.method constructor <init>(Lcom/lge/camera/postview/PostViewBar;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lge/camera/postview/PostViewBar$2;->this$0:Lcom/lge/camera/postview/PostViewBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getValueForLineTouchListener(FF)I
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 215
    const/4 v5, 0x0

    .line 216
    .local v5, "value":I
    const/4 v2, 0x0

    .line 217
    .local v2, "marginDown":I
    const/4 v0, 0x0

    .line 219
    .local v0, "curLineLevel":F
    :try_start_0
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$2;->this$0:Lcom/lge/camera/postview/PostViewBar;

    const v7, 0x7f0d0166

    invoke-virtual {v6, v7}, Lcom/lge/camera/postview/PostViewBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 220
    .local v3, "plusBtn":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    .line 221
    .local v4, "plusMargin":I
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$2;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget v6, v6, Lcom/lge/camera/postview/PostViewBar;->mMaxCursorPos:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lge/camera/postview/PostViewBar$2;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget v7, v7, Lcom/lge/camera/postview/PostViewBar;->mCursorHeight:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 222
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$2;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget v6, v6, Lcom/lge/camera/postview/PostViewBar;->mCursorMaxStep:I

    if-eqz v6, :cond_0

    .line 223
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$2;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget v6, v6, Lcom/lge/camera/postview/PostViewBar;->mCursorPosHeight:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lge/camera/postview/PostViewBar$2;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget v7, v7, Lcom/lge/camera/postview/PostViewBar;->mCursorMaxStep:I

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 224
    invoke-static {v0}, Ljava/lang/Math;->round(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    :goto_0
    float-to-int v5, v6

    .line 230
    .end local v3    # "plusBtn":Landroid/widget/ImageView;
    .end local v4    # "plusMargin":I
    :cond_0
    :goto_1
    return v5

    .line 224
    .restart local v3    # "plusBtn":Landroid/widget/ImageView;
    .restart local v4    # "plusMargin":I
    :cond_1
    int-to-float v6, v2

    sub-float/2addr v6, p2

    int-to-float v7, v4

    add-float/2addr v6, v7

    div-float/2addr v6, v0

    goto :goto_0

    .line 227
    .end local v3    # "plusBtn":Landroid/widget/ImageView;
    .end local v4    # "plusMargin":I
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "Exception:"

    invoke-static {v6, v7, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$2;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget-boolean v6, v6, Lcom/lge/camera/postview/PostViewBar;->mInitial:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$2;->this$0:Lcom/lge/camera/postview/PostViewBar;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewBar;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v4

    .line 184
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 185
    .local v2, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 186
    .local v3, "y":F
    const/4 v1, 0x0

    .line 188
    .local v1, "value":I
    invoke-direct {p0, v2, v3}, Lcom/lge/camera/postview/PostViewBar$2;->getValueForLineTouchListener(FF)I

    move-result v1

    .line 189
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$2;->this$0:Lcom/lge/camera/postview/PostViewBar;

    const v7, 0x7f0d016a

    invoke-virtual {v6, v7}, Lcom/lge/camera/postview/PostViewBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 190
    .local v0, "cursor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_1
    move v4, v5

    .line 211
    goto :goto_0

    .line 196
    :pswitch_0
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 197
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 198
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$2;->this$0:Lcom/lge/camera/postview/PostViewBar;

    invoke-virtual {v6, v1, v4}, Lcom/lge/camera/postview/PostViewBar;->updateBarWithValue(IZ)V

    goto :goto_1

    .line 201
    :pswitch_1
    const/16 v6, 0x1000

    invoke-virtual {v0, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 202
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 203
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$2;->this$0:Lcom/lge/camera/postview/PostViewBar;

    invoke-virtual {v6, v1, v4}, Lcom/lge/camera/postview/PostViewBar;->updateBarWithValue(IZ)V

    goto :goto_1

    .line 207
    :pswitch_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 208
    iget-object v4, p0, Lcom/lge/camera/postview/PostViewBar$2;->this$0:Lcom/lge/camera/postview/PostViewBar;

    invoke-virtual {v4, v1, v5}, Lcom/lge/camera/postview/PostViewBar;->updateBarWithValue(IZ)V

    goto :goto_1

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
