.class Lcom/android/server/am/VzwActivityMonitor$2;
.super Landroid/os/Handler;
.source "VzwActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/VzwActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VzwActivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/am/VzwActivityMonitor;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/server/am/VzwActivityMonitor$2;->this$0:Lcom/android/server/am/VzwActivityMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/VzwActivityMonitor$2;->this$0:Lcom/android/server/am/VzwActivityMonitor;

    # invokes: Lcom/android/server/am/VzwActivityMonitor;->ShowMessage()V
    invoke-static {v0}, Lcom/android/server/am/VzwActivityMonitor;->access$100(Lcom/android/server/am/VzwActivityMonitor;)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
