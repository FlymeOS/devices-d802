.class Lcom/lge/view/SafevolumeToast$3;
.super Landroid/content/BroadcastReceiver;
.source "SafevolumeToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/SafevolumeToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/view/SafevolumeToast;


# direct methods
.method constructor <init>(Lcom/lge/view/SafevolumeToast;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lge/view/SafevolumeToast$3;->this$0:Lcom/lge/view/SafevolumeToast;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.lge.statusbar.expanded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$3;->this$0:Lcom/lge/view/SafevolumeToast;

    const/4 v2, 0x1

    # setter for: Lcom/lge/view/SafevolumeToast;->mIsExpanded:Z
    invoke-static {v1, v2}, Lcom/lge/view/SafevolumeToast;->access$802(Lcom/lge/view/SafevolumeToast;Z)Z

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v1, "com.lge.statusbar.collapsed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$3;->this$0:Lcom/lge/view/SafevolumeToast;

    const/4 v2, 0x0

    # setter for: Lcom/lge/view/SafevolumeToast;->mIsExpanded:Z
    invoke-static {v1, v2}, Lcom/lge/view/SafevolumeToast;->access$802(Lcom/lge/view/SafevolumeToast;Z)Z

    goto :goto_0
.end method
