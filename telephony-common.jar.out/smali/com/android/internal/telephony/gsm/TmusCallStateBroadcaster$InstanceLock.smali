.class Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;
.super Ljava/lang/Object;
.source "TmusCallStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceLock"
.end annotation


# static fields
.field private static sLockCount:I

.field private static sMutex:Ljava/lang/Object;


# instance fields
.field locked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;->sLockCount:I

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;->locked:Z

    .line 52
    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    sget v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$1;)V

    # setter for: Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->access$002(Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;)Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

    .line 56
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;->locked:Z

    .line 57
    sget v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;->sLockCount:I

    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;->unlock()V

    .line 79
    return-void
.end method

.method unlock()V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;->locked:Z

    if-eqz v0, :cond_1

    .line 64
    sget-object v1, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    sget v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    .line 67
    # getter for: Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;
    invoke-static {}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->access$000()Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->dispose()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->access$200(Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;)V

    .line 69
    const/4 v0, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->access$002(Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;)Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$InstanceLock;->locked:Z

    .line 72
    monitor-exit v1

    .line 74
    :cond_1
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
