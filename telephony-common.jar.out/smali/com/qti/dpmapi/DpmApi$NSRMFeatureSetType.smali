.class public final enum Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;
.super Ljava/lang/Enum;
.source "DpmApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpmapi/DpmApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NSRMFeatureSetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

.field public static final enum OFF:Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

.field public static final enum SYNC_CONNECT_DNS:Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

.field public static final enum SYNC_CONNECT_DNS_WRITE:Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 103
    new-instance v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4, v2}, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->OFF:Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    .line 104
    new-instance v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    const-string v1, "SYNC_CONNECT_DNS"

    invoke-direct {v0, v1, v2, v3}, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->SYNC_CONNECT_DNS:Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    .line 106
    new-instance v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    const-string v1, "SYNC_CONNECT_DNS_WRITE"

    invoke-direct {v0, v1, v3, v5}, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->SYNC_CONNECT_DNS_WRITE:Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    .line 102
    new-array v0, v5, [Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    sget-object v1, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->OFF:Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->SYNC_CONNECT_DNS:Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->SYNC_CONNECT_DNS_WRITE:Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->$VALUES:[Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput p3, p0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->value:I

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    .prologue
    .line 102
    iget v0, p0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->value:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const-class v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    return-object v0
.end method

.method public static values()[Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->$VALUES:[Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    invoke-virtual {v0}, [Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureSetType;->value:I

    return v0
.end method
