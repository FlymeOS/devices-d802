.class Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;
.super Ljava/lang/Object;
.source "TmusCallStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$3;,
        Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;
    }
.end annotation


# static fields
.field private static final ACTION_DETAILED_CALL_STATE:Ljava/lang/String; = "diagandroid.phone.detailedCallState"

.field private static final ACTION_TMUS_CFW_INFO:Ljava/lang/String; = "com.lge.phone.action.TMUS_CIQ_INFO"

.field private static final CALL_STATE_ENDED:Ljava/lang/String; = "ENDED"

.field static final DEBUG:Z

.field static final ENABLED:Z

.field private static final EXTRA_CALL_CODE:Ljava/lang/String; = "CallCode"

.field private static final EXTRA_CALL_NUMBER:Ljava/lang/String; = "CallNumber"

.field private static final EXTRA_CALL_STATE:Ljava/lang/String; = "CallState"

.field private static final PERMISSION_RECEIVE_DETAILED_CALL_STATE:Ljava/lang/String; = "diagandroid.phone.receiveDetailedCallState"

.field static final TAG:Ljava/lang/String; = "GsmCallState"

.field private static sConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmConnection;",
            "Lcom/android/internal/telephony/gsm/LgeConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

.field private static sInstanceLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmCallTracker;",
            "Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;",
            ">;"
        }
    .end annotation
.end field

.field private static sNextConId:I

