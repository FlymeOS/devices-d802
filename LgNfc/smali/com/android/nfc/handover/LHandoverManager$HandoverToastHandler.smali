.class Lcom/android/nfc/handover/LHandoverManager$HandoverToastHandler;
.super Landroid/os/Handler;
.source "LHandoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/LHandoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandoverToastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/LHandoverManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/LHandoverManager;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/nfc/handover/LHandoverManager$HandoverToastHandler;->this$0:Lcom/android/nfc/handover/LHandoverManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 692
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 708
    :goto_0
    return-void

    .line 694
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverManager$HandoverToastHandler;->this$0:Lcom/android/nfc/handover/LHandoverManager;

    # getter for: Lcom/android/nfc/handover/LHandoverManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/nfc/handover/LHandoverManager;->access$000(Lcom/android/nfc/handover/LHandoverManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08004f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 697
    :pswitch_1
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverManager$HandoverToastHandler;->this$0:Lcom/android/nfc/handover/LHandoverManager;

    # getter for: Lcom/android/nfc/handover/LHandoverManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/nfc/handover/LHandoverManager;->access$000(Lcom/android/nfc/handover/LHandoverManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080053

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 700
    :pswitch_2
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverManager$HandoverToastHandler;->this$0:Lcom/android/nfc/handover/LHandoverManager;

    # getter for: Lcom/android/nfc/handover/LHandoverManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/nfc/handover/LHandoverManager;->access$000(Lcom/android/nfc/handover/LHandoverManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080054

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 703
    :pswitch_3
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverManager$HandoverToastHandler;->this$0:Lcom/android/nfc/handover/LHandoverManager;

    # getter for: Lcom/android/nfc/handover/LHandoverManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/nfc/handover/LHandoverManager;->access$000(Lcom/android/nfc/handover/LHandoverManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080055

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
