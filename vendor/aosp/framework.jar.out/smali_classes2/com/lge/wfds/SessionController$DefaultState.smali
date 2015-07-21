.class Lcom/lge/wfds/SessionController$DefaultState;
.super Lcom/android/internal/util/State;
.source "SessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/SessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/SessionController;


# direct methods
.method constructor <init>(Lcom/lge/wfds/SessionController;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : DefaultState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v2, 0x90001f

    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 235
    const-string v0, "WfdsSession:Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultState - msg ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 205
    :sswitch_0
    const-string v0, "WfdsSession:Controller"

    const-string v1, "EVT_P2P_GROUP_INFO_AVLBL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    # setter for: Lcom/lge/wfds/SessionController;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1, v0}, Lcom/lge/wfds/SessionController;->access$002(Lcom/lge/wfds/SessionController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    goto :goto_0

    .line 209
    :sswitch_1
    const-string v0, "WfdsSession:Controller"

    const-string v1, "DefaultState - SESSION_READY is not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v2}, Lcom/lge/wfds/SessionController;->access$100(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto :goto_0

    .line 213
    :sswitch_2
    const-string v0, "WfdsSession:Controller"

    const-string v1, "DefaultState - CLOSE_SESSION is not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v2}, Lcom/lge/wfds/SessionController;->access$100(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto :goto_0

    .line 217
    :sswitch_3
    const-string v0, "WfdsSession:Controller"

    const-string v1, "DefaultState - BOUND_PORT is not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v2}, Lcom/lge/wfds/SessionController;->access$100(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto :goto_0

    .line 221
    :sswitch_4
    const-string v0, "WfdsSession:Controller"

    const-string v1, "DefaultState - RELEASE_PORT is not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v2}, Lcom/lge/wfds/SessionController;->access$100(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto :goto_0

    .line 225
    :sswitch_5
    const-string v0, "WfdsSession:Controller"

    const-string v1, "DefaultState - REJECT_SESSION is not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v2}, Lcom/lge/wfds/SessionController;->access$100(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V

    goto :goto_0

    .line 231
    :sswitch_6
    const-string v0, "WfdsSession:Controller"

    const-string v1, "ASP_ACK_RECEIVED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/lge/wfds/SessionController$DefaultState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopAspSessionRequest()V
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$200(Lcom/lge/wfds/SessionController;)V

    goto :goto_0

    .line 203
    nop

    :sswitch_data_0
    .sparse-switch
        0x900006 -> :sswitch_1
        0x900007 -> :sswitch_2
        0x900008 -> :sswitch_3
        0x900009 -> :sswitch_4
        0x90000b -> :sswitch_5
        0x90104a -> :sswitch_0
        0x901063 -> :sswitch_6
        0x901064 -> :sswitch_6
        0x901065 -> :sswitch_6
    .end sparse-switch
.end method
