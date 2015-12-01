.class Lcom/lge/camera/postview/PostviewOrientationInfo$2;
.super Ljava/lang/Object;
.source "PostviewOrientationInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/postview/PostviewOrientationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;


# direct methods
.method constructor <init>(Lcom/lge/camera/postview/PostviewOrientationInfo;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$2;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$2;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    # getter for: Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;
    invoke-static {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->access$300(Lcom/lge/camera/postview/PostviewOrientationInfo;)Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$2;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    # getter for: Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;
    invoke-static {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->access$300(Lcom/lge/camera/postview/PostviewOrientationInfo;)Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$2;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getActivityOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 241
    :cond_0
    return-void
.end method
