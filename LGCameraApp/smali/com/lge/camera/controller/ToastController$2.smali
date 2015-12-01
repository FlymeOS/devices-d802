.class Lcom/lge/camera/controller/ToastController$2;
.super Ljava/lang/Object;
.source "ToastController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/ToastController;

.field final synthetic val$hideDelayMillis:J

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$needDisturb:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ToastController;ZJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lge/camera/controller/ToastController$2;->this$0:Lcom/lge/camera/controller/ToastController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/ToastController$2;->val$needDisturb:Z

    iput-wide p3, p0, Lcom/lge/camera/controller/ToastController$2;->val$hideDelayMillis:J

    iput-object p5, p0, Lcom/lge/camera/controller/ToastController$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 126
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController$2;->this$0:Lcom/lge/camera/controller/ToastController;

    iget-boolean v2, p0, Lcom/lge/camera/controller/ToastController$2;->val$needDisturb:Z

    iget-wide v4, p0, Lcom/lge/camera/controller/ToastController$2;->val$hideDelayMillis:J

    # invokes: Lcom/lge/camera/controller/ToastController;->checkDisturb(ZJ)Z
    invoke-static {v1, v2, v4, v5}, Lcom/lge/camera/controller/ToastController;->access$100(Lcom/lge/camera/controller/ToastController;ZJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController$2;->this$0:Lcom/lge/camera/controller/ToastController;

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController$2;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController$2;->this$0:Lcom/lge/camera/controller/ToastController;

    # getter for: Lcom/lge/camera/controller/ToastController;->mIsAllowDisturb:Z
    invoke-static {v1}, Lcom/lge/camera/controller/ToastController;->access$000(Lcom/lge/camera/controller/ToastController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController$2;->this$0:Lcom/lge/camera/controller/ToastController;

    # getter for: Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/camera/controller/ToastController;->access$300(Lcom/lge/camera/controller/ToastController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/ToastController$2;->this$0:Lcom/lge/camera/controller/ToastController;

    # getter for: Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/lge/camera/controller/ToastController;->access$200(Lcom/lge/camera/controller/ToastController;)Ljava/lang/Runnable;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/camera/controller/ToastController$2;->val$hideDelayMillis:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 133
    .local v0, "rtnValue":Z
    if-nez v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/lge/camera/controller/ToastController$2;->this$0:Lcom/lge/camera/controller/ToastController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    goto :goto_0
.end method
