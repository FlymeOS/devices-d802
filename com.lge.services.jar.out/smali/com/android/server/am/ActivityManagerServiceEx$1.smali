.class Lcom/android/server/am/ActivityManagerServiceEx$1;
.super Landroid/os/Handler;
.source "ActivityManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceEx;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerServiceEx;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceEx$1;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceEx$1;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    # invokes: Lcom/android/server/am/ActivityManagerServiceEx;->updateGuestModeList()V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceEx;->access$100(Lcom/android/server/am/ActivityManagerServiceEx;)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceEx$1;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    # invokes: Lcom/android/server/am/ActivityManagerServiceEx;->showAppBlockToast()V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceEx;->access$200(Lcom/android/server/am/ActivityManagerServiceEx;)V

    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceEx$1;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    # invokes: Lcom/android/server/am/ActivityManagerServiceEx;->showBenchmarkAppBlockToast()V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceEx;->access$300(Lcom/android/server/am/ActivityManagerServiceEx;)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x96
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
