.class public interface abstract Landroid/net/ILgDhcpStateMachineHelper;
.super Ljava/lang/Object;
.source "ILgDhcpStateMachineHelper.java"


# virtual methods
.method public abstract AddDhcpInfoCache(Landroid/net/DhcpResults;)Z
.end method

.method public abstract CheckDhcpInfoCacheList(Landroid/util/LruCache;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/DhcpResults;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract CheckSustainCurrentDhcpInfoCache()Z
.end method

.method public abstract RemoveDhcpInfoCache()V
.end method

.method public abstract ReplaceDhcpLeaseFileWithBackupLeaseFile()V
.end method

.method public abstract StoreDhcpBackupLeaseFileWithCurrentLeaseFile()V
.end method

.method public abstract checkAutoIpWithDhcpInfo(Landroid/net/DhcpResults;)I
.end method

.method public abstract getDLNAEnabled()Z
.end method
