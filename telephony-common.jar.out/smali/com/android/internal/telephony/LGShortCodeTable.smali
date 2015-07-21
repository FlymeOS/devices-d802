.class public final Lcom/android/internal/telephony/LGShortCodeTable;
.super Ljava/lang/Object;
.source "LGShortCodeTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SmsUsageMonitor"

.field private static final sInstance:Lcom/android/internal/telephony/LGShortCodeTable;

.field static sList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 27
    new-instance v0, Lcom/android/internal/telephony/LGShortCodeTable;

    invoke-direct {v0}, Lcom/android/internal/telephony/LGShortCodeTable;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGShortCodeTable;->sInstance:Lcom/android/internal/telephony/LGShortCodeTable;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGShortCodeTable;->sList:Ljava/util/ArrayList;

    .line 90
    sget-object v0, Lcom/android/internal/telephony/LGShortCodeTable;->sList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;

    const-string v2, "de"

    const-string v3, "3011, 9526, 73240"

    const-string v4, "01"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/android/internal/telephony/LGShortCodeTable;->sList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;

    const-string v2, "nl"

    const-string v3, "9434, 9526, 1000"

    const-string v4, "16, 20"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v0, "tmus_no_premium_sms_vvm"

    invoke-static {v7, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_0

    .line 94
    sget-object v0, Lcom/android/internal/telephony/LGShortCodeTable;->sList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;

    const-string v2, "us"

    const-string v3, "122"

    const-string v4, "ALL"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/internal/telephony/LGShortCodeTable;->sList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;

    const-string v2, "kr"

    const-string v3, "122"

    const-string v4, "ALL"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    const-string v0, "trf_no_premium_sms"

    invoke-static {v7, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_1

    .line 99
    sget-object v0, Lcom/android/internal/telephony/LGShortCodeTable;->sList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;

    const-string v2, "us"

    const-string v3, "50228"

    const-string v4, "ALL"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_1
    const-string v0, "confirmRead"

    invoke-static {v7, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isReleaseOperator()Z

    move-result v0

    if-ne v0, v5, :cond_2

    .line 104
    sget-object v0, Lcom/android/internal/telephony/LGShortCodeTable;->sList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;

    const-string v2, "kr"

    const-string v3, "#431"

    const-string v4, "ALL"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_2
    const-string v0, "google_authentication_sms"

    invoke-static {v7, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    sget-object v0, Lcom/android/internal/telephony/LGShortCodeTable;->sList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;

    const-string v2, "kr"

    const-string v3, "*9712"

    const-string v4, "05"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/android/internal/telephony/LGShortCodeTable;->sList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;

    const-string v2, "kr"

    const-string v3, "##900"

    const-string v4, "08"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/android/internal/telephony/LGShortCodeTable;->sList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;

    const-string v2, "kr"

    const-string v3, "*9090"

    const-string v4, "06"

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/android/internal/telephony/LGShortCodeTable;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/internal/telephony/LGShortCodeTable;->sInstance:Lcom/android/internal/telephony/LGShortCodeTable;

    return-object v0
.end method

.method private getMNC()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "SIMoperator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 82
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "mDestAddr"    # Ljava/lang/String;
    .param p2, "destAddress"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    :goto_0
    return v1

    .line 69
    :cond_0
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 70
    .local v0, "scan":Ljava/util/Scanner;
    :cond_1
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 75
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLGShortCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "destAddress"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "entry":Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;
    sget-object v2, Lcom/android/internal/telephony/LGShortCodeTable;->sList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 52
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;
    check-cast v0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;

    .line 54
    .restart local v0    # "entry":Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;
    iget-object v2, v0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mDestAddr:Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/LGShortCodeTable;->isExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, v0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mMnc:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/LGShortCodeTable;->getMNC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mMnc:Ljava/lang/String;

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    :cond_1
    const-string v2, "SmsUsageMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countryIso = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  opeator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  destAddr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  CATEGORY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget v2, v0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mCategory:I

    .line 62
    :goto_0
    return v2

    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method
