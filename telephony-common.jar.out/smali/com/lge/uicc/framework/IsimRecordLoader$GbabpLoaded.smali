.class Lcom/lge/uicc/framework/IsimRecordLoader$GbabpLoaded;
.super Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
.source "IsimRecordLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IsimRecordLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GbabpLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IsimRecordLoader;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/IsimRecordLoader;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbabpLoaded;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;-><init>(Lcom/lge/uicc/framework/IccHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/IsimRecordLoader;Lcom/lge/uicc/framework/IsimRecordLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/IsimRecordLoader;
    .param p2, "x1"    # Lcom/lge/uicc/framework/IsimRecordLoader$1;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IsimRecordLoader$GbabpLoaded;-><init>(Lcom/lge/uicc/framework/IsimRecordLoader;)V

    return-void
.end method


# virtual methods
.method onLoadCompleted(Ljava/lang/Object;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 212
    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbabpLoaded;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const-string v6, "EF_GBABP loaded"

    invoke-virtual {v5, v6}, Lcom/lge/uicc/framework/IsimRecordLoader;->logd(Ljava/lang/String;)V

    .line 214
    check-cast p1, [B

    .end local p1    # "result":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [B

    .line 215
    .local v0, "data":[B
    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbabpLoaded;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lge/uicc/framework/IsimRecordLoader;->mIsimGbabp:Ljava/lang/String;

    .line 216
    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbabpLoaded;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EF_GBABP="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbabpLoaded;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    iget-object v7, v7, Lcom/lge/uicc/framework/IsimRecordLoader;->mIsimGbabp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/uicc/framework/IsimRecordLoader;->logp(Ljava/lang/String;)V

    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, "i":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    :try_start_0
    aget-byte v4, v0, v2

    .line 222
    .local v4, "l":I
    new-array v5, v4, [B

    sput-object v5, Lcom/lge/uicc/framework/IsimRecordLoader;->mRand:[B

    .line 223
    sget-object v5, Lcom/lge/uicc/framework/IsimRecordLoader;->mRand:[B

    const/4 v6, 0x0

    invoke-static {v0, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 225
    add-int/lit8 v2, v4, 0x1

    .line 226
    .end local v3    # "i":I
    .restart local v2    # "i":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v4, v0, v2

    .line 227
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    sput-object v5, Lcom/lge/uicc/framework/IsimRecordLoader;->mBtid:Ljava/lang/String;

    .line 229
    add-int v2, v3, v4

    .line 230
    .end local v3    # "i":I
    .restart local v2    # "i":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v4, v0, v2

    .line 231
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    sput-object v5, Lcom/lge/uicc/framework/IsimRecordLoader;->mKeyLifetime:Ljava/lang/String;

    .line 233
    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbabpLoaded;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISIM records (GBABP): mRand = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/lge/uicc/framework/IsimRecordLoader;->mRand:[B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/uicc/framework/IsimRecordLoader;->logp(Ljava/lang/String;)V

    .line 234
    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbabpLoaded;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISIM records (GBABP): mBtid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/lge/uicc/framework/IsimRecordLoader;->mBtid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/uicc/framework/IsimRecordLoader;->logp(Ljava/lang/String;)V

    .line 235
    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbabpLoaded;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISIM records (GBABP): mKeyLifetime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/lge/uicc/framework/IsimRecordLoader;->mKeyLifetime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/uicc/framework/IsimRecordLoader;->logp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v3    # "i":I
    .end local v4    # "l":I
    :goto_0
    return-void

    .line 236
    .restart local v3    # "i":I
    :catch_0
    move-exception v1

    move v2, v3

    .line 237
    .end local v3    # "i":I
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    iget-object v5, p0, Lcom/lge/uicc/framework/IsimRecordLoader$GbabpLoaded;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse GBABP contents: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/uicc/framework/IsimRecordLoader;->logd(Ljava/lang/String;)V

    .line 238
    sput-object v8, Lcom/lge/uicc/framework/IsimRecordLoader;->mRand:[B

    .line 239
    sput-object v8, Lcom/lge/uicc/framework/IsimRecordLoader;->mBtid:Ljava/lang/String;

    .line 240
    sput-object v8, Lcom/lge/uicc/framework/IsimRecordLoader;->mKeyLifetime:Ljava/lang/String;

    goto :goto_0
.end method
