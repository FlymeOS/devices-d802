.class Lcom/lge/uicc/framework/ImsiHandler$ImsipLoaded;
.super Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
.source "ImsiHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/ImsiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsipLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/ImsiHandler;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/ImsiHandler;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsipLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;-><init>(Lcom/lge/uicc/framework/IccHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/ImsiHandler;Lcom/lge/uicc/framework/ImsiHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/ImsiHandler;
    .param p2, "x1"    # Lcom/lge/uicc/framework/ImsiHandler$1;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/ImsiHandler$ImsipLoaded;-><init>(Lcom/lge/uicc/framework/ImsiHandler;)V

    return-void
.end method


# virtual methods
.method onLoadCompleted(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/lge/uicc/framework/ImsiHandler$ImsipLoaded;->this$0:Lcom/lge/uicc/framework/ImsiHandler;

    const-string v2, "EF_IMSIP loaded"

    invoke-virtual {v1, v2}, Lcom/lge/uicc/framework/ImsiHandler;->logd(Ljava/lang/String;)V

    .line 151
    check-cast p1, [B

    .end local p1    # "result":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [B

    .line 152
    .local v0, "data":[B
    const-string v1, "skt.imsi_p"

    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->bcdToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    const-string v1, "card_operator"

    const-string v2, "SKT"

    invoke-static {v1, v2}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    return-void
.end method
