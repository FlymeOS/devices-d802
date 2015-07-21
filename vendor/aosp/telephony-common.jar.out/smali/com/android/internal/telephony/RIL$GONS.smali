.class Lcom/android/internal/telephony/RIL$GONS;
.super Ljava/lang/Object;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GONS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RIL$GONS$CountryCode;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GONS"


# instance fields
.field private codeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/RIL$GONS$CountryCode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 2

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$GONS;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$GONS;->codeList:Ljava/util/ArrayList;

    .line 497
    const-string v0, "GONS"

    const-string v1, "GONS constructor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RIL$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/RIL;
    .param p2, "x1"    # Lcom/android/internal/telephony/RIL$1;

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL$GONS;-><init>(Lcom/android/internal/telephony/RIL;)V

    return-void
.end method


# virtual methods
.method public addCountryCode(Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 501
    const-string v4, "GONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addCountryCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x0

    .line 504
    .local v0, "codeExist":Z
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$GONS;->codeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RIL$GONS$CountryCode;

    .line 505
    .local v2, "item":Lcom/android/internal/telephony/RIL$GONS$CountryCode;
    const-string v4, "GONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 509
    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->addCount()V

    .line 510
    const/4 v0, 0x1

    goto :goto_0

    .line 514
    .end local v2    # "item":Lcom/android/internal/telephony/RIL$GONS$CountryCode;
    :cond_1
    if-nez v0, :cond_2

    .line 515
    new-instance v3, Lcom/android/internal/telephony/RIL$GONS$CountryCode;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;-><init>(Lcom/android/internal/telephony/RIL$GONS;Ljava/lang/String;)V

    .line 516
    .local v3, "newCode":Lcom/android/internal/telephony/RIL$GONS$CountryCode;
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$GONS;->codeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    .end local v3    # "newCode":Lcom/android/internal/telephony/RIL$GONS$CountryCode;
    :cond_2
    return-void
.end method

.method public getBestCountryCode()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 521
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$GONS;->codeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 522
    const-string v4, "GONS"

    const-string v5, "getBestCountryCode : no country code exist"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_0
    return-object v3

    .line 526
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$GONS;->codeList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RIL$GONS$CountryCode;

    .line 527
    .local v0, "bestCode":Lcom/android/internal/telephony/RIL$GONS$CountryCode;
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$GONS;->codeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RIL$GONS$CountryCode;

    .line 528
    .local v2, "item":Lcom/android/internal/telephony/RIL$GONS$CountryCode;
    const-string v4, "GONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->getCount()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 532
    move-object v0, v2

    .line 533
    const-string v4, "GONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "best code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 537
    .end local v2    # "item":Lcom/android/internal/telephony/RIL$GONS$CountryCode;
    :cond_2
    const-string v4, "GONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBestCountryCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->getCount()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3

    .line 541
    const-string v4, "GONS"

    const-string v5, "getBestCountryCode : not enough count"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 544
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method
