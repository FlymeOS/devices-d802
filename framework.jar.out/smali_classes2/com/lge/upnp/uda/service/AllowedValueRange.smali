.class public Lcom/lge/upnp/uda/service/AllowedValueRange;
.super Lcom/lge/upnp/uda/service/IAllowedValueRange;
.source "AllowedValueRange.java"


# instance fields
.field private mMaxValue:Ljava/lang/String;

.field private mMinValue:Ljava/lang/String;

.field private mStepValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "maxValue"    # Ljava/lang/String;
    .param p2, "minValue"    # Ljava/lang/String;
    .param p3, "stepValue"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/IAllowedValueRange;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lge/upnp/uda/service/AllowedValueRange;->mMaxValue:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/lge/upnp/uda/service/AllowedValueRange;->mMinValue:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/lge/upnp/uda/service/AllowedValueRange;->mStepValue:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getMaxValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/upnp/uda/service/AllowedValueRange;->mMaxValue:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValueInt()I
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "value":I
    :try_start_0
    iget-object v1, p0, Lcom/lge/upnp/uda/service/AllowedValueRange;->mMaxValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 59
    :goto_0
    return v0

    .line 55
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMinValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/upnp/uda/service/AllowedValueRange;->mMinValue:Ljava/lang/String;

    return-object v0
.end method

.method public getMinValueInt()I
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "value":I
    :try_start_0
    iget-object v1, p0, Lcom/lge/upnp/uda/service/AllowedValueRange;->mMinValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 85
    :goto_0
    return v0

    .line 81
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getStepValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/upnp/uda/service/AllowedValueRange;->mStepValue:Ljava/lang/String;

    return-object v0
.end method

.method public getStepValueInt()I
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "value":I
    :try_start_0
    iget-object v1, p0, Lcom/lge/upnp/uda/service/AllowedValueRange;->mMinValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0
.end method
