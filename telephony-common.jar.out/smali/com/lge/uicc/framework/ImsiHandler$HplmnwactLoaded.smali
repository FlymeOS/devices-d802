.class Lcom/lge/uicc/framework/ImsiHandler$HplmnwactLoaded;
.super Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
.source "ImsiHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/ImsiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HplmnwactLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/ImsiHandler;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/ImsiHandler;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/lge/uicc/framework/ImsiHandler$HplmnwactLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;-><init>(Lcom/lge/uicc/framework/IccHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/ImsiHandler;Lcom/lge/uicc/framework/ImsiHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/ImsiHandler;
    .param p2, "x1"    # Lcom/lge/uicc/framework/ImsiHandler$1;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/ImsiHandler$HplmnwactLoaded;-><init>(Lcom/lge/uicc/framework/ImsiHandler;)V

    return-void
.end method


# virtual methods
.method onLoadCompleted(Ljava/lang/Object;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x2

    const/16 v10, -0xc

    const/4 v9, 0x6

    const/4 v8, 0x0

    const/16 v7, 0x40

    .line 235
    iget-object v4, p0, Lcom/lge/uicc/framework/ImsiHandler$HplmnwactLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    const-string v5, "EF_HPLMNWACT loaded"

    invoke-virtual {v4, v5}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 236
    check-cast p1, [B

    .end local p1    # "result":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [B

    .line 237
    .local v0, "data":[B
    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "efHplmnwact":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 239
    iget-object v4, p0, Lcom/lge/uicc/framework/ImsiHandler$HplmnwactLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    const-string v5, "HPLMNWACT is Invalid "

    invoke-virtual {v4, v5}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 273
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v4, p0, Lcom/lge/uicc/framework/ImsiHandler$HplmnwactLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_HPLMNWACT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/uicc/framework/ImsiHandler;->logp(Ljava/lang/String;)V

    .line 244
    iget-object v4, p0, Lcom/lge/uicc/framework/ImsiHandler$HplmnwactLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MCC/MNC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " E-UTRAN = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/uicc/framework/ImsiHandler;->logp(Ljava/lang/String;)V

    .line 246
    array-length v3, v0

    .line 247
    .local v3, "len":I
    const/16 v4, 0x64

    if-le v3, v4, :cond_1

    .line 248
    const/16 v3, 0x64

    .line 251
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 252
    aget-byte v4, v0, v2

    if-ne v4, v11, :cond_3

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v0, v4

    if-ne v4, v10, :cond_3

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v0, v4

    if-ne v4, v7, :cond_3

    .line 253
    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v0, v4

    and-int/lit8 v4, v4, 0x40

    if-eq v4, v7, :cond_7

    .line 254
    const-string v4, "card_operator"

    const-string v5, "VZW3G"

    invoke-static {v4, v5}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    iget-object v4, p0, Lcom/lge/uicc/framework/ImsiHandler$HplmnwactLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    const-string v5, "return VZW 3G"

    invoke-virtual {v4, v5}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 272
    :cond_2
    :goto_2
    const-string v4, "hplmnwact"

    invoke-static {v4, v1}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 258
    :cond_3
    aget-byte v4, v0, v2

    if-ne v4, v11, :cond_4

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v0, v4

    if-ne v4, v10, :cond_4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v0, v4

    if-eq v4, v7, :cond_5

    :cond_4
    aget-byte v4, v0, v2

    const/16 v5, 0x13

    if-ne v4, v5, :cond_7

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v0, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v0, v4

    const/16 v5, -0x7c

    if-ne v4, v5, :cond_7

    .line 261
    :cond_5
    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v0, v4

    and-int/lit8 v4, v4, 0x40

    if-ne v4, v7, :cond_7

    .line 263
    iget-object v4, p0, Lcom/lge/uicc/framework/ImsiHandler$HplmnwactLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    # getter for: Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/uicc/framework/ImsiHandler;->access$400(Lcom/lge/uicc/framework/ImsiHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "311480"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/lge/uicc/framework/ImsiHandler$HplmnwactLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    # getter for: Lcom/lge/uicc/framework/ImsiHandler;->mImsi:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/uicc/framework/ImsiHandler;->access$400(Lcom/lge/uicc/framework/ImsiHandler;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "20404"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 265
    :cond_6
    const-string v4, "card_operator"

    const-string v5, "VZW4G"

    invoke-static {v4, v5}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    iget-object v4, p0, Lcom/lge/uicc/framework/ImsiHandler$HplmnwactLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    const-string v5, "return VZW 4G"

    invoke-virtual {v4, v5}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 251
    :cond_7
    add-int/lit8 v2, v2, 0x5

    goto/16 :goto_1
.end method
