.class Lcom/lge/camera/PostviewAttachActivity$3;
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
    .line 138
    iput-object p1, p0, Lcom/lge/camera/PostviewAttachActivity$3;->this$0:Lcom/lge/camera/PostviewAttachActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    const-string v2, "CameraApp"

    const-string v3, "mPlayButtonListener clicked."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/lge/camera/PostviewAttachActivity$3;->this$0:Lcom/lge/camera/PostviewAttachActivity;

    invoke-virtual {v2}, Lcom/lge/camera/PostviewAttachActivity;->checkPauseAndAutoReview()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/camera/PostviewAttachActivity$3;->this$0:Lcom/lge/camera/PostviewAttachActivity;

    iget-object v2, v2, Lcom/lge/camera/PostviewAttachActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v2, "mimeType"

    const-string v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "android.intent.extra.finishOnCompletion"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/PostviewAttachActivity$3;->this$0:Lcom/lge/camera/PostviewAttachActivity;

    invoke-virtual {v2, v1}, Lcom/lge/camera/PostviewAttachActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "CameraApp"

    const-string v3, "ActivityNotFoundException : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    iget-object v2, p0, Lcom/lge/camera/PostviewAttachActivity$3;->this$0:Lcom/lge/camera/PostviewAttachActivity;

    iget-object v3, p0, Lcom/lge/camera/PostviewAttachActivity$3;->this$0:Lcom/lge/camera/PostviewAttachActivity;

    const v4, 0x7f0a019e

    invoke-virtual {v3, v4}, Lcom/lge/camera/PostviewAttachActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/PostviewAttachActivity;->toast(Ljava/lang/String;)V

    goto :goto_0
.end method
