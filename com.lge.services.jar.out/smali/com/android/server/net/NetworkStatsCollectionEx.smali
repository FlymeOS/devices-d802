.class public Lcom/android/server/net/NetworkStatsCollectionEx;
.super Lcom/android/server/net/NetworkStatsCollection;
.source "NetworkStatsCollectionEx.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "bucketDuration"    # J

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 13
    return-void
.end method


# virtual methods
.method public clearUsageByTemplate(Landroid/net/NetworkTemplate;)Z
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v7, 0x1

    .line 33
    const/4 v6, 0x0

    new-array v5, v6, [Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 34
    .local v5, "removeKeys":[Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsCollectionEx;->mStats:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 35
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 36
    .local v3, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v6, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v6}, Lcom/android/server/net/NetworkStatsCollectionEx;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 37
    const-class v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-static {v6, v5, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "removeKeys":[Lcom/android/server/net/NetworkStatsCollection$Key;
    check-cast v5, [Lcom/android/server/net/NetworkStatsCollection$Key;

    .restart local v5    # "removeKeys":[Lcom/android/server/net/NetworkStatsCollection$Key;
    goto :goto_0

    .line 41
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    .end local v3    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_1
    move-object v0, v5

    .local v0, "arr$":[Lcom/android/server/net/NetworkStatsCollection$Key;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 42
    .restart local v3    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsCollectionEx;->mStats:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iput-boolean v7, p0, Lcom/android/server/net/NetworkStatsCollectionEx;->mDirty:Z

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    .end local v3    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_2
    return v7
.end method

.method public getUids(Landroid/net/NetworkTemplate;)[I
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 19
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 20
    .local v3, "uids":[I
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollectionEx;->mStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 22
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v4}, Lcom/android/server/net/NetworkStatsCollectionEx;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    goto :goto_0

    .line 26
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    .end local v2    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_1
    return-object v3
.end method
