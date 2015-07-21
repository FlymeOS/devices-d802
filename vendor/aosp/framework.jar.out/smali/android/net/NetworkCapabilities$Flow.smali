.class public Landroid/net/NetworkCapabilities$Flow;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Flow"
.end annotation


# static fields
.field public static final FLOW_DIRECTION_RX:Ljava/lang/String; = "rx"

.field public static final FLOW_DIRECTION_TX:Ljava/lang/String; = "tx"

.field public static final FLOW_EVENT_STATUS_ACTIVATED:I = 0x1

.field public static final FLOW_EVENT_STATUS_DELETED:I = 0x3

.field public static final FLOW_EVENT_STATUS_DISABLED:I = 0x6

.field public static final FLOW_EVENT_STATUS_ENABLED:I = 0x5

.field public static final FLOW_EVENT_STATUS_MODIFIED:I = 0x2

.field public static final FLOW_EVENT_STATUS_SUSPENDED:I = 0x4


# instance fields
.field private mFlowID:I

.field private mFlowStatus:Landroid/net/NetworkCapabilities$FlowState;

.field private mRxFlowDescriton:Ljava/util/HashMap;
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

.field private mTxFlowDescriton:Ljava/util/HashMap;
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

.field private mvecRxFlowFilters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mvecTxFlowFilters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/net/NetworkCapabilities;


# direct methods
.method public constructor <init>(Landroid/net/NetworkCapabilities;I)V
    .locals 1
    .param p2, "flowID"    # I

    .prologue
    const/4 v0, 0x0

    .line 396
    iput-object p1, p0, Landroid/net/NetworkCapabilities$Flow;->this$0:Landroid/net/NetworkCapabilities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mTxFlowDescriton:Ljava/util/HashMap;

    .line 390
    iput-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mvecTxFlowFilters:Ljava/util/Vector;

    .line 392
    iput-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mRxFlowDescriton:Ljava/util/HashMap;

    .line 393
    iput-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mvecRxFlowFilters:Ljava/util/Vector;

    .line 397
    iput p2, p0, Landroid/net/NetworkCapabilities$Flow;->mFlowID:I

    .line 398
    sget-object v0, Landroid/net/NetworkCapabilities$FlowState;->INACTIVE:Landroid/net/NetworkCapabilities$FlowState;

    iput-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mFlowStatus:Landroid/net/NetworkCapabilities$FlowState;

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mTxFlowDescriton:Ljava/util/HashMap;

    .line 401
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mvecTxFlowFilters:Ljava/util/Vector;

    .line 403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mRxFlowDescriton:Ljava/util/HashMap;

    .line 404
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mvecRxFlowFilters:Ljava/util/Vector;

    .line 405
    return-void
.end method

