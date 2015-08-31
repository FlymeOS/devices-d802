.class Lcom/lge/wapservice/push/PushViewer$2;
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
    .line 61
    iput-object p1, p0, Lcom/lge/wapservice/push/PushViewer$2;->this$0:Lcom/lge/wapservice/push/PushViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/wapservice/push/PushViewer$2;->this$0:Lcom/lge/wapservice/push/PushViewer;

    invoke-static {v0}, Lcom/lge/wapservice/push/PushViewer;->clearNotification(Landroid/content/Context;)V

    .line 66
    iget-object v0, p0, Lcom/lge/wapservice/push/PushViewer$2;->this$0:Lcom/lge/wapservice/push/PushViewer;

    invoke-virtual {v0}, Lcom/lge/wapservice/push/PushViewer;->finish()V

    .line 67
    return-void
.end method