.field private static sStatusCodePerCall:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStatusCodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSyncConn:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    const-string v0, "ro.debuggable"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sStatusCodePerCall:Ljava/util/HashMap;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sStatusCodes:Ljava/util/HashMap;

    .line 203
    const-string v0, "persist.lgiqc.ext"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->ENABLED:Z

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    .line 210
    sput v2, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sNextConId:I

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstanceLocks:Ljava/util/HashMap;

    return-void

    :cond_0
    move v0, v2

    .line 25
    goto :goto_0

    :cond_1
    move v1, v2

    .line 203
    goto :goto_1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$2;-><init>(Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sStatusCodePerCall:Ljava/util/HashMap;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.lge.phone.action.TMUS_CIQ_INFO"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private Broadcast(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private static CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "callState"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "diagandroid.phone.detailedCallState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CallState"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "CallNumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    return-object v0
.end method

.method private static GetStatus(I)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 183
    sget-boolean v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GsmCallState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetStatus - id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sStatusCodePerCall:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 186
    sget-object v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sStatusCodePerCall:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static SendCallDisconnected(ILjava/lang/String;I)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "cause"    # I

    .prologue
    .line 41
    sget-object v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->SendCallDisconnected(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method private SendCallDisconnected(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/String;

    .prologue
    .line 152
    if-eqz p3, :cond_3

    .line 153
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->GetStatus(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "preStatus":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 155
    sget-boolean v2, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GsmCallState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preStatus is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    const-string v2, "ATTEMPTING"

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    const-string v2, "ENDED"

    invoke-static {v2, p2}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "CallCode"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->Broadcast(Landroid/content/Intent;)V

    .line 163
    sget-boolean v2, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 164
    const-string v2, "GsmCallState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCallDisconnected : status = CALL_STATE_ENDED  cause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sStatusCodePerCall:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "preStatus":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method static SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 29
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 30
    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCallStatus : sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 35
    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sStatusCodes:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    .local v0, "statusCode":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    .end local v0    # "statusCode":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private SendCallStatus(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "statusString"    # Ljava/lang/String;

    .prologue
    .line 139
    if-eqz p3, :cond_1

    .line 140
    invoke-static {p3, p2}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->Broadcast(Landroid/content/Intent;)V

    .line 143
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCallStatus :  id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-static {p1, p3}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->SetStatus(ILjava/lang/String;)V

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private static SetStatus(ILjava/lang/String;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 172
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetStatus - id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sStatusCodePerCall:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 175
    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sStatusCodePerCall:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v1, "ATTEMPTING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    const-string v1, "GsmCallState"

    const-string v2, "state is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic access$000()Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;)Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

    .prologue
    .line 22
    sput-object p0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->dispose()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sNextConId:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 22
    sput p0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sNextConId:I

    return p0
.end method

.method static synthetic access$408()I
    .locals 2

    .prologue
    .line 22
    sget v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sNextConId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sNextConId:I

    return v0
.end method

.method static addConnection(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;
    .locals 4
    .param p0, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    .line 241
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->ENABLED:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    .line 243
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/LgeConnectionState;-><init>()V

    .line 244
    .local v0, "connState":Lcom/android/internal/telephony/gsm/LgeConnectionState;
    sget-object v2, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    monitor-enter v2

    .line 245
    :try_start_0
    sget v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sNextConId:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sNextConId:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    .line 246
    sget v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sNextConId:I

    const/16 v3, 0x3e8

    if-le v1, v3, :cond_2

    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sNextConId:I

    .line 248
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispose()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    return-void
.end method

.method private static getLgeConnectionState(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;
    .locals 5
    .param p0, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    .line 213
    sget-object v2, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 225
    :goto_0
    return-object v1

    .line 215
    :cond_1
    const/4 v1, 0x0

    .line 217
    .local v1, "connState":Lcom/android/internal/telephony/gsm/LgeConnectionState;
    sget-object v3, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    monitor-enter v3

    .line 218
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-object v1, v0

    .line 220
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 221
    const/4 v1, 0x0

    .line 223
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static prepare(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callTracker"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .prologue
    .line 385
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->ENABLED:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "GsmCallState"

    const-string v2, "prepare"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;-><init>(Landroid/content/Context;)V

    .line 390
    .local v0, "instanceLock":Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;
    if-eqz v0, :cond_3

    .line 391
    sget-object v2, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    monitor-enter v2

    .line 392
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstanceLocks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :cond_3
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare sInstanceLocks.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstanceLocks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static release(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 3
    .param p0, "callTracker"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .prologue
    .line 399
    sget-boolean v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->ENABLED:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GsmCallState"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstanceLocks:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    sget-boolean v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GsmCallState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release sInstanceLocks.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstanceLocks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static removeConnection(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/gsm/LgeConnectionState;)V
    .locals 3
    .param p0, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .param p1, "connState"    # Lcom/android/internal/telephony/gsm/LgeConnectionState;

    .prologue
    .line 229
    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sSyncConn:Ljava/lang/Object;

    monitor-enter v2

    .line 232
    if-nez p1, :cond_2

    .line 233
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-object p1, v0

    .line 235
    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, -0x1

    iput v1, p1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    .line 236
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static sendCallDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;ILjava/lang/String;I)V
    .locals 5
    .param p0, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .param p1, "gsmIndex"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "discCause"    # I

    .prologue
    .line 358
    sget-boolean v2, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->ENABLED:Z

    if-nez v2, :cond_0

    .line 378
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->getLgeConnectionState(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-result-object v1

    .line 361
    .local v1, "connState":Lcom/android/internal/telephony/gsm/LgeConnectionState;
    if-eqz v1, :cond_5

    .line 362
    const/16 v0, 0x10

    .line 364
    .local v0, "cause":I
    const/4 v2, 0x7

    if-ne p3, v2, :cond_4

    .line 365
    const/16 v0, 0x1c

    .line 370
    :cond_1
    :goto_1
    sget-boolean v2, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "GsmCallState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sCallDisconnected : normal cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_2
    iget v2, v1, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    invoke-static {v2, p2, v0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->SendCallDisconnected(ILjava/lang/String;I)V

    .line 377
    .end local v0    # "cause":I
    :cond_3
    :goto_2
    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->removeConnection(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/gsm/LgeConnectionState;)V

    goto :goto_0

    .line 366
    .restart local v0    # "cause":I
    :cond_4
    const/16 v2, 0xd

    if-ne p3, v2, :cond_1

    .line 367
    const/16 v0, 0x66

    goto :goto_1

    .line 374
    .end local v0    # "cause":I
    :cond_5
    sget-boolean v2, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "GsmCallState"

    const-string v3, "sCallDisconnected : not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static sendCallStatus(Lcom/android/internal/telephony/gsm/GsmConnection;ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .param p0, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .param p1, "gsmIndex"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 256
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->ENABLED:Z

    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->getLgeConnectionState(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-result-object v0

    .line 259
    .local v0, "connState":Lcom/android/internal/telephony/gsm/LgeConnectionState;
    if-eqz v0, :cond_0

    .line 261
    iput-object p3, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    .line 263
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sCallStatus : id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_2
    iget v1, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    invoke-static {v1, p2, v2}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_0
.end method

.method static sendFakeCallStatus(Lcom/android/internal/telephony/gsm/GsmConnection;ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .param p0, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .param p1, "gsmIndex"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 328
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->ENABLED:Z

    if-nez v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->getLgeConnectionState(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-result-object v0

    .line 331
    .local v0, "connState":Lcom/android/internal/telephony/gsm/LgeConnectionState;
    if-eqz v0, :cond_0

    .line 333
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sFakeCallStatus : state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_2
    iget v1, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    invoke-static {v1, p2, p3}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_0
.end method

.method static sendRemoteCallDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;ILjava/lang/String;I)V
    .locals 4
    .param p0, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .param p1, "gsmIndex"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "cause"    # I

    .prologue
    .line 339
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->ENABLED:Z

    if-nez v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->getLgeConnectionState(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-result-object v0

    .line 342
    .local v0, "connState":Lcom/android/internal/telephony/gsm/LgeConnectionState;
    if-eqz v0, :cond_3

    .line 343
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 344
    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sRemoteCallDisconnected : fail cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_1
    iget v1, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    invoke-static {v1, p2, p3}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->SendCallDisconnected(ILjava/lang/String;I)V

    .line 353
    :cond_2
    :goto_1
    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->removeConnection(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/gsm/LgeConnectionState;)V

    goto :goto_0

    .line 348
    :cond_3
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 349
    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sRemoteCallDisconnected : not found, cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static updateCallStatus(Lcom/android/internal/telephony/gsm/GsmConnection;ILjava/lang/String;Lcom/android/internal/telephony/DriverCall$State;Z)V
    .locals 4
    .param p0, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .param p1, "gsmIndex"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "dcState"    # Lcom/android/internal/telephony/DriverCall$State;
    .param p4, "changed"    # Z

    .prologue
    .line 270
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->ENABLED:Z

    if-nez v1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->getLgeConnectionState(Lcom/android/internal/telephony/gsm/GsmConnection;)Lcom/android/internal/telephony/gsm/LgeConnectionState;

    move-result-object v0

    .line 273
    .local v0, "connState":Lcom/android/internal/telephony/gsm/LgeConnectionState;
    if-eqz v0, :cond_0

    .line 275
    invoke-static {v0, p2, p3, p4}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->updateCallStatusInternal(Lcom/android/internal/telephony/gsm/LgeConnectionState;Ljava/lang/String;Lcom/android/internal/telephony/DriverCall$State;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    sget-boolean v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 280
    const-string v1, "GsmCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uCallStatus : dcState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_2
    iget v1, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    invoke-static {v1, p2, v2}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_0
.end method

.method private static updateCallStatusInternal(Lcom/android/internal/telephony/gsm/LgeConnectionState;Ljava/lang/String;Lcom/android/internal/telephony/DriverCall$State;Z)Z
    .locals 3
    .param p0, "connState"    # Lcom/android/internal/telephony/gsm/LgeConnectionState;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "dcState"    # Lcom/android/internal/telephony/DriverCall$State;
    .param p3, "changed"    # Z

    .prologue
    const/4 v0, 0x0

    .line 290
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1

    .line 292
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    .line 323
    :goto_0
    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    .line 293
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2

    .line 295
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 296
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_3

    .line 298
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 299
    :cond_3
    if-eqz p3, :cond_0

    .line 300
    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$3;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 302
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 305
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_4

    .line 309
    iget v0, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->conId:I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    .line 311
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 314
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeConnectionState;->state:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
