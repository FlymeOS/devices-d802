.class Lcom/lge/wapservice/push/PushViewer$1;
.super Ljava/lang/Object;
.source "PushViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wapservice/push/PushViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wapservice/push/PushViewer;


# direct methods
.method constructor <init>(Lcom/lge/wapservice/push/PushViewer;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/wapservice/push/PushViewer$1;->this$0:Lcom/lge/wapservice/push/PushViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v2, p0, Lcom/lge/wapservice/push/PushViewer$1;->this$0:Lcom/lge/wapservice/push/PushViewer;

    # getter for: Lcom/lge/wapservice/push/PushViewer;->href:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wapservice/push/PushViewer;->access$000(Lcom/lge/wapservice/push/PushViewer;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 53
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 55
    iget-object v2, p0, Lcom/lge/wapservice/push/PushViewer$1;->this$0:Lcom/lge/wapservice/push/PushViewer;

    invoke-virtual {v2, v0}, Lcom/lge/wapservice/push/PushViewer;->startActivity(Landroid/content/Intent;)V

    .line 57
    iget-object v2, p0, Lcom/lge/wapservice/push/PushViewer$1;->this$0:Lcom/lge/wapservice/push/PushViewer;

    invoke-static {v2}, Lcom/lge/wapservice/push/PushViewer;->clearNotification(Landroid/content/Context;)V

    .line 58
    iget-object v2, p0, Lcom/lge/wapservice/push/PushViewer$1;->this$0:Lcom/lge/wapservice/push/PushViewer;

    invoke-virtual {v2}, Lcom/lge/wapservice/push/PushViewer;->finish()V

    .line 59
    return-void

    .line 52
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v2, p0, Lcom/lge/wapservice/push/PushViewer$1;->this$0:Lcom/lge/wapservice/push/PushViewer;

    # getter for: Lcom/lge/wapservice/push/PushViewer;->href:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wapservice/push/PushViewer;->access$000(Lcom/lge/wapservice/push/PushViewer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method
