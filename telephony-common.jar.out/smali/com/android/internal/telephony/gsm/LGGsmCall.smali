.class public Lcom/android/internal/telephony/gsm/LGGsmCall;
.super Ljava/lang/Object;
.source "LGGsmCall.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LGGsmCall"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hangupAllCalls(Lcom/android/internal/telephony/Call;)V
    .locals 13
    .param p0, "call"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v7, 0x0

    .line 37
    .local v7, "hungUp":Z
    :try_start_0
    instance-of v10, p0, Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v10, :cond_4

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmCall;

    move-object v4, v0

    .line 39
    .local v4, "gsmcall":Lcom/android/internal/telephony/gsm/GsmCall;
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 40
    .local v6, "gsmphone":Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 42
    .local v5, "gsmcalltracker":Lcom/android/internal/telephony/gsm/GsmCallTracker;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/gsm/GsmCall;

    .line 43
    .local v9, "ringingCall":Lcom/android/internal/telephony/gsm/GsmCall;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    .line 44
    .local v3, "foregroundCall":Lcom/android/internal/telephony/gsm/GsmCall;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v1

    .line 45
    .local v1, "backgroundCall":Lcom/android/internal/telephony/gsm/GsmCall;
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v10

    if-nez v10, :cond_0

    .line 48
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_0

    .line 49
    const-string v10, "hangupAllCalls: hang up ringing call"

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/LGGsmCall;->log(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    .line 51
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 52
    const/4 v7, 0x1

    .line 55
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v10

    if-nez v10, :cond_1

    .line 56
    const-string v10, "hangupAllCalls: hang up active call"

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/LGGsmCall;->log(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    .line 58
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 59
    const/4 v7, 0x1

    .line 61
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v10

    if-nez v10, :cond_2

    .line 62
    const-string v10, "hangupAllCalls: hang up held call"

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/LGGsmCall;->log(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    .line 64
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 65
    const/4 v7, 0x1

    .line 67
    :cond_2
    if-eqz v7, :cond_3

    .line 68
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 86
    .end local v1    # "backgroundCall":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v3    # "foregroundCall":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v4    # "gsmcall":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v5    # "gsmcalltracker":Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .end local v6    # "gsmphone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v9    # "ringingCall":Lcom/android/internal/telephony/gsm/GsmCall;
    :goto_0
    return-void

    .line 70
    .restart local v1    # "backgroundCall":Lcom/android/internal/telephony/gsm/GsmCall;
    .restart local v3    # "foregroundCall":Lcom/android/internal/telephony/gsm/GsmCall;
    .restart local v4    # "gsmcall":Lcom/android/internal/telephony/gsm/GsmCall;
    .restart local v5    # "gsmcalltracker":Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .restart local v6    # "gsmphone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v9    # "ringingCall":Lcom/android/internal/telephony/gsm/GsmCall;
    :cond_3
    new-instance v10, Lcom/android/internal/telephony/CallStateException;

    const-string v11, "no active connections to hangup"

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .end local v1    # "backgroundCall":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v3    # "foregroundCall":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v4    # "gsmcall":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v5    # "gsmcalltracker":Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .end local v6    # "gsmphone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v9    # "ringingCall":Lcom/android/internal/telephony/gsm/GsmCall;
    :catch_0
    move-exception v8

    .line 82
    .local v8, "npe":Ljava/lang/NullPointerException;
    const-string v10, "LGGsmCall"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hangup all calls: caught "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    .end local v8    # "npe":Ljava/lang/NullPointerException;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 83
    :catch_1
    move-exception v2

    .line 84
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v10, "LGGsmCall"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hangup all calls: caught "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static hangupNotResume(Lcom/android/internal/telephony/Call;)V
    .locals 9
    .param p0, "call"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 102
    :try_start_0
    instance-of v6, p0, Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v6, :cond_3

    .line 103
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmCall;

    move-object v3, v0

    .line 104
    .local v3, "gsmcall":Lcom/android/internal/telephony/gsm/GsmCall;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 105
    .local v5, "gsmphone":Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 106
    .local v4, "gsmcalltracker":Lcom/android/internal/telephony/gsm/GsmCallTracker;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    .line 108
    .local v2, "foregroundCall":Lcom/android/internal/telephony/gsm/GsmCall;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 109
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    const-string v7, "no connections in call"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2    # "foregroundCall":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v3    # "gsmcall":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v4    # "gsmcalltracker":Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .end local v5    # "gsmphone":Lcom/android/internal/telephony/gsm/GSMPhone;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v6, "LGGsmCall"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hangupNotResume: caught "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :goto_0
    return-void

    .line 112
    .end local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    .restart local v2    # "foregroundCall":Lcom/android/internal/telephony/gsm/GsmCall;
    .restart local v3    # "gsmcall":Lcom/android/internal/telephony/gsm/GsmCall;
    .restart local v4    # "gsmcalltracker":Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .restart local v5    # "gsmphone":Lcom/android/internal/telephony/gsm/GSMPhone;
    :cond_0
    if-ne v3, v2, :cond_2

    .line 113
    :try_start_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isDialingOrAlerting()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    const-string v6, "(foregnd) hangupNotResume dialing or alerting..."

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LGGsmCall;->log(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GsmConnection;

    check-cast v6, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 125
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 126
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_1

    .line 122
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GsmCall "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "does not belong to GsmCallTracker "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 128
    .end local v2    # "foregroundCall":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v3    # "gsmcall":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v4    # "gsmcalltracker":Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .end local v5    # "gsmphone":Lcom/android/internal/telephony/gsm/GSMPhone;
    :cond_3
    instance-of v6, p0, Lcom/android/internal/telephony/ILGImsPhoneCall;

    if-eqz v6, :cond_4

    .line 129
    check-cast p0, Lcom/android/internal/telephony/ILGImsPhoneCall;

    .end local p0    # "call":Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/ILGImsPhoneCall;->hangupNotResume()V

    goto :goto_0

    .line 132
    .restart local p0    # "call":Lcom/android/internal/telephony/Call;
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    const-string v7, "hangupNotResume: Unsupported Action"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method protected static isSrvccConnection(Lcom/android/internal/telephony/Connection;)Z
    .locals 6
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v5, 0x0

    .line 146
    if-nez p0, :cond_0

    move v4, v5

    .line 160
    :goto_0
    return v4

    .line 147
    :cond_0
    instance-of v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move-object v4, p0

    .line 148
    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget v4, v4, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move-object v4, p0

    .line 150
    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    .line 151
    .local v3, "parent":Lcom/android/internal/telephony/gsm/GsmCall;
    if-nez v3, :cond_3

    move v4, v5

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 154
    .local v1, "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-nez v1, :cond_4

    move v4, v5

    goto :goto_0

    .line 156
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 157
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-eq v0, p0, :cond_5

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    iget v4, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    move v4, v5

    .line 160
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v0, "LGGsmCall"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method
