.class public final enum Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;
.super Ljava/lang/Enum;
.source "DpmApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpmapi/DpmApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NSRMFeatureGetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

.field public static final enum SYNC_CONNECT_DNS:Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

.field public static final enum SYNC_CONNECT_DNS_WRITE:Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 120
    new-instance v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

    const-string v1, "SYNC_CONNECT_DNS"

    invoke-direct {v0, v1, v3, v2}, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;->SYNC_CONNECT_DNS:Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

    .line 122
    new-instance v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

    const-string v1, "SYNC_CONNECT_DNS_WRITE"

    invoke-direct {v0, v1, v2, v4}, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;->SYNC_CONNECT_DNS_WRITE:Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

    .line 119
    new-array v0, v4, [Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

    sget-object v1, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;->SYNC_CONNECT_DNS:Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;->SYNC_CONNECT_DNS_WRITE:Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;->$VALUES:[Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput p3, p0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;->value:I

    .line 129
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    const-class v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

    return-object v0
.end method

.method public static values()[Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;->$VALUES:[Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

    invoke-virtual {v0}, [Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/qti/dpmapi/DpmApi$NSRMFeatureGetType;->value:I

    return v0
.end method
