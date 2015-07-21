.class synthetic Lcom/qti/dpmapi/DpmApi$1;
.super Ljava/lang/Object;
.source "DpmApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpmapi/DpmApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$qti$dpmapi$DpmApi$FeatureType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 396
    invoke-static {}, Lcom/qti/dpmapi/DpmApi$FeatureType;->values()[Lcom/qti/dpmapi/DpmApi$FeatureType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/qti/dpmapi/DpmApi$1;->$SwitchMap$com$qti$dpmapi$DpmApi$FeatureType:[I

    :try_start_0
    sget-object v0, Lcom/qti/dpmapi/DpmApi$1;->$SwitchMap$com$qti$dpmapi$DpmApi$FeatureType:[I

    sget-object v1, Lcom/qti/dpmapi/DpmApi$FeatureType;->NSRM:Lcom/qti/dpmapi/DpmApi$FeatureType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
