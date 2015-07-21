.class Lcom/lge/uicc/framework/IsimRecordLoader$SelectAppTest;
.super Lcom/lge/uicc/framework/IsimRecordLoader$IsimTest;
.source "IsimRecordLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IsimRecordLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAppTest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IsimRecordLoader;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/IsimRecordLoader;)V
    .locals 1

    .prologue
    .line 245
    iput-object p1, p0, Lcom/lge/uicc/framework/IsimRecordLoader$SelectAppTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/uicc/framework/IsimRecordLoader$IsimTest;-><init>(Lcom/lge/uicc/framework/IsimRecordLoader;Lcom/lge/uicc/framework/IsimRecordLoader$1;)V

    return-void
.end method


# virtual methods
.method getTestName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    const-string v0, "SELECT_APPLICATION"

    return-object v0
.end method

.method onTestCompleted(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 250
    check-cast p1, [I

    .end local p1    # "result":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [I

    .line 252
    .local v0, "int_session_id":[I
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 253
    iget-object v1, p0, Lcom/lge/uicc/framework/IsimRecordLoader$SelectAppTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on Getting ISIM AID with length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/uicc/framework/IsimRecordLoader;->loge(Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/lge/uicc/framework/IsimRecordLoader$SelectAppTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "int_session_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/uicc/framework/IsimRecordLoader;->logd(Ljava/lang/String;)V

    .line 256
    aget v1, v0, v4

    sput v1, Lcom/lge/uicc/framework/IsimRecordLoader;->isim_session_id:I

    goto :goto_0
.end method

.method onTestException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lge/uicc/framework/IsimRecordLoader$SelectAppTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception ISIM Select Application : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/IsimRecordLoader;->loge(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/lge/uicc/framework/IsimRecordLoader$SelectAppTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const-string v1, "[ISIM] Send Intent - IPUtils.INTENT_GBA_INIT"

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/IsimRecordLoader;->logd(Ljava/lang/String;)V

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.movial.gba_initialized"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lge/uicc/framework/IccTools;->broadcastIntent(Landroid/content/Intent;)V

    .line 274
    return-void
.end method
