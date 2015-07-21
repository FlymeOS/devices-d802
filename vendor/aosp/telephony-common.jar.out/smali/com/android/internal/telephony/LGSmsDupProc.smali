.class public Lcom/android/internal/telephony/LGSmsDupProc;
.super Ljava/lang/Object;
.source "LGSmsDupProc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;
    }
.end annotation


# static fields
.field private static final COMPARE_LIST_NUM:I = 0x14

.field private static compareSmsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGSmsDupProc;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/internal/telephony/LGSmsDupProc;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method private manageCompareSmsList(Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;)V
    .locals 5
    .param p1, "mtSms"    # Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    .prologue
    const/4 v4, 0x0

    .line 95
    sget-object v0, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[sms.mt.dup] dequeue item. timestamp = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-wide v2, v0, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->timeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 97
    sget-object v0, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[sms.mt.dup] compareSmsList.size() = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 101
    return-void
.end method


# virtual methods
.method public checkNetworkDuplicate(JLjava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .param p1, "timeStamp"    # J
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "messageId"    # I
    .param p5, "body"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/android/internal/telephony/LGSmsDupProc;->mContext:Landroid/content/Context;

    const-string v2, "kddi_message_duplicate_check"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/internal/telephony/LGSmsDupProc;->checkNetworkDuplicate(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 56
    :goto_0
    return v1

    .line 38
    :cond_0
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_2

    .line 39
    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-wide v2, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->timeStamp:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-object v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->address:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->messageId:I

    if-ne v1, p4, :cond_1

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-object v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->body:Ljava/lang/String;

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    const-string v1, "[sms.mt.dup] Network Duplicated"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt.dup] timestamp = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-wide v4, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->timeStamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt.dup] address = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-object v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->address:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt.dup] messageId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->messageId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt.dup] body = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-object v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->body:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 50
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 38
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 54
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;-><init>(Lcom/android/internal/telephony/LGSmsDupProc;JLjava/lang/String;ILjava/lang/String;)V

    .line 55
    .local v0, "mtSms":Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGSmsDupProc;->manageCompareSmsList(Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;)V

    .line 56
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public checkNetworkDuplicate(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "timeStamp"    # J
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 67
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/android/internal/telephony/LGSmsDupProc;->mContext:Landroid/content/Context;

    const-string v3, "kddi_message_duplicate_check"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-wide v4, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->timeStamp:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-object v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->address:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string v1, "[sms.mt.dup] Network Duplicated"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.dup] timestamp = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-wide v4, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->timeStamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.dup] address = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-object v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->address:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move v1, v2

    .line 91
    :goto_1
    return v1

    .line 77
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-wide v4, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->timeStamp:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-object v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->address:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-object v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->body:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const-string v1, "[sms.mt.dup] Network Duplicated"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.dup] timestamp = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-wide v4, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->timeStamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.dup] body = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/android/internal/telephony/LGSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    iget-object v1, v1, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;->body:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move v1, v2

    .line 85
    goto :goto_1

    .line 67
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 89
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;-><init>(Lcom/android/internal/telephony/LGSmsDupProc;JLjava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v0, "mtSms":Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGSmsDupProc;->manageCompareSmsList(Lcom/android/internal/telephony/LGSmsDupProc$CompareMtSmsItem;)V

    .line 91
    const/4 v1, 0x0

    goto/16 :goto_1
.end method
