.class public abstract Lcom/android/internal/telephony/soi/Relay;
.super Landroid/os/Handler;
.source "Relay.java"

# interfaces
.implements Lcom/android/internal/telephony/soi/IRelay;
.implements Lcom/android/internal/telephony/soi/ServicePrimitives;


# instance fields
.field protected relayEventlistener:Lcom/android/internal/telephony/soi/IRelayEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/soi/IRelayEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/telephony/soi/IRelayEventListener;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/telephony/soi/Relay;->relayEventlistener:Lcom/android/internal/telephony/soi/IRelayEventListener;

    .line 29
    return-void
.end method


# virtual methods
.method public getReportStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "reportStatus":I
    sparse-switch p1, :sswitch_data_0

    .line 98
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    .line 59
    :sswitch_0
    const/4 v0, 0x0

    .line 60
    goto :goto_0

    .line 62
    :sswitch_1
    const/16 v0, 0x64

    .line 63
    goto :goto_0

    .line 65
    :sswitch_2
    const/16 v0, 0x65

    .line 66
    goto :goto_0

    .line 68
    :sswitch_3
    const/4 v0, 0x1

    .line 69
    goto :goto_0

    .line 71
    :sswitch_4
    const/16 v0, 0x68

    .line 72
    goto :goto_0

    .line 74
    :sswitch_5
    const/16 v0, 0x66

    .line 75
    goto :goto_0

    .line 77
    :sswitch_6
    const/16 v0, 0x67

    .line 78
    goto :goto_0

    .line 80
    :sswitch_7
    const/4 v0, 0x1

    .line 81
    goto :goto_0

    .line 83
    :sswitch_8
    const/16 v0, 0x6d

    .line 84
    goto :goto_0

    .line 86
    :sswitch_9
    const/16 v0, 0x6e

    .line 87
    goto :goto_0

    .line 89
    :sswitch_a
    const/16 v0, 0x12d

    .line 90
    goto :goto_0

    .line 92
    :sswitch_b
    const/16 v0, 0xc8

    .line 93
    goto :goto_0

    .line 95
    :sswitch_c
    const/16 v0, 0xc9

    .line 96
    goto :goto_0

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_7
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0xa -> :sswitch_0
        0xb -> :sswitch_a
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xc8 -> :sswitch_b
        0xc9 -> :sswitch_c
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 33
    return-void
.end method

.method public notifyRelayEvent(I)V
    .locals 2
    .param p1, "err"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/soi/Relay;->relayEventlistener:Lcom/android/internal/telephony/soi/IRelayEventListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/soi/Relay;->relayEventlistener:Lcom/android/internal/telephony/soi/IRelayEventListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/soi/IRelayEventListener;->onNotify(ILjava/lang/Object;)V

    .line 52
    :cond_0
    return-void
.end method

.method public notifyRelayEvent(ILjava/lang/Object;)V
    .locals 1
    .param p1, "err"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/soi/Relay;->relayEventlistener:Lcom/android/internal/telephony/soi/IRelayEventListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/soi/Relay;->relayEventlistener:Lcom/android/internal/telephony/soi/IRelayEventListener;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/soi/IRelayEventListener;->onNotify(ILjava/lang/Object;)V

    .line 45
    :cond_0
    return-void
.end method

.method public registerRelayEventListener(Lcom/android/internal/telephony/soi/IRelayEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/telephony/soi/IRelayEventListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/soi/Relay;->relayEventlistener:Lcom/android/internal/telephony/soi/IRelayEventListener;

    .line 38
    return-void
.end method

.method protected setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "timerType"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "isSMMA"    # Z

    .prologue
    .line 104
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/soi/SoiTimer;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 105
    return-void
.end method

.method protected stopAlarmTimer(Landroid/os/Handler;ZIZ)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "stopRequired"    # Z
    .param p3, "timerType"    # I
    .param p4, "isSMMA"    # Z

    .prologue
    .line 107
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/soi/SoiTimer;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 108
    return-void
.end method
