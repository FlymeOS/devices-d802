.class Lcom/lge/uicc/framework/IccHandlerLGU$1;
.super Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
.source "IccHandlerLGU.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/framework/IccHandlerLGU;->fetchRecords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IccHandlerLGU;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/IccHandlerLGU;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/lge/uicc/framework/IccHandlerLGU$1;->this$0:Lcom/lge/uicc/framework/IccHandlerLGU;

    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;-><init>(Lcom/lge/uicc/framework/IccHandler;)V

    return-void
.end method


# virtual methods
.method onLoadCompleted(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 162
    iget-object v3, p0, Lcom/lge/uicc/framework/IccHandlerLGU$1;->this$0:Lcom/lge/uicc/framework/IccHandlerLGU;

    const-string v4, "EF_CSIM_MDN loaded"

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IccHandlerLGU;->logd(Ljava/lang/String;)V

    .line 163
    check-cast p1, [B

    .end local p1    # "result":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [B

    .line 164
    .local v0, "data":[B
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    and-int/lit8 v2, v3, 0xf

    .line 165
    .local v2, "mdnDigitsNum":I
    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "mdn":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/uicc/framework/IccHandlerLGU$1;->this$0:Lcom/lge/uicc/framework/IccHandlerLGU;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSIM MDN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/uicc/framework/IccHandlerLGU;->logp(Ljava/lang/String;)V

    .line 167
    const-string v3, "mdn"

    invoke-static {v3, v1}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    return-void
.end method
