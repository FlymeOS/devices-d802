.class public Landroid/net/LgDhcpStateMachineHelper;
.super Ljava/lang/Object;
.source "LgDhcpStateMachineHelper.java"

# interfaces
.implements Landroid/net/ILgDhcpStateMachineHelper;


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_DHCP_BSSID:Ljava/lang/String; = "00:0a:eb"

.field private static final DEFAULT_DHCP_DNS1:Ljava/lang/String; = "8.8.8.8"

.field private static final DEFAULT_DHCP_DNS2:Ljava/lang/String; = "8.8.4.4"

.field private static final DEFAULT_DHCP_IPADDRESS:Ljava/lang/String; = "192.168.2."

.field private static final DEFAULT_DHCP_PREFIXLENGTH:I = 0x18

.field private static final DEFAULT_DHCP_SERVERADDRESS:Ljava/lang/String; = "192.168.2.1"

.field public static final DHCPINFO_CACHE_SIZE:I = 0x41

.field private static final TAG:Ljava/lang/String; = "LgDhcpStateMachineHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/util/StateMachine;

.field private mDhcpResultsCacheList:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/DhcpResults;",
            ">;"
        }
    .end annotation
.end field

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mIsNotUsedDhcpCacheFunction:Z

.field private mIsUpdatedDhcpCacheAddress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;Landroid/net/DhcpStateMachine;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p3, "intf"    # Ljava/lang/String;
    .param p4, "dhcpStateMachine"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/net/LgDhcpStateMachineHelper;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Landroid/net/LgDhcpStateMachineHelper;->mController:Lcom/android/internal/util/StateMachine;

    .line 82
    iput-object p3, p0, Landroid/net/LgDhcpStateMachineHelper;->mInterfaceName:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    .line 85
    invoke-direct {p0}, Landroid/net/LgDhcpStateMachineHelper;->isNotUsedDhcpCacheFunction()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/LgDhcpStateMachineHelper;->mIsNotUsedDhcpCacheFunction:Z

    .line 86
    return-void
.end method

