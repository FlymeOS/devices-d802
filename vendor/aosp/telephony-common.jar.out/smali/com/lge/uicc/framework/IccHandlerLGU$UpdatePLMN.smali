.class Lcom/lge/uicc/framework/IccHandlerLGU$UpdatePLMN;
.super Ljava/lang/Object;
.source "IccHandlerLGU.java"

# interfaces
.implements Lcom/lge/uicc/framework/IccFileIO$EnvelopeOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccHandlerLGU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatePLMN"
.end annotation


# instance fields
.field private final envData:[B

.field final synthetic this$0:Lcom/lge/uicc/framework/IccHandlerLGU;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/IccHandlerLGU;)V
    .locals 3

    .prologue
    .line 246
    iput-object p1, p0, Lcom/lge/uicc/framework/IccHandlerLGU$UpdatePLMN;->this$0:Lcom/lge/uicc/framework/IccHandlerLGU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/uicc/framework/IccHandlerLGU$UpdatePLMN;->envData:[B

    .line 261
    iget-object v0, p0, Lcom/lge/uicc/framework/IccHandlerLGU$UpdatePLMN;->envData:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/uicc/framework/IccHandlerLGU$UpdatePLMN;->envData:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 262
    return-void

    .line 247
    :array_0
    .array-data 1
        -0x2at
        0x0t
        0x19t
        0x1t
        0x2ft
        0x2t
        0x2t
        -0x7et
        -0x7ft
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/IccHandlerLGU;Lcom/lge/uicc/framework/IccHandlerLGU$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/IccHandlerLGU;
    .param p2, "x1"    # Lcom/lge/uicc/framework/IccHandlerLGU$1;

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandlerLGU$UpdatePLMN;-><init>(Lcom/lge/uicc/framework/IccHandlerLGU;)V

    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 270
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v0

    .line 271
    .local v0, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v0, :cond_0

    .line 272
    iget-object v1, p0, Lcom/lge/uicc/framework/IccHandlerLGU$UpdatePLMN;->this$0:Lcom/lge/uicc/framework/IccHandlerLGU;

    const-string v2, "fails to get RIL"

    invoke-virtual {v1, v2}, Lcom/lge/uicc/framework/IccHandlerLGU;->loge(Ljava/lang/String;)V

    .line 273
    const-string v1, "FAIL"

    .line 277
    :goto_0
    return-object v1

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/lge/uicc/framework/IccHandlerLGU$UpdatePLMN;->this$0:Lcom/lge/uicc/framework/IccHandlerLGU;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdatePLMN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/uicc/framework/IccHandlerLGU$UpdatePLMN;->envData:[B

    invoke-static {v3}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/uicc/framework/IccHandlerLGU;->logp(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/lge/uicc/framework/IccHandlerLGU$UpdatePLMN;->envData:[B

    invoke-static {v1}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 277
    const-string v1, "SENT"

    goto :goto_0
.end method
