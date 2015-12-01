.class Lcom/lge/camera/ShotPostviewActivity$4;
.super Ljava/lang/Object;
.source "ShotPostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/ShotPostviewActivity;->toast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/ShotPostviewActivity;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/camera/ShotPostviewActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity$4;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    iput-object p2, p0, Lcom/lge/camera/ShotPostviewActivity$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 667
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$4;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    iget-object v0, v0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$4;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    iget-object v0, v0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v0, :cond_1

    .line 668
    const/4 v6, 0x0

    .line 669
    .local v6, "orientation":I
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$4;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    iget-object v0, v0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$4;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    iget-object v0, v0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 671
    :cond_0
    const/4 v6, 0x0

    .line 675
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$4;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    iget-object v1, v0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$4;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    invoke-virtual {v0}, Lcom/lge/camera/ShotPostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity$4;->val$msg:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/lge/camera/postview/PostViewToast;->show(Landroid/content/Context;Ljava/lang/String;JI)V

    .line 677
    .end local v6    # "orientation":I
    :cond_1
    return-void

    .line 673
    .restart local v6    # "orientation":I
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method
