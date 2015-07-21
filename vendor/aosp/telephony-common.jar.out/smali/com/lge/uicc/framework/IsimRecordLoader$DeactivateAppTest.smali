.class Lcom/lge/uicc/framework/IsimRecordLoader$DeactivateAppTest;
.super Lcom/lge/uicc/framework/IsimRecordLoader$IsimTest;
.source "IsimRecordLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IsimRecordLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeactivateAppTest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IsimRecordLoader;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/IsimRecordLoader;)V
    .locals 1

    .prologue
    .line 364
    iput-object p1, p0, Lcom/lge/uicc/framework/IsimRecordLoader$DeactivateAppTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/uicc/framework/IsimRecordLoader$IsimTest;-><init>(Lcom/lge/uicc/framework/IsimRecordLoader;Lcom/lge/uicc/framework/IsimRecordLoader$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/IsimRecordLoader;Lcom/lge/uicc/framework/IsimRecordLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/IsimRecordLoader;
    .param p2, "x1"    # Lcom/lge/uicc/framework/IsimRecordLoader$1;

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IsimRecordLoader$DeactivateAppTest;-><init>(Lcom/lge/uicc/framework/IsimRecordLoader;)V

    return-void
.end method


# virtual methods
.method getTestName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    const-string v0, "DEACTIVATE_APP"

    return-object v0
.end method

.method onTestCompleted(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/lge/uicc/framework/IsimRecordLoader$DeactivateAppTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    const-string v1, "Complete ISIM De-seletion"

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/IsimRecordLoader;->logd(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method onTestException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/lge/uicc/framework/IsimRecordLoader$DeactivateAppTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception ISIM De-select Application : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/uicc/framework/IsimRecordLoader;->loge(Ljava/lang/String;)V

    .line 373
    return-void
.end method
