.class Lcom/lge/camera/PostviewAttachActivity$1;
.super Ljava/lang/Object;
.source "PostviewAttachActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewAttachActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewAttachActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewAttachActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lge/camera/PostviewAttachActivity$1;->this$0:Lcom/lge/camera/PostviewAttachActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 113
    const-string v1, "CameraApp"

    const-string v2, "Attach button clicked."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/lge/camera/PostviewAttachActivity$1;->this$0:Lcom/lge/camera/PostviewAttachActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewAttachActivity;->checkPauseAndAutoReview()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/PostviewAttachActivity$1;->this$0:Lcom/lge/camera/PostviewAttachActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewAttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "doAttach"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/lge/camera/PostviewAttachActivity$1;->this$0:Lcom/lge/camera/PostviewAttachActivity;

    iget-object v1, v1, Lcom/lge/camera/PostviewAttachActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 121
    const-string v1, "postview_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/PostviewAttachActivity$1;->this$0:Lcom/lge/camera/PostviewAttachActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Lcom/lge/camera/PostviewAttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 127
    iget-object v1, p0, Lcom/lge/camera/PostviewAttachActivity$1;->this$0:Lcom/lge/camera/PostviewAttachActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewAttachActivity;->finish()V

    goto :goto_0

    .line 123
    :cond_1
    const-string v1, "postview_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method
