.class Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;
.super Ljava/lang/Thread;
.source "VZWAggregation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/aggregation/VZWAggregation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AggregationMainThread"
.end annotation


# instance fields
.field SUB_TIMEOUT_COUNT:J

.field SUB_TIMEOUT_UNIT:J

.field subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

.field final synthetic this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)V
    .locals 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 91
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->SUB_TIMEOUT_COUNT:J

    .line 92
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->SUB_TIMEOUT_UNIT:J

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 104
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 106
    # setter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->retryCnt:I
    invoke-static {v1}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$002(I)I

    .line 107
    new-instance v2, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    iget-object v3, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    invoke-direct {v2, v3}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;-><init>(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)V

    iput-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    .line 108
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->start()V

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    int-to-long v2, v0

    :try_start_0
    iget-wide v4, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->SUB_TIMEOUT_COUNT:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    iget-wide v4, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->SUB_TIMEOUT_UNIT:J

    invoke-virtual {v2, v4, v5}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->join(J)V

    .line 115
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    iget-boolean v2, v2, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->isComplete:Z

    if-ne v2, v6, :cond_2

    .line 117
    const-string v2, "WiFiAggregation"

    const-string v3, "[Main Thread]Aggregation SubThread work complete."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    iget-boolean v2, v2, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->isComplete:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v6, :cond_3

    .line 145
    .end local v0    # "i":I
    :cond_1
    const-string v2, "WiFiAggregation"

    const-string v3, "[Main Thread]Now exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->this$0:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    const/4 v3, 0x0

    # setter for: Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I
    invoke-static {v2, v3}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->access$102(Lcom/lge/wifi/impl/aggregation/VZWAggregation;I)I

    .line 149
    return-void

    .line 112
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_3
    :try_start_1
    const-string v2, "WiFiAggregation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Main Thread]Aggregation SubThread work incomplete. Retry Cnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v2, "WiFiAggregation"

    const-string v3, "[Main Thread]subThread.interrupt()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->interrupt()V

    .line 131
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    goto :goto_2
.end method
