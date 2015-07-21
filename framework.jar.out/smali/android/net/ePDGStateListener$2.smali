.class Landroid/net/ePDGStateListener$2;
.super Landroid/os/Handler;
.source "ePDGStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ePDGStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ePDGStateListener;


# direct methods
.method constructor <init>(Landroid/net/ePDGStateListener;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Landroid/net/ePDGStateListener$2;->this$0:Landroid/net/ePDGStateListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 118
    :sswitch_0
    iget-object v1, p0, Landroid/net/ePDGStateListener$2;->this$0:Landroid/net/ePDGStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-virtual {v1, v0}, Landroid/net/ePDGStateListener;->onPDPStateChanged([I)V

    goto :goto_0

    .line 121
    :sswitch_1
    iget-object v1, p0, Landroid/net/ePDGStateListener$2;->this$0:Landroid/net/ePDGStateListener;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/net/ePDGStateListener;->onWiFiStatusChanged(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 124
    :sswitch_2
    iget-object v0, p0, Landroid/net/ePDGStateListener$2;->this$0:Landroid/net/ePDGStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/ePDGStateListener;->onErrorStatusChanged(I)V

    goto :goto_0

    .line 128
    :sswitch_3
    iget-object v1, p0, Landroid/net/ePDGStateListener$2;->this$0:Landroid/net/ePDGStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/ePDGStateListener;->onConnectionParamStatus([Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :sswitch_4
    iget-object v0, p0, Landroid/net/ePDGStateListener$2;->this$0:Landroid/net/ePDGStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/net/ePDGStateListener;->onCBSErrorStatusChanged(I)V

    goto :goto_0

    .line 116
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method
