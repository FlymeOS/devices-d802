.class Lcom/lge/uicc/framework/ImsiHandler$MsisdnLoaded;
.super Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
.source "ImsiHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/ImsiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsisdnLoaded"
.end annotation


# static fields
.field private static final MSISDN_NONALPHA_LEN:I = 0xe

.field private static final MSISDN_NUMBER_LEN:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/ImsiHandler;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/ImsiHandler;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/lge/uicc/framework/ImsiHandler$MsisdnLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;-><init>(Lcom/lge/uicc/framework/IccHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/ImsiHandler;Lcom/lge/uicc/framework/ImsiHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/ImsiHandler;
    .param p2, "x1"    # Lcom/lge/uicc/framework/ImsiHandler$1;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/ImsiHandler$MsisdnLoaded;-><init>(Lcom/lge/uicc/framework/ImsiHandler;)V

    return-void
.end method


# virtual methods
.method onLoadCompleted(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 162
    iget-object v4, p0, Lcom/lge/uicc/framework/ImsiHandler$MsisdnLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    const-string v5, "EF_MSISDN loaded"

    invoke-virtual {v4, v5}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 163
    check-cast p1, [B

    .end local p1    # "result":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [B

    .line 164
    .local v0, "data":[B
    iget-object v4, p0, Lcom/lge/uicc/framework/ImsiHandler$MsisdnLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSISDN-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/uicc/framework/ImsiHandler;->logp(Ljava/lang/String;)V

    .line 166
    array-length v4, v0

    add-int/lit8 v4, v4, -0xe

    add-int/lit8 v4, v4, 0x2

    array-length v5, v0

    add-int/lit8 v5, v5, -0x3

    invoke-static {v0, v4, v5}, Lcom/lge/uicc/EfUtils;->subarray([BII)[B

    move-result-object v2

    .line 167
    .local v2, "msisdnNumber":[B
    if-nez v2, :cond_0

    .line 168
    iget-object v4, p0, Lcom/lge/uicc/framework/ImsiHandler$MsisdnLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    const-string v5, "msisdnNumber is Invalid"

    invoke-virtual {v4, v5}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v4, p0, Lcom/lge/uicc/framework/ImsiHandler$MsisdnLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSISDN Number-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/uicc/framework/ImsiHandler;->logp(Ljava/lang/String;)V

    .line 173
    const/4 v3, 0x0

    .line 174
    .local v3, "sumNumber":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v4, 0xa

    if-ge v1, v4, :cond_1

    .line 175
    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    :cond_1
    if-eqz v3, :cond_2

    const/16 v4, 0x9f6

    if-ne v3, v4, :cond_3

    .line 178
    :cond_2
    const-string v4, "card_provisioned"

    const-string v5, "no"

    invoke-static {v4, v5}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_3
    const-string v4, "card_provisioned"

    const-string v5, "yes"

    invoke-static {v4, v5}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
