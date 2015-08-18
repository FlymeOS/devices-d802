.class public Lcom/lge/telephony/LGSpecialNumberUtils;
.super Ljava/lang/Object;
.source "LGSpecialNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;,
        Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;
    }
.end annotation


# static fields
.field private static final BOOST:Ljava/lang/String; = "311870"

.field private static final DBG:Z = false

.field public static final FORMAT_KOREA:I = 0x3

.field public static final JP_SPECIALNUMBER:[Ljava/lang/String;

.field static final LOG_TAG:Ljava/lang/String; = "LGSpecialNumberUtils"

.field private static final NetworkCode:Ljava/lang/String;

.field private static final PRIVITE_DBG:Z

.field private static final SPRINT:Ljava/lang/String; = "310120"

.field private static final SPRINT_PREPAID:Ljava/lang/String; = "312530"

.field private static final TARGET_COUNTRY:Ljava/lang/String;

.field private static final TARGET_OPERATOR:Ljava/lang/String;

.field private static final VIRGIN:Ljava/lang/String; = "311490"

.field private static final sVZWNetworkOperatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVZWVoiceMailList:[Ljava/lang/String;

.field private static specialNumbers:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

.field private static specialNumbersAddon:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

.field private static specialNumbersPrepaid:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isLogBlocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    .line 47
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->TARGET_OPERATOR:Ljava/lang/String;

    .line 48
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->TARGET_COUNTRY:Ljava/lang/String;

    .line 59
    const-string v0, "ro.cdma.home.operator.numeric"

    const-string v3, "310000"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->NetworkCode:Ljava/lang/String;

    .line 81
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v4, "*2"

    sget v5, Lcom/lge/internal/R$string;->sp_dialer_2_sprint_NORMAL:I

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v3, v0, v1

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v4, "*4"

    sget v5, Lcom/lge/internal/R$string;->sp_dialer_4_sprint_NORMAL:I

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v3, v0, v2

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v4, "0"

    sget v5, Lcom/lge/internal/R$string;->sp_dialer_0_sprint_NORMAL:I

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v3, v0, v8

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v4, "211"

    sget v5, Lcom/lge/internal/R$string;->sp_dialer_211_NORMAL:I

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v3, v0, v9

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v4, "311"

    sget v5, Lcom/lge/internal/R$string;->sp_dialer_311_NORMAL:I

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v3, v0, v10

    const/4 v3, 0x5

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v5, "411"

    sget v6, Lcom/lge/internal/R$string;->sp_dialer_411_NORMAL:I

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v5, "511"

    sget v6, Lcom/lge/internal/R$string;->sp_dialer_511_NORMAL:I

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v4, v0, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v5, "611"

    sget v6, Lcom/lge/internal/R$string;->sp_dialer_611_NORMAL:I

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v4, v0, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v5, "711"

    sget v6, Lcom/lge/internal/R$string;->sp_dialer_711_NORMAL:I

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v4, v0, v3

    const/16 v3, 0x9

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v5, "811"

    sget v6, Lcom/lge/internal/R$string;->sp_dialer_811_NORMAL:I

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v4, v0, v3

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbers:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    .line 95
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v4, "211"

    sget v5, Lcom/lge/internal/R$string;->sp_dialer_211_NORMAL:I

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v3, v0, v1

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v4, "311"

    sget v5, Lcom/lge/internal/R$string;->sp_dialer_311_NORMAL:I

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v3, v0, v2

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v4, "411"

    sget v5, Lcom/lge/internal/R$string;->sp_dialer_411_NORMAL:I

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v3, v0, v8

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v4, "511"

    sget v5, Lcom/lge/internal/R$string;->sp_dialer_511_NORMAL:I

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v3, v0, v9

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v4, "611"

    sget v5, Lcom/lge/internal/R$string;->sp_dialer_611_NORMAL:I

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v3, v0, v10

    const/4 v3, 0x5

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v5, "711"

    sget v6, Lcom/lge/internal/R$string;->sp_dialer_711_NORMAL:I

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    const-string v5, "811"

    sget v6, Lcom/lge/internal/R$string;->sp_dialer_811_NORMAL:I

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;-><init>(Ljava/lang/String;I)V

    aput-object v4, v0, v3

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbersPrepaid:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    .line 115
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v4, "adc.n11.first.number"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "adc.n11.first.name"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v1

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v4, "adc.n11.second.number"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "adc.n11.second.name"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v4, "adc.n11.third.number"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "adc.n11.third.name"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v8

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v4, "adc.n11.forth.number"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "adc.n11.forth.name"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v9

    new-instance v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v4, "adc.n11.fifth.number"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "adc.n11.fifth.name"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v10

    const/4 v3, 0x5

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v5, "adc.n11.sixth.number"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adc.n11.sixth.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v5, "adc.n11.seventh.number"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adc.n11.seventh.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v5, "adc.n11.eighth.number"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adc.n11.eighth.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v5, "adc.n11.ninth.number"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adc.n11.ninth.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0x9

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v5, "adc.n11.tenth.number"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adc.n11.tenth.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0xa

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v5, "adc.n11.elevnth.number"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adc.n11.elevnth.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0xb

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v5, "adc.n11.twelfth.number"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adc.n11.twelfth.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0xc

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v5, "adc.n11.thirteenth.number"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adc.n11.thirteenth.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0xd

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v5, "adc.n11.fourteenth.number"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adc.n11.fourteenth.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0xe

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v5, "adc.n11.fifteenth.number"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adc.n11.fifteenth.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0xf

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v5, "adc.n11.sixteenth.number"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adc.n11.sixteenth.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0x10

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v5, "adc.n11.seventeenth.number"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adc.n11.seventeenth.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0x11

    new-instance v4, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    const-string v5, "adc.n11.eighteenth.number"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adc.n11.eighteenth.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbersAddon:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    .line 294
    new-array v0, v8, [Ljava/lang/String;

    const-string v3, "184"

    aput-object v3, v0, v1

    const-string v3, "186"

    aput-object v3, v0, v2

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->JP_SPECIALNUMBER:[Ljava/lang/String;

    .line 487
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "310"

    aput-object v3, v0, v1

    const-string v3, "311"

    aput-object v3, v0, v2

    const-string v3, "312"

    aput-object v3, v0, v8

    const-string v3, "313"

    aput-object v3, v0, v9

    const-string v3, "315"

    aput-object v3, v0, v10

    const/4 v3, 0x5

    const-string v4, "316"

    aput-object v4, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sVZWNetworkOperatorList:Ljava/util/List;

    .line 592
    new-array v0, v10, [Ljava/lang/String;

    const-string v3, "*86,"

    aput-object v3, v0, v1

    const-string v1, "MDN,1"

    aput-object v1, v0, v2

    const-string v1, "MDN,+1"

    aput-object v1, v0, v8

    const-string v1, "MDN,1,IDD"

    aput-object v1, v0, v9

    sput-object v0, Lcom/lge/telephony/LGSpecialNumberUtils;->sVZWVoiceMailList:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 44
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method public static convertInternational611Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 553
    invoke-static {}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialCurrentCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v4

    .line 554
    .local v4, "currentCountry":Lcom/lge/telephony/LGReferenceCountry;
    move-object v2, p0

    .line 555
    .local v2, "convertNumber":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "IddNumber":Ljava/lang/String;
    const-string v1, "19085594899"

    .line 558
    .local v1, "International611Number":Ljava/lang/String;
    sget-boolean v5, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    if-eqz v5, :cond_0

    .line 559
    const-string v5, "LGSpecialNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertInternational611Number()...\tbefore number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    if-nez v4, :cond_1

    move-object v3, v2

    .line 588
    .end local v2    # "convertNumber":Ljava/lang/String;
    .local v3, "convertNumber":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 566
    .end local v3    # "convertNumber":Ljava/lang/String;
    .restart local v2    # "convertNumber":Ljava/lang/String;
    :cond_1
    sget-boolean v5, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    if-eqz v5, :cond_2

    .line 567
    const-string v5, "LGSpecialNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IddNumber() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 571
    invoke-static {}, Lcom/lge/telephony/LGSpecialNumberUtils;->isVZWCDMANetwork()Z

    move-result v5

    if-nez v5, :cond_3

    .line 572
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/lge/telephony/LGReferenceCountry;->getNanp()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v8, :cond_5

    .line 573
    move-object v2, v1

    .line 584
    :cond_3
    :goto_1
    sget-boolean v5, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    if-eqz v5, :cond_4

    .line 585
    const-string v5, "LGSpecialNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertInternational611Number()... after number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v3, v2

    .line 588
    .end local v2    # "convertNumber":Ljava/lang/String;
    .restart local v3    # "convertNumber":Ljava/lang/String;
    goto :goto_0

    .line 574
    .end local v3    # "convertNumber":Ljava/lang/String;
    .restart local v2    # "convertNumber":Ljava/lang/String;
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 577
    :cond_6
    move-object v2, v1

    goto :goto_1

    .line 580
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static convertInternationalVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 511
    invoke-static {}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialCurrentCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v3

    .line 512
    .local v3, "currentCountry":Lcom/lge/telephony/LGReferenceCountry;
    move-object v1, p0

    .line 513
    .local v1, "convertNumber":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "IddNumber":Ljava/lang/String;
    sget-boolean v4, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    if-eqz v4, :cond_0

    .line 516
    const-string v4, "LGSpecialNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertInternationalVoiceMailNumber()...\tbefore number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    if-nez v3, :cond_1

    move-object v2, v1

    .line 546
    .end local v1    # "convertNumber":Ljava/lang/String;
    .local v2, "convertNumber":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 523
    .end local v2    # "convertNumber":Ljava/lang/String;
    .restart local v1    # "convertNumber":Ljava/lang/String;
    :cond_1
    sget-boolean v4, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    if-eqz v4, :cond_2

    .line 524
    const-string v4, "LGSpecialNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IddNumber() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v4, "LGSpecialNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLine1Number() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 529
    invoke-static {}, Lcom/lge/telephony/LGSpecialNumberUtils;->isVZWCDMANetwork()Z

    move-result v4

    if-nez v4, :cond_3

    .line 530
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/lge/telephony/LGReferenceCountry;->getNanp()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v7, :cond_5

    .line 531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    :cond_3
    :goto_1
    sget-boolean v4, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    if-eqz v4, :cond_4

    .line 543
    const-string v4, "LGSpecialNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertInternationalVoiceMailNumber()... after number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v2, v1

    .line 546
    .end local v1    # "convertNumber":Ljava/lang/String;
    .restart local v2    # "convertNumber":Ljava/lang/String;
    goto/16 :goto_0

    .line 532
    .end local v2    # "convertNumber":Ljava/lang/String;
    .restart local v1    # "convertNumber":Ljava/lang/String;
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 535
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 538
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public static extractNetworkPortionAltJP(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string v0, "KDDI"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SBM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    invoke-static {p0}, Lcom/lge/telephony/LGSpecialNumberUtils;->extractSpecialNumberPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 291
    :cond_1
    return-object p0
.end method

.method public static extractSpecialNumberPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-object p0

    .line 309
    :cond_1
    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->JP_SPECIALNUMBER:[Ljava/lang/String;

    array-length v1, v2

    .line 310
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 312
    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->JP_SPECIALNUMBER:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->JP_SPECIALNUMBER:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 315
    goto :goto_0

    .line 310
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static formatKoreanNumber(Landroid/text/Editable;)V
    .locals 0
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 261
    invoke-static {p0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 262
    return-void
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 0
    .param p0, "edit"    # Landroid/text/Editable;
    .param p1, "formatType"    # I

    .prologue
    .line 267
    packed-switch p1, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 270
    :pswitch_0
    invoke-static {p0}, Lcom/lge/telephony/LGSpecialNumberUtils;->formatKoreanNumber(Landroid/text/Editable;)V

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private static getCurrentIdd()Ljava/lang/String;
    .locals 3

    .prologue
    .line 595
    const-string v1, "gsm.operator.idpstring"

    const-string v2, "011"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "idd":Ljava/lang/String;
    return-object v0
.end method

.method public static getDialStringForSprint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 651
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assist_dial"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 653
    .local v3, "isSmartDiallingEnabled":I
    if-nez v3, :cond_0

    .line 654
    const-string v4, "LGSpecialNumberUtils"

    const-string v5, "Smart Dialing OFF"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 675
    .end local p1    # "dialString":Ljava/lang/String;
    .local v0, "dialString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 657
    .end local v0    # "dialString":Ljava/lang/String;
    .restart local p1    # "dialString":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 658
    const-string v4, "us"

    const-string v5, "gsm.operator.iso-country"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 659
    const-string v4, "LGSpecialNumberUtils"

    const-string v5, "Dialed from US"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 660
    .end local p1    # "dialString":Ljava/lang/String;
    .restart local v0    # "dialString":Ljava/lang/String;
    goto :goto_0

    .line 662
    .end local v0    # "dialString":Ljava/lang/String;
    .restart local p1    # "dialString":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 663
    const/4 v1, 0x0

    .line 665
    .local v1, "dialfromContact":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assist_dial_from_contact"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 666
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assist_dial_from_contact"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_1
    const/4 v4, 0x1

    if-eq v4, v1, :cond_2

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 671
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v1    # "dialfromContact":I
    :cond_3
    move-object v0, p1

    .line 675
    .end local p1    # "dialString":Ljava/lang/String;
    .restart local v0    # "dialString":Ljava/lang/String;
    goto :goto_0

    .line 667
    .end local v0    # "dialString":Ljava/lang/String;
    .restart local v1    # "dialfromContact":I
    .restart local p1    # "dialString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 668
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInternationalVoiceMailNumber(Ljava/lang/String;)Z
    .locals 15
    .param p0, "dialNumber"    # Ljava/lang/String;

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 601
    const/4 v5, 0x0

    .line 602
    .local v5, "isVoiceMailNumber":Z
    const-string v9, ""

    .line 604
    .local v9, "outNumber":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 645
    :goto_0
    return v10

    .line 608
    :cond_0
    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->sVZWVoiceMailList:[Ljava/lang/String;

    .line 611
    .local v2, "convertMaps":[Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v8

    .line 612
    .local v8, "mMDN":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 614
    .local v7, "length":I
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v1, v0, v4

    .line 616
    .local v1, "convertMap":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "entry":[Ljava/lang/String;
    aget-object v11, v3, v10

    const-string v12, "MDN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0xa

    if-lt v7, v11, :cond_5

    .line 619
    array-length v11, v3

    const/4 v12, 0x3

    if-lt v11, v12, :cond_3

    aget-object v11, v3, v14

    const-string v12, "IDD"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 620
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lge/telephony/LGSpecialNumberUtils;->getCurrentIdd()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v3, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 627
    :goto_2
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 628
    const/4 v5, 0x1

    .line 639
    .end local v1    # "convertMap":Ljava/lang/String;
    .end local v3    # "entry":[Ljava/lang/String;
    :cond_1
    :goto_3
    sget-boolean v10, Lcom/lge/telephony/LGSpecialNumberUtils;->PRIVITE_DBG:Z

    if-eqz v10, :cond_2

    .line 640
    if-eqz v5, :cond_2

    .line 641
    const-string v10, "LGSpecialNumberUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isInternationalVoiceMailNumber() dialNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , outNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string v10, "LGSpecialNumberUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isInternationalVoiceMailNumber() isVoiceMailNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v10, v5

    .line 645
    goto/16 :goto_0

    .line 621
    .restart local v1    # "convertMap":Ljava/lang/String;
    .restart local v3    # "entry":[Ljava/lang/String;
    :cond_3
    array-length v11, v3

    if-lt v11, v14, :cond_4

    aget-object v11, v3, v13

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 622
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v3, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 624
    :cond_4
    move-object v9, v8

    goto :goto_2

    .line 632
    :cond_5
    aget-object v11, v3, v10

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    aget-object v11, v3, v10

    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 633
    const/4 v5, 0x1

    .line 634
    goto :goto_3

    .line 614
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method public static getLocaleInfo()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 277
    const-string v1, "KR"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "gsm.operator.iso-country"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "currIso":Ljava/lang/String;
    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    .line 283
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    goto :goto_0
.end method

.method public static getN11OrSpecialNumberString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 185
    const/4 v1, 0x0

    .line 187
    .local v1, "resString":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v2, v1

    .line 220
    .end local v1    # "resString":Ljava/lang/String;
    .local v2, "resString":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 191
    .end local v2    # "resString":Ljava/lang/String;
    .restart local v1    # "resString":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 194
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->NetworkCode:Ljava/lang/String;

    const-string v4, "311870"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->NetworkCode:Ljava/lang/String;

    const-string v4, "311490"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->NetworkCode:Ljava/lang/String;

    const-string v4, "312530"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 197
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbersPrepaid:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 198
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbersPrepaid:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;->number:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 199
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbersPrepaid:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;->resIDOfNums:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbers:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 207
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbers:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;->number:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_4

    .line 208
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbers:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;->resIDOfNums:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 214
    :cond_5
    const/4 v0, 0x0

    :goto_3
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbersAddon:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 215
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbersAddon:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;->number:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_6

    .line 216
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbersAddon:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    aget-object v3, v3, v0

    iget-object v1, v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;->resString:Ljava/lang/String;

    .line 214
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move-object v2, v1

    .line 220
    .end local v1    # "resString":Ljava/lang/String;
    .restart local v2    # "resString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getValidMdnForVZW(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "mdnNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 227
    const/4 v3, 0x0

    .line 229
    .local v3, "validMdn":Ljava/lang/String;
    move-object v3, p0

    .line 231
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 232
    .local v2, "mdnNumberLength":I
    :goto_0
    const/16 v5, 0xa

    if-lt v2, v5, :cond_1

    .line 233
    add-int/lit8 v5, v2, -0xa

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 240
    .local v0, "chArr":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 241
    aget-char v5, v0, v1

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 242
    const-string v5, "LGSpecialNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chArr["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-char v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v0    # "chArr":[C
    .end local v1    # "i":I
    :goto_2
    return-object v4

    .line 231
    .end local v2    # "mdnNumberLength":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 235
    .restart local v2    # "mdnNumberLength":I
    :cond_1
    const-string v5, "LGSpecialNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MDN length is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", so return null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 240
    .restart local v0    # "chArr":[C
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    :cond_3
    const-string v5, "0000000000"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 248
    const-string v5, "LGSpecialNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "validMdn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move-object v4, v3

    .line 252
    goto :goto_2
.end method

.method public static is611DialNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 500
    const-string v0, "*611"

    .line 502
    .local v0, "is611Check":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    const/4 v1, 0x1

    .line 506
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isJapanEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "numbers"    # Ljava/lang/String;

    .prologue
    .line 709
    const-string v6, ""

    .line 710
    .local v6, "tempERNumber":Ljava/lang/String;
    const-string v4, "0"

    .line 712
    .local v4, "mcc":Ljava/lang/String;
    const-string v8, "LGSpecialNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Telephony]isJapanEmergencyNumber, number ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    if-eqz p1, :cond_0

    .line 715
    const-string v8, "LGSpecialNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Telephony]isJapanEmergencyNumber, numbers ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 728
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    .line 729
    :cond_1
    const-string v8, "*31#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "#31#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 730
    :cond_2
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 737
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "08"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "110"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "112"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "118"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "119"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "911"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "999"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 740
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 741
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 742
    .local v1, "emergencyNum":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 743
    const-string v8, "LGSpecialNumberUtils"

    const-string v9, "[Telephony]isEmergencyNumber, emergencyNum.equals(number), No USIM"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/4 v8, 0x1

    .line 967
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_2
    return v8

    .line 733
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 741
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 748
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 754
    :cond_6
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "0"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 755
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "08"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "110"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "112"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "118"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "119"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "911"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "999"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 761
    const-string v8, "*31#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "#31#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 762
    :cond_7
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 771
    :goto_3
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_4
    if-ge v2, v3, :cond_a

    aget-object v1, v0, v2

    .line 772
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 773
    const-string v8, "LGSpecialNumberUtils"

    const-string v9, "[Telephony]isEmergencyNumber, emergencyNum.equals(number), number in EF_ECC"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 765
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_8
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 771
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 777
    .end local v1    # "emergencyNum":Ljava/lang/String;
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 785
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_b
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-le v8, v9, :cond_c

    .line 786
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 793
    :cond_c
    const-string v8, "LGSpecialNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Telephony] isEmergencyNumber, tm.getSimOperator() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v5, 0x0

    .line 795
    .local v5, "simMcc":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-le v8, v9, :cond_d

    .line 796
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 797
    const-string v8, "LGSpecialNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Telephony]isEmergencyNumber, simMcc ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_d
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_17

    const-string v8, "0"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 802
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 809
    const-string v8, "*31#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "#31#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 810
    :cond_e
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 818
    :goto_5
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_6
    if-ge v2, v3, :cond_11

    aget-object v1, v0, v2

    .line 819
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 820
    const-string v8, "LGSpecialNumberUtils"

    const-string v9, "[Telephony]isEmergencyNumber, emergencyNum.equals(number), number in EF_ECC"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 812
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_f
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 818
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 830
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_11
    if-eqz v5, :cond_14

    const-string v8, "440"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "441"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "001"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 831
    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "110"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "118"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "119"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "112"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "911"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 837
    :goto_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 847
    const-string v8, "*31#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "#31#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 848
    :cond_13
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 857
    :goto_8
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_9
    if-ge v2, v3, :cond_17

    aget-object v1, v0, v2

    .line 858
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 859
    const-string v8, "LGSpecialNumberUtils"

    const-string v9, "[Telephony]isEmergencyNumber, emergencyNum.equals(number), DCM Emergency list"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 833
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "112"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "911"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    .line 851
    :cond_15
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 857
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 870
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_17
    const-string v8, "440"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    const-string v8, "441"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 871
    const-string v8, "*31#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_18

    const-string v8, "#31#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 872
    :cond_18
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 877
    :goto_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "112"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "911"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 884
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 885
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_b
    if-ge v2, v3, :cond_1b

    aget-object v1, v0, v2

    .line 886
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 887
    const-string v8, "LGSpecialNumberUtils"

    const-string v9, "[Telephony]isEmergencyNumber, emergencyNum.equals(number), Roaming"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 875
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_19
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    .line 885
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 896
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1b
    const-string v8, "440"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    const-string v8, "441"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 897
    :cond_1c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_20

    .line 904
    const-string v8, "*31#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1d

    const-string v8, "#31#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 905
    :cond_1d
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 915
    :goto_c
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_d
    if-ge v2, v3, :cond_20

    aget-object v1, v0, v2

    .line 916
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 920
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 908
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1e
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    .line 915
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 929
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_20
    if-eqz v5, :cond_23

    const-string v8, "440"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    const-string v8, "441"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    const-string v8, "001"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 930
    :cond_21
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "110"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "118"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "119"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "112"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "911"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 935
    :goto_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_26

    .line 945
    const-string v8, "*31#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_22

    const-string v8, "#31#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 946
    :cond_22
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 955
    :goto_f
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_10
    if-ge v2, v3, :cond_26

    aget-object v1, v0, v2

    .line 956
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 960
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 932
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_23
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "112"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "911"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_e

    .line 949
    :cond_24
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    .line 955
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 967
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_26
    const/4 v8, 0x0

    goto/16 :goto_2
.end method

.method public static isKoreaEmergencyNumber(Ljava/lang/String;Z)Z
    .locals 10
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    const/4 v6, 0x1

    .line 324
    const-string v7, "ril.ecclist"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, "numbers":Ljava/lang/String;
    const-string v7, "LGSpecialNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isKoreaEmergencyNumber number="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", useExactMatch="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", numbers="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v5, 0x0

    .line 328
    .local v5, "retB":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 331
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 332
    .local v1, "emergencyNum":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 333
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 351
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    :goto_1
    return v6

    .line 337
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 331
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    const-string v6, "KR"

    const-string v7, "SKT"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 345
    invoke-static {p0, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->isKoreaSKTEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v5

    :cond_4
    :goto_2
    move v6, v5

    .line 351
    goto :goto_1

    .line 346
    :cond_5
    const-string v6, "KR"

    const-string v7, "KT"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 347
    invoke-static {p0, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->isKoreaKTEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_2

    .line 348
    :cond_6
    const-string v6, "KR"

    const-string v7, "LGU"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 349
    invoke-static {p0, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->isKoreaLGUEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_2
.end method

.method private static isKoreaKTEmergencyNumber(Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 403
    const/4 v4, 0x0

    .line 404
    .local v4, "numbers":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "domestic_ecclist"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 410
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 413
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 414
    .local v1, "emergencyNum":Ljava/lang/String;
    invoke-static {p0, v1, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    .line 423
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    :goto_1
    return v5

    .line 413
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    const-string v7, "112"

    invoke-static {p0, v7, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "911"

    invoke-static {p0, v7, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    move v5, v6

    goto :goto_1
.end method

.method private static isKoreaLGUEmergencyNumber(Ljava/lang/String;Z)Z
    .locals 13
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 427
    const/4 v5, 0x0

    .line 428
    .local v5, "numbers":Ljava/lang/String;
    const/4 v0, 0x0

    .line 429
    .local v0, "IsUsimRoaming":Z
    const-string v9, "persist.radio.camped_mccmnc"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 431
    .local v6, "usimMccMnc":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "number="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/lge/telephony/LGSpecialNumberUtils;->log(Ljava/lang/String;Z)V

    .line 432
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "usimMccMnc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/lge/telephony/LGSpecialNumberUtils;->log(Ljava/lang/String;Z)V

    .line 434
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_0

    .line 435
    invoke-virtual {v6, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "450"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "001"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 436
    const/4 v0, 0x1

    .line 440
    :cond_0
    const-string v9, "true"

    const-string v10, "gsm.operator.isroaming"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v0, :cond_3

    .line 441
    :cond_1
    const-string v9, "LGU_roaming_ecclist"

    invoke-static {v11, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 448
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LG U+ ecclist : numbers="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/lge/telephony/LGSpecialNumberUtils;->log(Ljava/lang/String;Z)V

    .line 450
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 453
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v1, v3

    .line 454
    .local v2, "emergencyNum":Ljava/lang/String;
    invoke-static {p0, v2, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    move v7, v8

    .line 463
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "emergencyNum":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    :goto_2
    return v7

    .line 442
    :cond_3
    const-string v9, "ril.card_operator"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "LGU"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 444
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LGU_ecclist"

    invoke-static {v11, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",114"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 446
    :cond_4
    const-string v9, "LGU_ecclist"

    invoke-static {v11, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 453
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "emergencyNum":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 463
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "emergencyNum":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_6
    const-string v9, "112"

    invoke-static {p0, v9, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "911"

    invoke-static {p0, v9, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_7
    move v7, v8

    goto :goto_2
.end method

.method private static isKoreaSKTEmergencyNumber(Ljava/lang/String;Z)Z
    .locals 12
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    .line 355
    const/4 v6, 0x0

    .line 356
    .local v6, "numbers":Ljava/lang/String;
    const/4 v0, 0x0

    .line 357
    .local v0, "IsUsimRoaming":Z
    const-string v9, "persist.radio.camped_mccmnc"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 359
    .local v8, "usimMccMnc":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "number="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/lge/telephony/LGSpecialNumberUtils;->log(Ljava/lang/String;Z)V

    .line 360
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "usimMccMnc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/lge/telephony/LGSpecialNumberUtils;->log(Ljava/lang/String;Z)V

    .line 362
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_0

    .line 363
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "450"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "001"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 364
    const/4 v0, 0x1

    .line 368
    :cond_0
    const-string v9, "true"

    const-string v10, "gsm.operator.isroaming"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v0, :cond_5

    .line 370
    :cond_1
    const-string v9, "gsm.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 371
    .local v7, "numeric":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v5, ""

    .line 373
    .local v5, "mcc":Ljava/lang/String;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mcc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/lge/telephony/LGSpecialNumberUtils;->log(Ljava/lang/String;Z)V

    .line 375
    const-string v9, "202"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "206"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "222"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "505"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 376
    :cond_2
    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "roaming"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_ecclist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 384
    .end local v5    # "mcc":Ljava/lang/String;
    .end local v7    # "numeric":Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SKT ecclist : numbers = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/lge/telephony/LGSpecialNumberUtils;->log(Ljava/lang/String;Z)V

    .line 386
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 389
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_7

    aget-object v2, v1, v3

    .line 390
    .local v2, "emergencyNum":Ljava/lang/String;
    invoke-static {p0, v2, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 391
    const/4 v9, 0x1

    .line 399
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "emergencyNum":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_3
    return v9

    .line 371
    .restart local v7    # "numeric":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 378
    .restart local v5    # "mcc":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    const-string v10, "roaming_ecclist"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 381
    .end local v5    # "mcc":Ljava/lang/String;
    .end local v7    # "numeric":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    const-string v10, "domestic_ecclist"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 389
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "emergencyNum":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 395
    .end local v2    # "emergencyNum":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 399
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_8
    const-string v9, "112"

    invoke-static {p0, v9, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "911"

    invoke-static {p0, v9, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    const/4 v9, 0x1

    goto :goto_3

    :cond_a
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public static isN11orSpecialNumber(Ljava/lang/String;)Z
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 141
    if-nez p0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 143
    :cond_1
    const/4 v3, 0x0

    const-string v4, "support_sprint_n11"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 153
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->NetworkCode:Ljava/lang/String;

    const-string v4, "311870"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->NetworkCode:Ljava/lang/String;

    const-string v4, "311490"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->NetworkCode:Ljava/lang/String;

    const-string v4, "312530"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 155
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbersPrepaid:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 156
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbersPrepaid:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;->number:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_3

    move v1, v2

    .line 157
    goto :goto_0

    .line 155
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbers:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 165
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbers:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;->number:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_5

    move v1, v2

    .line 166
    goto :goto_0

    .line 164
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 172
    :cond_6
    const/4 v0, 0x0

    :goto_3
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbersAddon:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 174
    sget-object v3, Lcom/lge/telephony/LGSpecialNumberUtils;->specialNumbersAddon:[Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;->number:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_7

    move v1, v2

    .line 175
    goto :goto_0

    .line 172
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static isNoSlashNumberFormat(Ljava/lang/String;)Z
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 682
    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v3, "ORG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v3, "OPEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->TARGET_COUNTRY:Ljava/lang/String;

    const-string v3, "EU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/lge/telephony/LGSpecialNumberUtils;->TARGET_COUNTRY:Ljava/lang/String;

    const-string v3, "COM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 684
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, "numeric":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 687
    .local v0, "length":I
    const-string v2, "231"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 688
    :cond_2
    const/4 v2, 0x1

    .line 692
    .end local v0    # "length":I
    .end local v1    # "numeric":Ljava/lang/String;
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isVZWCDMANetwork()Z
    .locals 4

    .prologue
    .line 491
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "networkOperator":Ljava/lang/String;
    sget-object v1, Lcom/lge/telephony/LGSpecialNumberUtils;->sVZWNetworkOperatorList:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "enforce"    # Z

    .prologue
    .line 482
    return-void
.end method

.method private static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 467
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    :cond_0
    const/4 v0, 0x0

    .line 474
    :goto_0
    return v0

    .line 471
    :cond_1
    if-eqz p2, :cond_2

    .line 472
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 474
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static removeSlashesIfNoSlashNumberFormat(Landroid/text/Editable;)V
    .locals 4
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 697
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "slashRemovedNumber":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/telephony/LGSpecialNumberUtils;->isNoSlashNumberFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p0, v1, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 702
    :cond_0
    return-void
.end method
