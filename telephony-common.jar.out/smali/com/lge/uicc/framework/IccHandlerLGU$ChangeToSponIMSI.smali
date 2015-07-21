.class Lcom/lge/uicc/framework/IccHandlerLGU$ChangeToSponIMSI;
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
    name = "ChangeToSponIMSI"
.end annotation


# instance fields
.field private final envData:[B

.field final synthetic this$0:Lcom/lge/uicc/framework/IccHandlerLGU;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/IccHandlerLGU;)V
    .locals 3

    .prologue
    .line 324
    iput-object p1, p0, Lcom/lge/uicc/framework/IccHandlerLGU$ChangeToSponIMSI;->this$0:Lcom/lge/uicc/framework/IccHandlerLGU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/uicc/framework/IccHandlerLGU$ChangeToSponIMSI;->envData:[B

    .line 343
    iget-object v0, p0, Lcom/lge/uicc/framework/IccHandlerLGU$ChangeToSponIMSI;->envData:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/uicc/framework/IccHandlerLGU$ChangeToSponIMSI;->envData:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 344
    return-void

    .line 325
    :array_0
    .array-data 1
        -0x2at
        0x0t
        0x19t
        0x1t
        0x30t
        0x2t
        0x2t
        -0x7et
        -0x7ft
        0x70t
        0x3t
        0x2t
        -0xct
        0x40t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/IccHandlerLGU;Lcom/lge/uicc/framework/IccHandlerLGU$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/IccHandlerLGU;
    .param p2, "x1"    # Lcom/lge/uicc/framework/IccHandlerLGU$1;

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandlerLGU$ChangeToSponIMSI;-><init>(Lcom/lge/uicc/framework/IccHandlerLGU;)V

    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_0

    .line 348
    const-string v1, "NOT_SUPPORT"

    .line 363
    :goto_0
    return-object v1

    .line 356
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v0

    .line 357
    .local v0, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v0, :cond_1

    .line 358
    iget-object v1, p0, Lcom/lge/uicc/framework/IccHandlerLGU$ChangeToSponIMSI;->this$0:Lcom/lge/uicc/framework/IccHandlerLGU;

    const-string v2, "fails to get RIL"

    invoke-virtual {v1, v2}, Lcom/lge/uicc/framework/IccHandlerLGU;->loge(Ljava/lang/String;)V

    .line 359
    const-string v1, "FAIL"

    goto :goto_0

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/lge/uicc/framework/IccHandlerLGU$ChangeToSponIMSI;->this$0:Lcom/lge/uicc/framework/IccHandlerLGU;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChangeToSponIMSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/uicc/framework/IccHandlerLGU$ChangeToSponIMSI;->envData:[B

    invoke-static {v3}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/uicc/framework/IccHandlerLGU;->logp(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/lge/uicc/framework/IccHandlerLGU$ChangeToSponIMSI;->envData:[B

    invoke-static {v1}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 363
    const-string v1, "SENT"

    goto :goto_0
.end method
