.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mNewServers:[Ljava/lang/String;

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 57
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mNewServers:[Ljava/lang/String;

    .line 61
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .param p4, "newServers"    # [Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 67
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 68
    iput-object p4, p0, Landroid/util/NtpTrustedTime;->mNewServers:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-class v11, Landroid/util/NtpTrustedTime;

    monitor-enter v11

    :try_start_0
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v10, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 75
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 77
    .local v5, "resolver":Landroid/content/ContentResolver;
    const v10, 0x1040055

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "defaultServer":Ljava/lang/String;
    const v10, 0x10e0066

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v2, v10

    .line 82
    .local v2, "defaultTimeout":J
    const-string/jumbo v10, "ntp_server"

    invoke-static {v5, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "secureServer":Ljava/lang/String;
    const-string/jumbo v10, "ntp_timeout"

    invoke-static {v5, v10, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 87
    .local v8, "timeout":J
    if-eqz v6, :cond_1

    move-object v7, v6

    .line 90
    .local v7, "server":Ljava/lang/String;
    :goto_0
    sget-object v10, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_SUPPORT_MULTIPLE_NTP_SERVER:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v10}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 91
    const v10, 0x1070046

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "newServers":[Ljava/lang/String;
    new-instance v10, Landroid/util/NtpTrustedTime;

    invoke-direct {v10, v7, v8, v9, v1}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    sput-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 102
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "newServers":[Ljava/lang/String;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "secureServer":Ljava/lang/String;
    .end local v7    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :cond_0
    :goto_1
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    return-object v10

    .restart local v0    # "defaultServer":Ljava/lang/String;
    .restart local v2    # "defaultTimeout":J
    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v5    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "secureServer":Ljava/lang/String;
    .restart local v8    # "timeout":J
    :cond_1
    move-object v7, v0

    .line 87
    goto :goto_0

    .line 96
    .restart local v7    # "server":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v10, Landroid/util/NtpTrustedTime;

    invoke-direct {v10, v7, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 73
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "secureServer":Ljava/lang/String;
    .end local v7    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 169
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 108
    iget-object v7, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TOOL_BLOCK_NTP_SERVER:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v5, v6

    .line 140
    :goto_0
    return v5

    .line 117
    :cond_1
    new-instance v1, Landroid/net/SntpClient;

    invoke-direct {v1}, Landroid/net/SntpClient;-><init>()V

    .line 118
    .local v1, "client":Landroid/net/SntpClient;
    iget-object v7, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v8, v8

    invoke-virtual {v1, v7, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    iput-boolean v5, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 120
    invoke-virtual {v1}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 121
    invoke-virtual {v1}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 122
    invoke-virtual {v1}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v10

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    goto :goto_0

    .line 125
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_SUPPORT_MULTIPLE_NTP_SERVER:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/util/NtpTrustedTime;->mNewServers:[Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 126
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mNewServers:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 127
    .local v4, "mNewServer":Ljava/lang/String;
    const-string v7, "NtpTrustedTime"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[MultiNTP] Server : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v7, v8

    invoke-virtual {v1, v4, v7}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 129
    iput-boolean v5, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 130
    invoke-virtual {v1}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 131
    invoke-virtual {v1}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 132
    invoke-virtual {v1}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v10

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 133
    const-string v6, "NtpTrustedTime"

    const-string v7, "[MultiNTP] return true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "mNewServer":Ljava/lang/String;
    :cond_4
    move v5, v6

    .line 137
    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_5
    move v5, v6

    .line 140
    goto :goto_0
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 154
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 161
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 163
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method
