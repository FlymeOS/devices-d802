.class Lcom/lge/app/floating/FloatableActivity$2;
.super Landroid/os/Handler;
.source "FloatableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/FloatableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/FloatableActivity;


# direct methods
.method constructor <init>(Lcom/lge/app/floating/FloatableActivity;)V
    .locals 0

    .prologue
    .line 1794
    iput-object p1, p0, Lcom/lge/app/floating/FloatableActivity$2;->this$0:Lcom/lge/app/floating/FloatableActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1797
    # getter for: Lcom/lge/app/floating/FloatableActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatableActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleMessage : startActivity"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    iget-object v2, p0, Lcom/lge/app/floating/FloatableActivity$2;->this$0:Lcom/lge/app/floating/FloatableActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v2, v1}, Lcom/lge/app/floating/FloatableActivity;->startActivity(Landroid/content/Intent;)V

    .line 1802
    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity$2;->this$0:Lcom/lge/app/floating/FloatableActivity;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1803
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/lge/app/floating/FloatableActivity$2;->this$0:Lcom/lge/app/floating/FloatableActivity;

    # getter for: Lcom/lge/app/floating/FloatableActivity;->mTaskId:I
    invoke-static {v1}, Lcom/lge/app/floating/FloatableActivity;->access$200(Lcom/lge/app/floating/FloatableActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 1804
    return-void
.end method
