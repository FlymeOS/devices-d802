.class Lcom/lge/uicc/framework/IccHandlerATT$OcsglLoaded;
.super Lcom/lge/uicc/framework/IccHandler$RecordLoaded;
.source "IccHandlerATT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccHandlerATT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OcsglLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IccHandlerATT;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/IccHandlerATT;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lge/uicc/framework/IccHandlerATT$OcsglLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerATT;

    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandler$RecordLoaded;-><init>(Lcom/lge/uicc/framework/IccHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/IccHandlerATT;Lcom/lge/uicc/framework/IccHandlerATT$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/IccHandlerATT;
    .param p2, "x1"    # Lcom/lge/uicc/framework/IccHandlerATT$1;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccHandlerATT$OcsglLoaded;-><init>(Lcom/lge/uicc/framework/IccHandlerATT;)V

    return-void
.end method


# virtual methods
.method onLoadCompleted(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 79
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 81
    .local v1, "ocsgl_array_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v2, p0, Lcom/lge/uicc/framework/IccHandlerATT$OcsglLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerATT;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_OCSGL Record Number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/uicc/framework/IccHandlerATT;->logd(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 83
    iget-object v3, p0, Lcom/lge/uicc/framework/IccHandlerATT$OcsglLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerATT;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_OCSGL["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/lge/uicc/framework/IccHandlerATT;->logp(Ljava/lang/String;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method onLoadException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/uicc/framework/IccHandlerATT$OcsglLoaded;->this$0:Lcom/lge/uicc/framework/IccHandlerATT;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception querying OCSGL, Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/IccHandlerATT;->logd(Ljava/lang/String;)V

    .line 88
    return-void
.end method