.method private AddDhcpInfoCache(Ljava/lang/String;Landroid/net/DhcpResults;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "addDhcpResult"    # Landroid/net/DhcpResults;

    .prologue
    .line 344
    iget-object v2, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpResultsCacheList:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->size()I

    move-result v1

    .line 346
    .local v1, "nCacheSize":I
    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    .line 347
    const-string v2, "LgDhcpStateMachineHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDhcpResultsCacheList count is full - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpResultsCacheList:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->evictAll()V

    .line 349
    const/4 v1, 0x0

    .line 352
    :cond_0
    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0, p2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    .line 355
    .local v0, "RealAddDhcpResult":Landroid/net/DhcpResults;
    const-string v2, "LgDhcpStateMachineHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add DhcpResults: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v2, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpResultsCacheList:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    return-void
.end method

.method private CheckDhcpDirectory()Z
    .locals 8

    .prologue
    .line 141
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/misc/dhcp"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "dhcpDir":Ljava/io/File;
    const/4 v0, 0x1

    .line 144
    .local v0, "bRet":Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 146
    const-string v5, "LgDhcpStateMachineHelper"

    const-string v6, "CheckDhcpDirectory : /data/misc/dhcp is not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v5, 0x0

    .line 174
    :goto_0
    return v5

    .line 151
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 152
    .local v2, "files":[Ljava/io/File;
    const/4 v4, 0x0

    .line 153
    .local v4, "numFiles":I
    if-eqz v2, :cond_1

    .line 154
    array-length v4, v2

    .line 158
    :cond_1
    const-string v5, "LgDhcpStateMachineHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckDhcpDirectory [Lease File Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/16 v5, 0x46

    if-le v4, v5, :cond_4

    .line 162
    const/4 v0, 0x0

    .line 164
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 165
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".lease2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 166
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 164
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 171
    :cond_3
    const-string v5, "LgDhcpStateMachineHelper"

    const-string v6, "CheckDhcpDirectory : Deleted /data/misc/dhcp/dhcpcd-*.lease2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "i":I
    :cond_4
    move v5, v0

    .line 174
    goto :goto_0
.end method

.method private checkSustainWithDefaultDhcpInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p1, "strBssid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 465
    const/4 v5, 0x0

    .line 466
    .local v5, "result":Z
    const-string v8, "00:0a:eb"

    .line 467
    .local v8, "strDefaultDhcpBssid":Ljava/lang/String;
    const/4 v6, 0x0

    .line 468
    .local v6, "sbIpAddress":Ljava/lang/StringBuffer;
    const-string v7, "192.168.2.1"

    .line 469
    .local v7, "serverAddress":Ljava/lang/String;
    const/16 v4, 0x18

    .line 471
    .local v4, "prefixLength":I
    iget-boolean v10, p0, Landroid/net/LgDhcpStateMachineHelper;->mIsNotUsedDhcpCacheFunction:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 472
    const/4 v10, 0x0

    .line 532
    :goto_0
    return v10

    .line 477
    :cond_0
    const-string v10, "dhcp.failinfo.defaultdhcp"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 478
    .local v9, "strDefaultDhcpInfo":Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 480
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 481
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "data":[Ljava/lang/String;
    array-length v10, v2

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    .line 486
    const-string v10, "LgDhcpStateMachineHelper"

    const-string v11, "Set Default DhcpResult from properties"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 490
    new-instance v6, Ljava/lang/StringBuffer;

    .end local v6    # "sbIpAddress":Ljava/lang/StringBuffer;
    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 491
    .restart local v6    # "sbIpAddress":Ljava/lang/StringBuffer;
    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    const/16 v11, 0x4f

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x79

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 493
    const/4 v10, 0x2

    aget-object v7, v2, v10

    .line 495
    const/4 v10, 0x3

    :try_start_0
    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 501
    .end local v2    # "data":[Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 502
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 505
    :cond_3
    if-nez v6, :cond_4

    .line 506
    new-instance v6, Ljava/lang/StringBuffer;

    .end local v6    # "sbIpAddress":Ljava/lang/StringBuffer;
    const-string v10, "192.168.2."

    invoke-direct {v6, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 507
    .restart local v6    # "sbIpAddress":Ljava/lang/StringBuffer;
    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    const/16 v11, 0x4f

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x79

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 511
    :cond_4
    new-instance v1, Landroid/net/DhcpResults;

    invoke-direct {v1}, Landroid/net/DhcpResults;-><init>()V

    .line 512
    .local v1, "DefaultAddDhcpResult":Landroid/net/DhcpResults;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, v4}, Landroid/net/DhcpResults;->setIpAddress(Ljava/lang/String;I)Z

    .line 513
    const-string v10, "8.8.8.8"

    invoke-virtual {v1, v10}, Landroid/net/DhcpResults;->addDns(Ljava/lang/String;)Z

    .line 514
    const-string v10, "8.8.4.4"

    invoke-virtual {v1, v10}, Landroid/net/DhcpResults;->addDns(Ljava/lang/String;)Z

    .line 515
    invoke-virtual {v1, v7}, Landroid/net/DhcpResults;->setServerAddress(Ljava/lang/String;)Z

    .line 516
    const v10, 0x15180

    invoke-virtual {v1, v10}, Landroid/net/DhcpResults;->setLeaseDuration(I)V

    .line 517
    invoke-virtual {v1, v7}, Landroid/net/DhcpResults;->setGateway(Ljava/lang/String;)Z

    .line 518
    const/4 v10, 0x1

    invoke-direct {p0, v1, v10}, Landroid/net/LgDhcpStateMachineHelper;->setInterfaceUpWithDhcpInfo(Landroid/net/DhcpResults;Z)Z

    move-result v5

    .line 520
    const/4 v10, 0x1

    if-ne v5, v10, :cond_5

    .line 522
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Landroid/net/LgDhcpStateMachineHelper;->AddDhcpInfoCache(Ljava/lang/String;Landroid/net/DhcpResults;)V

    .line 524
    iget-object v10, p0, Landroid/net/LgDhcpStateMachineHelper;->mController:Lcom/android/internal/util/StateMachine;

    const v11, 0x30005

    const/4 v12, 0x1

    const/4 v13, 0x0

    new-instance v14, Landroid/net/DhcpResults;

    invoke-direct {v14, v1}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 525
    .local v3, "msg":Landroid/os/Message;
    if-eqz v3, :cond_5

    .line 526
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 530
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    const-string v10, "LgDhcpStateMachineHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkSustainWithDefaultDhcpInfo : setInterfaceUpWithDhcpInfo is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v5

    .line 532
    goto/16 :goto_0

    .line 496
    .end local v1    # "DefaultAddDhcpResult":Landroid/net/DhcpResults;
    .restart local v2    # "data":[Ljava/lang/String;
    :catch_0
    move-exception v10

    goto/16 :goto_1
.end method

.method private displayDhcpCacheList(Landroid/util/LruCache;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/DhcpResults;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 615
    .local p1, "dhcpResultsCacheList":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Landroid/net/DhcpResults;>;"
    const-string v2, "LgDhcpStateMachineHelper"

    const-string v3, "------------------------------------------------------------------------------------------------------------------------ "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {p1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 617
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/DhcpResults;>;"
    const-string v3, "LgDhcpStateMachineHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/DhcpResults;

    invoke-virtual {v2}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/DhcpResults;>;"
    :cond_0
    const-string v2, "LgDhcpStateMachineHelper"

    const-string v3, "------------------------------------------------------------------------------------------------------------------------ "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method private getIpAddressToInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "addrString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 133
    :cond_1
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 134
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/net/Inet6Address;

    if-nez v2, :cond_0

    .line 137
    check-cast v0, Ljava/net/Inet4Address;

    .end local v0    # "addr":Ljava/net/InetAddress;
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v1

    goto :goto_0
.end method

.method private getKeyforDhcp(I)Ljava/lang/String;
    .locals 8
    .param p1, "nType"    # I

    .prologue
    const/4 v1, 0x0

    .line 644
    iget-object v5, p0, Landroid/net/LgDhcpStateMachineHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 645
    .local v4, "wifiMngr":Landroid/net/wifi/WifiManager;
    if-nez v4, :cond_0

    .line 647
    const-string v5, "LgDhcpStateMachineHelper"

    const-string v6, "[getKeyforDhcp] WifiManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :goto_0
    return-object v1

    .line 652
    :cond_0
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 653
    .local v0, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_1

    .line 655
    const-string v5, "LgDhcpStateMachineHelper"

    const-string v6, "[getKeyforDhcp] getConnectionInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 660
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "strBssid":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, "strSsid":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 664
    :cond_2
    const-string v5, "LgDhcpStateMachineHelper"

    const-string v6, "[getKeyforDhcp] getBSSID, getSSID is null "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 669
    :cond_3
    const-string v5, "KR"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 670
    const-string v5, "\"KBS_FMC\""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 672
    const-string v5, "LgDhcpStateMachineHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[KBS_FMC]strBssid [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ] -> 99:99:99:99:99:99"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const-string v2, "99:99:99:99:99:99"

    .line 680
    :cond_4
    const/4 v5, 0x1

    if-ne p1, v5, :cond_5

    .line 681
    move-object v1, v2

    .line 683
    .local v1, "key":Ljava/lang/String;
    const-string v5, "LgDhcpStateMachineHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[bssid] hash key :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    .end local v1    # "key":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 688
    .restart local v1    # "key":Ljava/lang/String;
    const-string v5, "LgDhcpStateMachineHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[bssid + ssid] hash key :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getSustainFailedDhcpInfoCacheDisabled()Z
    .locals 3

    .prologue
    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "bRet":Z
    const-string v2, "dhcp.failinfo.notuse"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 446
    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 447
    const/4 v0, 0x1

    .line 451
    :cond_0
    return v0
.end method

.method private isCurrentAPWEPSecurity()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 379
    const-string/jumbo v1, "persist.sys.security"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    sget v2, Lcom/lge/wifi/config/LgeServiceExtConstant;->WEP_AP:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isL2Connected()Z
    .locals 6

    .prologue
    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, "bRet":Z
    iget-object v3, p0, Landroid/net/LgDhcpStateMachineHelper;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 627
    .local v1, "connMngr":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 628
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 629
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    .line 630
    const-string v3, "LgDhcpStateMachineHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isL2Connected] Currently WiFi is CONNECTED state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v0, 0x1

    .line 639
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v0

    .line 633
    .restart local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1
    if-eqz v2, :cond_0

    .line 634
    const-string v3, "LgDhcpStateMachineHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isL2Connected] Currently WiFi is not CONNECTED state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNotUsedDhcpCacheFunction()Z
    .locals 3

    .prologue
    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, "bRet":Z
    const-string v2, "dhcp.cachefunc.notuse"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 605
    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 606
    const/4 v0, 0x1

    .line 610
    :cond_0
    return v0
.end method

.method private setInterfaceDownUpWithDhcpInfo(Landroid/net/DhcpResults;Landroid/net/DhcpResults;)Z
    .locals 4
    .param p1, "DhcpResultOLD"    # Landroid/net/DhcpResults;
    .param p2, "DhcpResultNEW"    # Landroid/net/DhcpResults;

    .prologue
    const/4 v1, 0x0

    .line 538
    iget-object v2, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v2}, Landroid/net/DhcpStateMachine;->isWaitBeforeStartState()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v2}, Landroid/net/DhcpStateMachine;->isStoppedState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    const-string v2, "LgDhcpStateMachineHelper"

    const-string v3, "Don\'t need to do setInterfaceDownUpWithDhcpInfo, Current State is not mWaitBeforeStartState."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_0
    return v1

    .line 546
    :cond_0
    invoke-direct {p0, p2, v1}, Landroid/net/LgDhcpStateMachineHelper;->setInterfaceUpWithDhcpInfo(Landroid/net/DhcpResults;Z)Z

    move-result v0

    .line 547
    .local v0, "result":Z
    const-string v1, "LgDhcpStateMachineHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInterfaceDownUpWithDhcpInfo: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Current false result is OK."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setInterfaceUpWithDhcpInfo(Landroid/net/DhcpResults;Z)Z
    .locals 10
    .param p1, "dhcpResult"    # Landroid/net/DhcpResults;
    .param p2, "bShouldCallsetInterfaceUp"    # Z

    .prologue
    const/4 v7, 0x0

    .line 555
    const/4 v2, 0x0

    .line 557
    .local v2, "bRet":Z
    if-nez p1, :cond_0

    .line 558
    const-string v8, "LgDhcpStateMachineHelper"

    const-string/jumbo v9, "setInterfaceUpWithDhcpInfo : dhcpResult is null "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :goto_0
    return v7

    .line 562
    :cond_0
    new-instance v4, Landroid/net/InterfaceConfiguration;

    invoke-direct {v4}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 563
    .local v4, "ifcg":Landroid/net/InterfaceConfiguration;
    if-nez v4, :cond_1

    .line 564
    const-string v8, "LgDhcpStateMachineHelper"

    const-string/jumbo v9, "setInterfaceUpWithDhcpInfo : InterfaceConfiguration[ifcg] is null "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 568
    :cond_1
    iget-object v0, p1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    .line 569
    .local v0, "addrs":Landroid/net/LinkAddress;
    if-nez v0, :cond_2

    .line 570
    const-string v7, "LgDhcpStateMachineHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setInterfaceUpWithDhcpInfo: IP lacks address -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v7, v2

    .line 597
    goto :goto_0

    .line 572
    :cond_2
    const-string/jumbo v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 573
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 575
    .local v5, "nwService":Landroid/os/INetworkManagementService;
    if-nez v5, :cond_3

    .line 576
    const-string v8, "LgDhcpStateMachineHelper"

    const-string/jumbo v9, "setInterfaceUpWithDhcpInfo : nwService is null "

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :cond_3
    invoke-virtual {v4, v0}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 581
    const/4 v7, 0x1

    if-ne p2, v7, :cond_4

    .line 582
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 586
    :cond_4
    :try_start_0
    iget-object v7, p0, Landroid/net/LgDhcpStateMachineHelper;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v5, v7, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 587
    const-string v7, "LgDhcpStateMachineHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setInterfaceUpWithDhcpInfo: IP configuration succeeded: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 588
    const/4 v2, 0x1

    goto :goto_1

    .line 590
    :catch_0
    move-exception v6

    .line 591
    .local v6, "re":Landroid/os/RemoteException;
    const-string v7, "LgDhcpStateMachineHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setInterfaceUpWithDhcpInfo: IP configuration failed[1]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 592
    .end local v6    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 593
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string v7, "LgDhcpStateMachineHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setInterfaceUpWithDhcpInfo: IP configuration failed[2]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public AddDhcpInfoCache(Landroid/net/DhcpResults;)Z
    .locals 9
    .param p1, "addDhcpResult"    # Landroid/net/DhcpResults;

    .prologue
    const/4 v5, 0x1

    .line 263
    iget-object v6, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpResultsCacheList:Landroid/util/LruCache;

    if-nez v6, :cond_0

    move v2, v5

    .line 339
    :goto_0
    return v2

    .line 267
    :cond_0
    iget-boolean v6, p0, Landroid/net/LgDhcpStateMachineHelper;->mIsNotUsedDhcpCacheFunction:Z

    if-ne v6, v5, :cond_1

    move v2, v5

    .line 268
    goto :goto_0

    .line 271
    :cond_1
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Landroid/net/LgDhcpStateMachineHelper;->getKeyforDhcp(I)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_2

    move v2, v5

    .line 273
    goto :goto_0

    .line 276
    :cond_2
    const/4 v2, 0x0

    .line 277
    .local v2, "bShouldSendDhcpAction":Z
    const/4 v1, 0x0

    .line 279
    .local v1, "bAutoIPSetWhenDhcpRenew":Z
    iget-object v6, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpResultsCacheList:Landroid/util/LruCache;

    invoke-virtual {v6, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DhcpResults;

    .line 281
    .local v0, "DhcpResultsCache":Landroid/net/DhcpResults;
    invoke-virtual {p0, p1}, Landroid/net/LgDhcpStateMachineHelper;->checkAutoIpWithDhcpInfo(Landroid/net/DhcpResults;)I

    move-result v4

    .line 282
    .local v4, "nAutoIpAddr":I
    const/16 v6, 0x63

    if-ne v4, v6, :cond_3

    .line 283
    const-string v6, "LgDhcpStateMachineHelper"

    const-string v7, "AddDhcpInfoCache: IP lacks address"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 284
    goto :goto_0

    .line 287
    :cond_3
    if-eqz v0, :cond_b

    .line 288
    if-ne v4, v5, :cond_8

    .line 289
    invoke-virtual {p0}, Landroid/net/LgDhcpStateMachineHelper;->getDLNAEnabled()Z

    move-result v6

    if-eq v6, v5, :cond_4

    .line 290
    const/4 v1, 0x1

    .line 292
    :cond_4
    const-string v6, "LgDhcpStateMachineHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AUTOIP is not allowed for dhcp cache. bAutoIPSetWhenDhcpRenew == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_5
    :goto_1
    if-ne v2, v5, :cond_a

    .line 307
    const-string v5, "LgDhcpStateMachineHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated DhcpResult 1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v5, "LgDhcpStateMachineHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated DhcpResult 2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_2
    if-nez v1, :cond_6

    iget-object v5, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v5}, Landroid/net/DhcpStateMachine;->isWaitBeforeStartState()Z

    move-result v5

    if-nez v5, :cond_6

    .line 324
    const-string v5, "LgDhcpStateMachineHelper"

    const-string v6, "Current State is not mWaitBeforeStartState. So bShouldSendDhcpAction must be true"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v2, 0x1

    .line 328
    :cond_6
    if-nez v2, :cond_7

    iget-boolean v5, p0, Landroid/net/LgDhcpStateMachineHelper;->mIsUpdatedDhcpCacheAddress:Z

    if-nez v5, :cond_7

    .line 329
    const-string v5, "LgDhcpStateMachineHelper"

    const-string/jumbo v6, "send dhcp action becuase static ip updated is failed by unknown reason"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v2, 0x1

    .line 334
    :cond_7
    const-string v5, "LgDhcpStateMachineHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bShouldSendDhcpAction Result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    :cond_8
    invoke-virtual {v0, p1}, Landroid/net/DhcpResults;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 295
    iget-object v6, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpResultsCacheList:Landroid/util/LruCache;

    invoke-virtual {v6, v3}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 297
    const-string v6, "LgDhcpStateMachineHelper"

    const-string v7, "[bssid + ssid] hash key is removed."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0, v0, p1}, Landroid/net/LgDhcpStateMachineHelper;->setInterfaceDownUpWithDhcpInfo(Landroid/net/DhcpResults;Landroid/net/DhcpResults;)Z

    .line 300
    invoke-direct {p0, v3, p1}, Landroid/net/LgDhcpStateMachineHelper;->AddDhcpInfoCache(Ljava/lang/String;Landroid/net/DhcpResults;)V

    .line 302
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 310
    :cond_a
    const-string v5, "LgDhcpStateMachineHelper"

    const-string v6, "Don\'t need to update mDhcpResultsCacheList"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 314
    :cond_b
    if-ne v4, v5, :cond_c

    .line 315
    const-string v5, "LgDhcpStateMachineHelper"

    const-string v6, "AUTOIP is not allowed for dhcp cache. bShouldSendDhcpAction == TRUE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_3
    const/4 v2, 0x1

    goto :goto_2

    .line 317
    :cond_c
    invoke-direct {p0, v3, p1}, Landroid/net/LgDhcpStateMachineHelper;->AddDhcpInfoCache(Ljava/lang/String;Landroid/net/DhcpResults;)V

    goto :goto_3
.end method

.method public CheckDhcpInfoCacheList(Landroid/util/LruCache;)Z
    .locals 9
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

    .prologue
    .local p1, "dhcpResultsCacheList":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Landroid/net/DhcpResults;>;"
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 202
    const/4 v3, 0x0

    .line 203
    .local v3, "valid":Z
    const/4 v0, 0x0

    .line 205
    .local v0, "DhcpResultsCache":Landroid/net/DhcpResults;
    iget-boolean v5, p0, Landroid/net/LgDhcpStateMachineHelper;->mIsNotUsedDhcpCacheFunction:Z

    if-ne v5, v8, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v4

    .line 219
    :cond_1
    iput-boolean v4, p0, Landroid/net/LgDhcpStateMachineHelper;->mIsUpdatedDhcpCacheAddress:Z

    .line 220
    if-nez p1, :cond_2

    .line 221
    new-instance p1, Landroid/util/LruCache;

    .end local p1    # "dhcpResultsCacheList":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Landroid/net/DhcpResults;>;"
    const/16 v5, 0x41

    invoke-direct {p1, v5}, Landroid/util/LruCache;-><init>(I)V

    .line 223
    .restart local p1    # "dhcpResultsCacheList":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Landroid/net/DhcpResults;>;"
    const-string v5, "LgDhcpStateMachineHelper"

    const-string/jumbo v6, "setdhcpResultCacheList Error : dhcpResultCacheList is NULL "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_2
    iput-object p1, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpResultsCacheList:Landroid/util/LruCache;

    .line 228
    iget-object v5, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpResultsCacheList:Landroid/util/LruCache;

    if-nez v5, :cond_3

    .line 230
    const-string v5, "LgDhcpStateMachineHelper"

    const-string v6, "Fatal Error! mDhcpResultsCacheList is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_3
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Landroid/net/LgDhcpStateMachineHelper;->getKeyforDhcp(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 243
    iget-object v5, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpResultsCacheList:Landroid/util/LruCache;

    invoke-virtual {v5, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "DhcpResultsCache":Landroid/net/DhcpResults;
    check-cast v0, Landroid/net/DhcpResults;

    .line 245
    .restart local v0    # "DhcpResultsCache":Landroid/net/DhcpResults;
    if-eqz v0, :cond_5

    .line 246
    invoke-direct {p0, v0, v8}, Landroid/net/LgDhcpStateMachineHelper;->setInterfaceUpWithDhcpInfo(Landroid/net/DhcpResults;Z)Z

    move-result v3

    .line 247
    if-ne v3, v8, :cond_4

    .line 248
    iget-object v5, p0, Landroid/net/LgDhcpStateMachineHelper;->mController:Lcom/android/internal/util/StateMachine;

    const v6, 0x30005

    new-instance v7, Landroid/net/DhcpResults;

    invoke-direct {v7, v0}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    invoke-virtual {v5, v6, v8, v4, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 249
    .local v2, "msg":Landroid/os/Message;
    if-eqz v2, :cond_4

    .line 250
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 251
    iput-boolean v8, p0, Landroid/net/LgDhcpStateMachineHelper;->mIsUpdatedDhcpCacheAddress:Z

    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    :goto_1
    move v4, v3

    .line 259
    goto :goto_0

    .line 256
    :cond_5
    const-string v4, "LgDhcpStateMachineHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[bssid + ssid] hash key :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public CheckSustainCurrentDhcpInfoCache()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 384
    invoke-direct {p0}, Landroid/net/LgDhcpStateMachineHelper;->isCurrentAPWEPSecurity()Z

    move-result v5

    if-ne v5, v6, :cond_1

    .line 385
    const-string v5, "LgDhcpStateMachineHelper"

    const-string v6, "isCurrentAPWEPSecurity is true"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 438
    :cond_0
    :goto_0
    return v1

    .line 390
    :cond_1
    invoke-direct {p0}, Landroid/net/LgDhcpStateMachineHelper;->getSustainFailedDhcpInfoCacheDisabled()Z

    move-result v5

    if-ne v5, v6, :cond_2

    .line 392
    const-string v5, "LgDhcpStateMachineHelper"

    const-string v6, "getSustainFailedDhcpResultCacheDisabled == true"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 394
    goto :goto_0

    .line 397
    :cond_2
    iget-object v5, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpResultsCacheList:Landroid/util/LruCache;

    if-nez v5, :cond_3

    move v1, v4

    .line 398
    goto :goto_0

    .line 401
    :cond_3
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Landroid/net/LgDhcpStateMachineHelper;->getKeyforDhcp(I)Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "key":Ljava/lang/String;
    if-nez v2, :cond_4

    move v1, v4

    .line 403
    goto :goto_0

    .line 406
    :cond_4
    const/4 v1, 0x0

    .line 408
    .local v1, "bCheckSustainCurrentDhcpResultCache":Z
    iget-object v5, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpResultsCacheList:Landroid/util/LruCache;

    invoke-virtual {v5, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DhcpResults;

    .line 410
    .local v0, "DhcpResultCache":Landroid/net/DhcpResults;
    if-eqz v0, :cond_6

    .line 412
    invoke-direct {p0}, Landroid/net/LgDhcpStateMachineHelper;->isL2Connected()Z

    move-result v5

    if-nez v5, :cond_5

    move v1, v4

    .line 413
    goto :goto_0

    .line 417
    :cond_5
    const-string v4, "LgDhcpStateMachineHelper"

    const-string v5, "[CheckSustainCurrentDhcpResultCache] bCheckSustainCurrentDhcpResultCache set TRUE"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v1, 0x1

    .line 422
    const-string v4, "LgDhcpStateMachineHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[] DHCP failed on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/LgDhcpStateMachineHelper;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v4, p0, Landroid/net/LgDhcpStateMachineHelper;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    goto :goto_0

    .line 426
    :cond_6
    invoke-direct {p0, v6}, Landroid/net/LgDhcpStateMachineHelper;->getKeyforDhcp(I)Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "strBssid":Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Landroid/net/LgDhcpStateMachineHelper;->checkSustainWithDefaultDhcpInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 428
    const-string v4, "LgDhcpStateMachineHelper"

    const-string v5, "[checkSustainWithDefaultDhcpResult] bCheckSustainCurrentDhcpResultCache set TRUE"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v1, 0x1

    .line 432
    const-string v4, "LgDhcpStateMachineHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DEFAULT] DHCP failed on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/LgDhcpStateMachineHelper;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v4, p0, Landroid/net/LgDhcpStateMachineHelper;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public RemoveDhcpInfoCache()V
    .locals 3

    .prologue
    .line 361
    iget-object v1, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpResultsCacheList:Landroid/util/LruCache;

    if-nez v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/net/LgDhcpStateMachineHelper;->getKeyforDhcp(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 370
    iget-object v1, p0, Landroid/net/LgDhcpStateMachineHelper;->mDhcpResultsCacheList:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    const-string v1, "LgDhcpStateMachineHelper"

    const-string v2, "[bssid + ssid] hash key is removed."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public ReplaceDhcpLeaseFileWithBackupLeaseFile()V
    .locals 4

    .prologue
    .line 183
    const-string v1, "dhcp.ap.macaddress"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/net/LgDhcpStateMachineHelper;->getKeyforDhcp(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v1, "LgDhcpStateMachineHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dhcp.ap.macaddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v1, "dhcp.ap.macaddress"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public StoreDhcpBackupLeaseFileWithCurrentLeaseFile()V
    .locals 2

    .prologue
    .line 178
    const-string v0, "dhcp.ap.macaddress"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Landroid/net/LgDhcpStateMachineHelper;->CheckDhcpDirectory()Z

    .line 180
    return-void
.end method

.method public checkAutoIpWithDhcpInfo(Landroid/net/DhcpResults;)I
    .locals 6
    .param p1, "dhcpResult"    # Landroid/net/DhcpResults;

    .prologue
    const/16 v3, 0x63

    .line 105
    const/4 v2, 0x0

    .line 107
    .local v2, "nAutoIpAddr":I
    if-nez p1, :cond_0

    .line 108
    const-string v4, "LgDhcpStateMachineHelper"

    const-string v5, "checkAutoIpWithDhcpInfo: dhcpResult is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return v3

    .line 112
    :cond_0
    iget-object v1, p1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    .line 113
    .local v1, "addrs":Landroid/net/LinkAddress;
    if-nez v1, :cond_1

    .line 114
    const-string v4, "LgDhcpStateMachineHelper"

    const-string v5, "isAutoIp: IP lacks address"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 118
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/LgDhcpStateMachineHelper;->getIpAddressToInt(Ljava/lang/String;)I

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    const v4, 0xfea9

    if-ne v3, v4, :cond_2

    .line 119
    const/4 v2, 0x1

    .line 123
    :cond_2
    const-string v3, "LgDhcpStateMachineHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAutoIpWithDhcpInfo + ipaddr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 125
    goto :goto_0
.end method

.method public getDLNAEnabled()Z
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "bRet":Z
    const-string v2, "dhcp.dlna.using"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 94
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 99
    :cond_0
    return v0
.end method
