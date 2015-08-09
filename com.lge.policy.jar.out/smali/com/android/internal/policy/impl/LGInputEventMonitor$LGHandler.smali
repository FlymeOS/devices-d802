.class Lcom/android/internal/policy/impl/LGInputEventMonitor$LGHandler;
.super Landroid/os/Handler;
.source "LGInputEventMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGInputEventMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGInputEventMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGInputEventMonitor;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor$LGHandler;->this$0:Lcom/android/internal/policy/impl/LGInputEventMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 43
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor$LGHandler;->this$0:Lcom/android/internal/policy/impl/LGInputEventMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGInputEventMonitor;->enableLgeInputEventMonitor()V

    goto :goto_0

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor$LGHandler;->this$0:Lcom/android/internal/policy/impl/LGInputEventMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGInputEventMonitor;->disableLgeInputEventMonitor()V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
