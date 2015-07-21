.class public Lcom/android/internal/telephony/soi/Spec;
.super Ljava/lang/Object;
.source "Spec.java"


# static fields
.field private static final MAX_MO_RETRY_COUNT:I = 0x1

.field private static final MAX_WAIT_FOR_MT_ACK_COUNT:I = 0xa

.field private static final MO_RETRY_INTERVAL_TIME:I = 0x4e20

.field private static final MO_RETRY_TIME:I = 0xea60

.field private static final SUPPORT_MO_RETRY:Z = true

.field private static final WAIT_FOR_ACK_TIME:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getMaxRetryCount()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public getMaxWaitForMtAckCount()I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0xa

    return v0
.end method

.method public getRetryIntervalTime()I
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x4e20

    return v0
.end method

.method public getRetryTime()I
    .locals 1

    .prologue
    .line 27
    const v0, 0xea60

    return v0
.end method

.method public getWaitForAckTime()I
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x1f4

    return v0
.end method

.method public isSupportedRetry()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
