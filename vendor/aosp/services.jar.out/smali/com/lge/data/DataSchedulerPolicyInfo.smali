.class public Lcom/lge/data/DataSchedulerPolicyInfo;
.super Ljava/lang/Object;
.source "DataSchedulerPolicyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/data/DataSchedulerPolicyInfo$State;
    }
.end annotation


# static fields
.field private static final ALARM_POLICY_DELAY:I = 0x2

.field private static final ALARM_POLICY_HEURISTIC:I = 0x1

.field private static final ALARM_POLICY_NONE:I = 0x0

.field private static final DEFAULT_GATE_EXTENSION_IN_SECOND:I

.field private static final DEFAULT_GATE_PERIOD_IN_SECOND:I

.field private static final EXACT_FORCED_ALARMS:Ljava/lang/String; = "com.facebook.push.mqtt.keepalive.KeepaliveManager.ACTION_INEXACT_ALARM.com.facebook.katana;on_poll_alarm_ev;com.nhn.nni.intent.REGISTER;com.google.android.intent.action.MCS_HEARTBEAT;com.yahoo.snp.android.snp.alarmyahoo_snp_android_keep_alive;com.yahoo.snp.android.CHECK_ALIVE;"

.field private static final WHITE_LIST_PACKAGES:Ljava/lang/String; = "com.beney.test;"


# instance fields
.field public adaptive_preiod:J

.field public alarm:Ljava/lang/String;

.field public alarm_policy:I

.field public entry:Landroid/net/NetworkStats$Entry;

.field public gate_open_time:I

.field public gate_period:I

.field public last_expired:J

.field public pid:I

.field public repeat:J

.field public state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

.field public timeout:J

.field public uid:I

.field public window:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "persist.lg.dsgs.def_gate"

    const/16 v1, 0x384

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lge/data/DataSchedulerPolicyInfo;->DEFAULT_GATE_PERIOD_IN_SECOND:I

    .line 91
    const-string v0, "persist.lg.dsgs.def_gate_ext"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lge/data/DataSchedulerPolicyInfo;->DEFAULT_GATE_EXTENSION_IN_SECOND:I

    return-void
.end method

.method public constructor <init>(Landroid/net/DataSchedulerAppInfo;)V
    .locals 5
    .param p1, "appInfo"    # Landroid/net/DataSchedulerAppInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v3, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    .line 36
    iput v3, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->pid:I

    .line 43
    iput-object v4, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->alarm:Ljava/lang/String;

    .line 50
    iput-wide v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->timeout:J

    .line 57
    iput-wide v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->repeat:J

    .line 64
    iput-wide v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->window:J

    .line 71
    iput-wide v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->last_expired:J

    .line 78
    iput-wide v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->adaptive_preiod:J

    .line 145
    iget v0, p1, Landroid/net/DataSchedulerAppInfo;->uid:I

    iput v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    .line 146
    iget v0, p1, Landroid/net/DataSchedulerAppInfo;->pid:I

    iput v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->pid:I

    .line 147
    iget-object v0, p1, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->alarm:Ljava/lang/String;

    .line 148
    iget-wide v0, p1, Landroid/net/DataSchedulerAppInfo;->timeout:J

    iput-wide v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->timeout:J

    .line 149
    iget-wide v0, p1, Landroid/net/DataSchedulerAppInfo;->repeat:J

    iput-wide v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->repeat:J

    .line 150
    iget-wide v0, p1, Landroid/net/DataSchedulerAppInfo;->window:J

    iput-wide v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->window:J

    .line 151
    sget v0, Lcom/lge/data/DataSchedulerPolicyInfo;->DEFAULT_GATE_PERIOD_IN_SECOND:I

    iput v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->gate_period:I

    .line 152
    sget v0, Lcom/lge/data/DataSchedulerPolicyInfo;->DEFAULT_GATE_EXTENSION_IN_SECOND:I

    iput v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->gate_open_time:I

    .line 153
    sget-object v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;->UNKNOWN:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    iput-object v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    .line 154
    const-string v0, "com.facebook.push.mqtt.keepalive.KeepaliveManager.ACTION_INEXACT_ALARM.com.facebook.katana;on_poll_alarm_ev;com.nhn.nni.intent.REGISTER;com.google.android.intent.action.MCS_HEARTBEAT;com.yahoo.snp.android.snp.alarmyahoo_snp_android_keep_alive;com.yahoo.snp.android.CHECK_ALIVE;"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->alarm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 155
    sget-object v0, Lcom/lge/data/DataSchedulerPolicyInfo$State;->CANDIDATE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    invoke-virtual {p0, v0}, Lcom/lge/data/DataSchedulerPolicyInfo;->setState(Lcom/lge/data/DataSchedulerPolicyInfo$State;)Z

    .line 157
    :cond_0
    iput v3, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->alarm_policy:I

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->last_expired:J

    .line 159
    iput-object v4, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->entry:Landroid/net/NetworkStats$Entry;

    .line 160
    return-void
.end method

.method public static isWhiteListPackage(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packetName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 187
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    const-string v1, "com.beney.test;"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public setState(Lcom/lge/data/DataSchedulerPolicyInfo$State;)Z
    .locals 2
    .param p1, "state"    # Lcom/lge/data/DataSchedulerPolicyInfo$State;

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    if-ne v1, p1, :cond_0

    .line 182
    :goto_0
    return v0

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    .line 169
    sget-object v1, Lcom/lge/data/DataSchedulerPolicyInfo$State;->NOMINEE:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/lge/data/DataSchedulerPolicyInfo$State;->TARGET:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    if-ne p1, v1, :cond_2

    .line 170
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->alarm_policy:I

    .line 182
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    :cond_2
    iput v0, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->alarm_policy:I

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSchedulerPolicyInfo{ uid ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alarm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->alarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->timeout:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " repeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->repeat:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " window="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->window:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gate_period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->gate_period:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gate_open_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->gate_open_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->state:Lcom/lge/data/DataSchedulerPolicyInfo$State;

    invoke-virtual {v1}, Lcom/lge/data/DataSchedulerPolicyInfo$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alarm policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->alarm_policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " last expired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->last_expired:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->entry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adaptive_preiod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/data/DataSchedulerPolicyInfo;->adaptive_preiod:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