.method private putFlowFilter(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "flowDir"    # Ljava/lang/String;
    .param p3, "flowFilter"    # Ljava/lang/String;

    .prologue
    .line 541
    const-string/jumbo v0, "putFlowFilter(): Not Supported because not used."

    invoke-static {v0}, Landroid/net/NetworkCapabilities;->log(Ljava/lang/String;)V

    .line 542
    return-void
.end method


# virtual methods
.method public clearFlow()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mTxFlowDescriton:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 422
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mRxFlowDescriton:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 423
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mvecTxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 424
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mvecRxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 425
    return-void
.end method

.method public getFlowDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "flowDir"    # Ljava/lang/String;
    .param p2, "flowDesc"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 489
    if-nez p1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-object v0

    .line 491
    :cond_1
    const-string/jumbo v1, "tx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mTxFlowDescriton:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 492
    :cond_2
    const-string/jumbo v1, "rx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mRxFlowDescriton:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFlowDescriptions(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "flowDir"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 499
    if-nez p1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-object v5

    .line 501
    :cond_1
    const/4 v3, 0x0

    .line 502
    .local v3, "rets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "tx"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v3, p0, Landroid/net/NetworkCapabilities$Flow;->mTxFlowDescriton:Ljava/util/HashMap;

    .line 506
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 508
    .local v1, "firstTime":Z
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 509
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 510
    const/4 v1, 0x0

    .line 514
    :goto_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 503
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "firstTime":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const-string/jumbo v6, "rx"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v3, p0, Landroid/net/NetworkCapabilities$Flow;->mRxFlowDescriton:Ljava/util/HashMap;

    goto :goto_1

    .line 512
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "firstTime":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 518
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getFlowFilter(ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "idx"    # I
    .param p2, "flowDir"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 588
    if-nez p2, :cond_0

    .line 590
    const-string v7, "getFlowFilter(): flowDir is null."

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->log(Ljava/lang/String;)V

    .line 634
    :goto_0
    return-object v6

    .line 593
    :cond_0
    const-string/jumbo v7, "tx"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "rx"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 595
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFlowFilter(): flowDir is abnormal value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_1
    const/4 v3, 0x0

    .line 603
    .local v3, "flowFilter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v7, "tx"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 604
    iget-object v7, p0, Landroid/net/NetworkCapabilities$Flow;->mvecTxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v7, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "flowFilter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v3, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .restart local v3    # "flowFilter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_1
    if-nez v3, :cond_4

    .line 618
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFlowFilter(): TFT Vector ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is null."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_3
    :try_start_1
    const-string/jumbo v7, "rx"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 607
    iget-object v7, p0, Landroid/net/NetworkCapabilities$Flow;->mvecRxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v7, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "flowFilter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v3, Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "flowFilter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 610
    .end local v3    # "flowFilter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "getFlowFilter(): Set flowFilter to null due to Exception"

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->log(Ljava/lang/String;)V

    .line 613
    const/4 v3, 0x0

    .restart local v3    # "flowFilter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 622
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 624
    .local v2, "firstTime":Z
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 625
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_5

    .line 626
    const/4 v2, 0x0

    .line 630
    :goto_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 628
    :cond_5
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 634
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public getFlowFilterCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "flowDir"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 523
    if-nez p1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v0

    .line 525
    :cond_1
    const-string/jumbo v1, "tx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 526
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mvecTxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 528
    :cond_2
    const-string/jumbo v1, "rx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mvecRxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFlowFilters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "flowDir"    # Ljava/lang/String;

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$Flow;->getFlowFilterCount(Ljava/lang/String;)I

    move-result v0

    .line 640
    .local v0, "cnt":I
    const-string v2, ""

    .line 641
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1, p1}, Landroid/net/NetworkCapabilities$Flow;->getFlowFilter(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    :cond_0
    return-object v2
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Landroid/net/NetworkCapabilities$Flow;->mFlowID:I

    return v0
.end method

.method public getState()Landroid/net/NetworkCapabilities$FlowState;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mFlowStatus:Landroid/net/NetworkCapabilities$FlowState;

    return-object v0
.end method

.method public isFlowEnabled()Z
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mFlowStatus:Landroid/net/NetworkCapabilities$FlowState;

    sget-object v1, Landroid/net/NetworkCapabilities$FlowState;->ENABLED:Landroid/net/NetworkCapabilities$FlowState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putFlowDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "flowDir"    # Ljava/lang/String;
    .param p2, "flowDesc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 451
    if-nez p1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const-string/jumbo v0, "tx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mTxFlowDescriton:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 456
    :cond_2
    const-string/jumbo v0, "rx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mRxFlowDescriton:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putFlowDescriptions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "flowDir"    # Ljava/lang/String;
    .param p2, "flowDescs"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 463
    if-nez p1, :cond_1

    .line 485
    :cond_0
    return-void

    .line 465
    :cond_1
    const/4 v3, 0x0

    .line 467
    .local v3, "hmFlowDesc":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "tx"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 468
    iget-object v3, p0, Landroid/net/NetworkCapabilities$Flow;->mTxFlowDescriton:Ljava/util/HashMap;

    .line 477
    :goto_0
    if-eqz v3, :cond_0

    .line 479
    const-string v6, ","

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 481
    .local v1, "flowDesc":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "flow_desc":[Ljava/lang/String;
    array-length v6, v2

    if-le v6, v8, :cond_2

    .line 483
    const/4 v6, 0x0

    aget-object v6, v2, v6

    aget-object v7, v2, v8

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 470
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "flowDesc":Ljava/lang/String;
    .end local v2    # "flow_desc":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    const-string/jumbo v6, "rx"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 471
    iget-object v3, p0, Landroid/net/NetworkCapabilities$Flow;->mRxFlowDescriton:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public putFlowFilters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "flowDir"    # Ljava/lang/String;
    .param p2, "flowFilters"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 546
    if-nez p1, :cond_1

    .line 548
    const-string/jumbo v10, "putFlowFilters(): flowDir is null."

    invoke-static {v10}, Landroid/net/NetworkCapabilities;->log(Ljava/lang/String;)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    const-string/jumbo v10, "tx"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "rx"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 553
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "putFlowFilters(): flowDir is abnormal value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkCapabilities;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 559
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "putFlowFilters(): flowFilters is null or empty string = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkCapabilities;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_4
    const-string v10, "/"

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v2, v0, v6

    .line 565
    .local v2, "flowFilter":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 567
    .local v4, "hmFlowFilter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v8, :cond_6

    aget-object v9, v1, v5

    .line 569
    .local v9, "tft":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, "flow_filter":[Ljava/lang/String;
    array-length v10, v3

    if-le v10, v12, :cond_5

    .line 571
    const/4 v10, 0x0

    aget-object v10, v3, v10

    aget-object v11, v3, v12

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 574
    .end local v3    # "flow_filter":[Ljava/lang/String;
    .end local v9    # "tft":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v10

    if-nez v10, :cond_8

    .line 576
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "putFlowFilters(): hmFlowFilter size is zero for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkCapabilities;->log(Ljava/lang/String;)V

    .line 563
    :cond_7
    :goto_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_1

    .line 580
    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :cond_8
    const-string/jumbo v10, "tx"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Landroid/net/NetworkCapabilities$Flow;->mvecTxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v10, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 581
    :cond_9
    const-string/jumbo v10, "rx"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroid/net/NetworkCapabilities$Flow;->mvecRxFlowFilters:Ljava/util/Vector;

    invoke-virtual {v10, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public setState(Landroid/net/NetworkCapabilities$FlowState;)V
    .locals 2
    .param p1, "state"    # Landroid/net/NetworkCapabilities$FlowState;

    .prologue
    .line 435
    iput-object p1, p0, Landroid/net/NetworkCapabilities$Flow;->mFlowStatus:Landroid/net/NetworkCapabilities$FlowState;

    .line 436
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Flow;->mFlowStatus:Landroid/net/NetworkCapabilities$FlowState;

    sget-object v1, Landroid/net/NetworkCapabilities$FlowState;->INACTIVE:Landroid/net/NetworkCapabilities$FlowState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities$Flow;->clearFlow()V

    .line 437
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 651
    const/4 v0, 0x1

    .line 652
    .local v0, "firstTime":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/NetworkCapabilities$Flow;->mFlowID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/NetworkCapabilities$Flow;->mFlowStatus:Landroid/net/NetworkCapabilities$FlowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const-string v2, "TxFlowDescriton:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const-string/jumbo v2, "tx"

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities$Flow;->getFlowDescriptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string v2, "RxFlowDescriton:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string/jumbo v2, "rx"

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities$Flow;->getFlowDescriptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    const-string v2, "TxFlowFilter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const-string/jumbo v2, "tx"

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities$Flow;->getFlowFilters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string v2, "RxFlowFilter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    const-string/jumbo v2, "rx"

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities$Flow;->getFlowFilters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
