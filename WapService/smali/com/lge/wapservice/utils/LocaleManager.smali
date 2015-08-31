.class public Lcom/lge/wapservice/utils/LocaleManager;
.super Ljava/lang/Object;
.source "LocaleManager.java"


# static fields
.field private static final COUNTRY_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPERATOR_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/lge/wapservice/utils/LocaleManager$1;

    invoke-direct {v0}, Lcom/lge/wapservice/utils/LocaleManager$1;-><init>()V

    sput-object v0, Lcom/lge/wapservice/utils/LocaleManager;->OPERATOR_MAP:Ljava/util/HashMap;

    .line 96
    new-instance v0, Lcom/lge/wapservice/utils/LocaleManager$2;

    invoke-direct {v0}, Lcom/lge/wapservice/utils/LocaleManager$2;-><init>()V

    sput-object v0, Lcom/lge/wapservice/utils/LocaleManager;->COUNTRY_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public static getCountryStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    const-string v0, "ro.build.target_country"

    const-string v1, "COUNTRY_NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOperator()I
    .locals 6

    .prologue
    .line 114
    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "opStr":Ljava/lang/String;
    const/16 v1, 0x8

    .line 117
    .local v1, "operator":I
    const-string v3, "WapService_LocaleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ !!! Operator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz v0, :cond_0

    .line 120
    sget-object v3, Lcom/lge/wapservice/utils/LocaleManager;->OPERATOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 121
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 126
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_0
    return v1
.end method
