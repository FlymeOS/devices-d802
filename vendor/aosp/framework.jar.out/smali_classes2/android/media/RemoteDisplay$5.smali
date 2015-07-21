.class Landroid/media/RemoteDisplay$5;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;->notifyLgPeerInfoAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplay;

.field final synthetic val$peer_info:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/RemoteDisplay;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Landroid/media/RemoteDisplay$5;->this$0:Landroid/media/RemoteDisplay;

    iput-object p2, p0, Landroid/media/RemoteDisplay$5;->val$peer_info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "RemoteDisplay"

    const-string v1, "notifyLgPeerInfoAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Landroid/media/RemoteDisplay$5;->this$0:Landroid/media/RemoteDisplay;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->access$000(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteDisplay$5;->val$peer_info:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/media/RemoteDisplay$Listener;->onLgPeerInfoAvailable(Ljava/lang/String;)V

    .line 204
    return-void
.end method
