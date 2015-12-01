.class Lcom/lge/camera/postview/PostViewBar$1;
.super Ljava/lang/Object;
.source "PostViewBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/postview/PostViewBar;->setCursor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/postview/PostViewBar;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/lge/camera/postview/PostViewBar;I)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/lge/camera/postview/PostViewBar$1;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iput p2, p0, Lcom/lge/camera/postview/PostViewBar$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 150
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$1;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget-object v6, v6, Lcom/lge/camera/postview/PostViewBar;->mPostviewBarListener:Lcom/lge/camera/postview/PostViewBarListener;

    invoke-interface {v6, p0}, Lcom/lge/camera/postview/PostViewBarListener;->removePostRunnable(Ljava/lang/Object;)V

    .line 152
    const/4 v5, 0x0

    .line 153
    .local v5, "position":I
    const/4 v0, 0x0

    .line 154
    .local v0, "curLevel":I
    const/4 v3, 0x0

    .line 155
    .local v3, "marginDown":I
    :try_start_0
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$1;->this$0:Lcom/lge/camera/postview/PostViewBar;

    const v7, 0x7f0d016a

    invoke-virtual {v6, v7}, Lcom/lge/camera/postview/PostViewBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 156
    .local v1, "cursor":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 157
    .local v4, "param":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$1;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget v6, v6, Lcom/lge/camera/postview/PostViewBar;->mMaxCursorPos:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lge/camera/postview/PostViewBar$1;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget v7, v7, Lcom/lge/camera/postview/PostViewBar;->mCursorHeight:F

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 158
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$1;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget v6, v6, Lcom/lge/camera/postview/PostViewBar;->mCursorMaxStep:I

    if-eqz v6, :cond_0

    .line 159
    iget v6, p0, Lcom/lge/camera/postview/PostViewBar$1;->val$value:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lge/camera/postview/PostViewBar$1;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget v7, v7, Lcom/lge/camera/postview/PostViewBar;->mCursorPosHeight:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/lge/camera/postview/PostViewBar$1;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget v8, v8, Lcom/lge/camera/postview/PostViewBar;->mCursorMaxStep:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 162
    :cond_0
    sub-int v5, v3, v0

    .line 163
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$1;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget v6, v6, Lcom/lge/camera/postview/PostViewBar;->mMaxCursorPos:I

    if-le v5, v6, :cond_1

    .line 164
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$1;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget v5, v6, Lcom/lge/camera/postview/PostViewBar;->mMaxCursorPos:I

    .line 166
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$1;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget v6, v6, Lcom/lge/camera/postview/PostViewBar;->mMinCursorPos:I

    if-ge v5, v6, :cond_2

    .line 167
    iget-object v6, p0, Lcom/lge/camera/postview/PostViewBar$1;->this$0:Lcom/lge/camera/postview/PostViewBar;

    iget v5, v6, Lcom/lge/camera/postview/PostViewBar;->mMinCursorPos:I

    .line 169
    :cond_2
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 170
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1    # "cursor":Landroid/widget/ImageView;
    .end local v4    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "Exception:"

    invoke-static {v6, v7, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
