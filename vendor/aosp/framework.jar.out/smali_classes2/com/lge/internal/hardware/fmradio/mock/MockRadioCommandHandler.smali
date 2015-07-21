.class public Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;
.super Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;
.source "MockRadioCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler$2;
    }
.end annotation


# static fields
.field private static final T:Ljava/lang/String; = "FMFRW_MockRadioCommandHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;)Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;
    .locals 1
    .param p0, "x0"    # Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    new-instance v0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;

    invoke-direct {v0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;-><init>()V

    .line 27
    .local v0, "mock":Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;
    iput-object p0, v0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    .line 28
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    :try_start_0
    const-string v2, "FMFRW_MockRadioCommandHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MockRadioCommandHandler received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->toStringFromMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->getFMRadioCommand(I)Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    move-result-object v0

    .line 43
    .local v0, "cmd":Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    sget-object v2, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler$2;->$SwitchMap$com$lge$internal$hardware$fmradio$FMRadioCommand:[I

    invoke-virtual {v0}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 118
    invoke-super {p0, p1}, Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;->handleMessage(Landroid/os/Message;)V

    .line 123
    .end local v0    # "cmd":Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    :cond_0
    :goto_0
    return-void

    .line 45
    .restart local v0    # "cmd":Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    :pswitch_0
    new-instance v2, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    goto :goto_0

    .line 120
    .end local v0    # "cmd":Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 49
    .restart local v0    # "cmd":Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    :pswitch_1
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : chipset terminate OK!"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : RADIO_ON"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 56
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->setMessenger(Landroid/os/Messenger;)V

    .line 57
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler$1;

    invoke-direct {v3, p0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler$1;-><init>(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 68
    :pswitch_3
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : RADIO_OFF"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 70
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->setMessenger(Landroid/os/Messenger;)V

    .line 71
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-virtual {v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->turnOff()Z

    goto :goto_0

    .line 75
    :pswitch_4
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : TUNE"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 77
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->setMessenger(Landroid/os/Messenger;)V

    .line 78
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->tuneFrequency(I)Z

    goto :goto_0

    .line 81
    :pswitch_5
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : SCAN"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 83
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->setMessenger(Landroid/os/Messenger;)V

    .line 84
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-virtual {v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->startAutoScan()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const/4 v2, 0x0

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v3}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 87
    .local v1, "reply":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 91
    .end local v1    # "reply":Landroid/os/Message;
    :pswitch_6
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : SCAN_STOP"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 93
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->setMessenger(Landroid/os/Messenger;)V

    .line 94
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-virtual {v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->interuptAutoScanThread()V

    .line 95
    const/4 v2, 0x0

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v3}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 97
    .restart local v1    # "reply":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 100
    .end local v1    # "reply":Landroid/os/Message;
    :pswitch_7
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : SEEK_BACKWARD"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 102
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->setMessenger(Landroid/os/Messenger;)V

    .line 103
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-virtual {v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->startBackwardScan()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    const/4 v2, 0x0

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v3}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 105
    .restart local v1    # "reply":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 109
    .end local v1    # "reply":Landroid/os/Message;
    :pswitch_8
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : SEEK_FORWARD"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 111
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->setMessenger(Landroid/os/Messenger;)V

    .line 112
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-virtual {v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->startForwardScan()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    const/4 v2, 0x0

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v3}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 114
    .restart local v1    # "reply":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public isMock()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public setMessenger(Landroid/os/Messenger;)V
    .locals 1
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-virtual {v0, p1}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->setMessenger(Landroid/os/Messenger;)V

    .line 35
    :cond_0
    return-void
.end method
