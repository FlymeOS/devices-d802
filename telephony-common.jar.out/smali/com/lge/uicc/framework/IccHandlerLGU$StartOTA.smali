.class Lcom/lge/uicc/framework/IccHandlerLGU$StartOTA;
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
    name = "StartOTA"
.end annotation


# instance fields
.field private final envData:[B

.field final synthetic this$0:Lcom/lge/uicc/framework/IccHandlerLGU;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/IccHandlerLGU;)V
    .locals 3

    .prologue
    .line 191
    iput-object p1, p0, Lcom/lge/uicc/framework/IccHandlerLGU$StartOTA;->this$0:Lcom/lge/uicc/framework/IccHandlerLGU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/16 v0, 0x36

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/uicc/framework/IccHandlerLGU$StartOTA;->envData:[B

    .line 219
    iget-object v0, p0, Lcom/lge/uicc/framework/IccHandlerLGU$StartOTA;->envData:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/uicc/framework/IccHandlerLGU$StartOTA;->envData:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 220
    return-void

    .line 192
    :array_0
    .array-data 1
        -0x2ft
        0x0t
        0x2t
        0x2t
        -0x7dt
        -0x7ft
        0x6t
        0x6t
        -0x68t
        0x33t
        0x11t
        0x11t
        0x11t
        0x11t
        0xbt
        0x26t
        -0x1ct
        0xat
        -0x68t
        0x33t
        0x11t
        0x11t
        0x11t
        0x11t
        0x7ft
        0x16t
        0xct
        0x1t
        0x9t
        0x15t
        0x57t
        0x32t
        0x36t
        0x14t
        0x2t
        0x70t
        0x0t
        0x0t
        0xft
        0xdt
        0x0t
        0x1t
        0x20t
        0x20t
        -0x50t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/IccHandlerLGU;Lcom/lge/uicc/framework/IccHandlerLGU$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/IccHandlerLGU;
    .param p2, "x1"    # Lcom/lge/uicc/framework/IccHandlerLGU$1;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandlerLGU$StartOTA;-><init>(Lcom/lge/uicc/framework/IccHandlerLGU;)V

    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v2, "card_operator"

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/lge/uicc/framework/IccHandlerLGU$StartOTA;->this$0:Lcom/lge/uicc/framework/IccHandlerLGU;

    const-string v3, "It\'s not a LGU+ Card"

    invoke-virtual {v2, v3}, Lcom/lge/uicc/framework/IccHandlerLGU;->loge(Ljava/lang/String;)V

    .line 225
    const-string v2, "FAIL"

    .line 242
    :goto_0
    return-object v2

    .line 227
    :cond_0
    const-string v2, "card_provisioned"

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "provisioned":Ljava/lang/String;
    const-string v2, "no"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/lge/uicc/framework/IccHandlerLGU$StartOTA;->envData:[B

    iget-object v3, p0, Lcom/lge/uicc/framework/IccHandlerLGU$StartOTA;->envData:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    .line 237
    :goto_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v1

    .line 238
    .local v1, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v1, :cond_3

    .line 239
    const-string v2, "FAIL"

    goto :goto_0

    .line 230
    .end local v1    # "ril":Lcom/android/internal/telephony/RIL;
    :cond_1
    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/lge/uicc/framework/IccHandlerLGU$StartOTA;->envData:[B

    iget-object v3, p0, Lcom/lge/uicc/framework/IccHandlerLGU$StartOTA;->envData:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x5

    aput-byte v4, v2, v3

    goto :goto_1

    .line 233
    :cond_2
    iget-object v2, p0, Lcom/lge/uicc/framework/IccHandlerLGU$StartOTA;->this$0:Lcom/lge/uicc/framework/IccHandlerLGU;

    const-string v3, "can not decide whether this card was provisioned."

    invoke-virtual {v2, v3}, Lcom/lge/uicc/framework/IccHandlerLGU;->loge(Ljava/lang/String;)V

    .line 234
    const-string v2, "FAIL"

    goto :goto_0

    .line 241
    .restart local v1    # "ril":Lcom/android/internal/telephony/RIL;
    :cond_3
    iget-object v2, p0, Lcom/lge/uicc/framework/IccHandlerLGU$StartOTA;->envData:[B

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/RIL;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 242
    const-string v2, "SENT"

    goto :goto_0
.end method
