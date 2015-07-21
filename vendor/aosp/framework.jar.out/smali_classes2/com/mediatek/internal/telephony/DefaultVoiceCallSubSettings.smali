.class public Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;
.super Ljava/lang/Object;
.source "DefaultVoiceCallSubSettings.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DefaultVoiceCallSubSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMTKBspSupported()Z
    .locals 3

    .prologue
    .line 53
    const-string v1, "1"

    const-string v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 54
    .local v0, "isSupport":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMTKBspSupported(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 55
    return v0
.end method

.method private static isoldDefaultVoiceSubIdActive(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    .line 60
    .local v2, "oldDefaultVoiceSubId":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubInfoRecord;

    .line 61
    .local v1, "subInfo":Landroid/telephony/SubInfoRecord;
    iget-wide v4, v1, Landroid/telephony/SubInfoRecord;->subId:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    .line 62
    const/4 v4, 0x1

    .line 65
    .end local v1    # "subInfo":Landroid/telephony/SubInfoRecord;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "DefaultVoiceCallSubSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public static setVoiceCallDefaultSub(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    const-wide/16 v8, -0x3e8

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 24
    invoke-static {}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->isMTKBspSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v0

    .line 26
    .local v0, "oldDefaultVoiceSubId":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldDefaultVoiceSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 28
    if-nez p0, :cond_1

    .line 29
    const-string/jumbo v2, "subInfos == null, set to : INVALID_SUB_ID"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 30
    invoke-static {v8, v9}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(J)V

    .line 50
    .end local v0    # "oldDefaultVoiceSubId":J
    :cond_0
    :goto_0
    return-void

    .line 32
    .restart local v0    # "oldDefaultVoiceSubId":J
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subInfos size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 33
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 34
    invoke-static {p0}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->isoldDefaultVoiceSubIdActive(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subInfos size > 1 & old available, set to :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 36
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(J)V

    goto :goto_0

    .line 38
    :cond_2
    const-string/jumbo v2, "subInfos size > 1, set to : ASK_USER"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 39
    const-wide/16 v2, -0x3e9

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(J)V

    goto :goto_0

    .line 41
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subInfos size == 1, set to :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    iget-wide v4, v2, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 43
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    iget-wide v2, v2, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(J)V

    goto :goto_0

    .line 45
    :cond_4
    const-string/jumbo v2, "subInfos size = 0 set of : INVALID_SUB_ID"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->logi(Ljava/lang/String;)V

    .line 46
    invoke-static {v8, v9}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(J)V

    goto/16 :goto_0
.end method
