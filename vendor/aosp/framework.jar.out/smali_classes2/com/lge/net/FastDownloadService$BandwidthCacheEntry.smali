.class Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;
.super Ljava/lang/Object;
.source "FastDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/net/FastDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BandwidthCacheEntry"
.end annotation


# static fields
.field private static final TTL_NANOS:J = 0x8bb2c97000L


# instance fields
.field final expiryNanos:J

.field final mobileBandwidth:D

.field final synthetic this$0:Lcom/lge/net/FastDownloadService;

.field final wifiBandwidth:D


# direct methods
.method public constructor <init>(Lcom/lge/net/FastDownloadService;DD)V
    .locals 4
    .param p2, "wifiBandwidth"    # D
    .param p4, "mobileBandwidth"    # D

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1545
    iput-wide p2, p0, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;->wifiBandwidth:D

    .line 1546
    iput-wide p4, p0, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;->mobileBandwidth:D

    .line 1547
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide v2, 0x8bb2c97000L

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;->expiryNanos:J

    .line 1548
    return-void
.end method
