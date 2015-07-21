.class Lcom/lge/uicc/framework/IccHandlerCommon$EfCsimUimIdLoaded;
.super Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
.source "IccHandlerCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccHandlerCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimUimIdLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IccHandlerCommon;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/IccHandlerCommon;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lge/uicc/framework/IccHandlerCommon$EfCsimUimIdLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerCommon;

    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;-><init>(Lcom/lge/uicc/framework/IccHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/IccHandlerCommon;Lcom/lge/uicc/framework/IccHandlerCommon$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/IccHandlerCommon;
    .param p2, "x1"    # Lcom/lge/uicc/framework/IccHandlerCommon$1;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandlerCommon$EfCsimUimIdLoaded;-><init>(Lcom/lge/uicc/framework/IccHandlerCommon;)V

    return-void
.end method


# virtual methods
.method public onLoadCompleted(Ljava/lang/Object;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 119
    check-cast p1, [B

    .end local p1    # "result":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [B

    .line 120
    .local v0, "data":[B
    iget-object v5, p0, Lcom/lge/uicc/framework/IccHandlerCommon$EfCsimUimIdLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerCommon;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EF_CSIM_RUIMID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/uicc/framework/IccHandlerCommon;->logd(Ljava/lang/String;)V

    .line 122
    const/4 v5, 0x0

    aget-byte v5, v0, v5

    and-int/lit8 v4, v5, 0xf

    .line 124
    .local v4, "uimIdLen":I
    new-array v3, v4, [B

    .line 125
    .local v3, "uimIdBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 126
    sub-int v5, v4, v1

    aget-byte v5, v0, v5

    aput-byte v5, v3, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {v3}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "uimId":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/uicc/framework/IccHandlerCommon$EfCsimUimIdLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerCommon;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set ril.cdma.phone.id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/uicc/framework/IccHandlerCommon;->logd(Ljava/lang/String;)V

    .line 131
    const-string v5, "ril.cdma.phone.id"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method onLoadException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lge/uicc/framework/IccHandlerCommon$EfCsimUimIdLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerCommon;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception querying UIM ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/IccHandlerCommon;->logd(Ljava/lang/String;)V

    .line 136
    return-void
.end method
