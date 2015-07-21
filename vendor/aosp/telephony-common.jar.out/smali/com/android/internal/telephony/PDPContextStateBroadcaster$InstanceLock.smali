.class public Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;
.super Ljava/lang/Object;
.source "PDPContextStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PDPContextStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
    .line 101
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sLockCount:I

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->locked:Z

    .line 71
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    sget v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PDPContextStateBroadcaster$1;)V

    # setter for: Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;
    invoke-static {v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->access$002(Lcom/android/internal/telephony/PDPContextStateBroadcaster;)Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    .line 75
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->locked:Z

    .line 76
    sget v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sLockCount:I

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->locked:Z

    if-eqz v0, :cond_1

    .line 83
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    sget v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    # setter for: Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;
    invoke-static {v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->access$002(Lcom/android/internal/telephony/PDPContextStateBroadcaster;)Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->locked:Z

    .line 88
    monitor-exit v1

    .line 90
    :cond_1
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
