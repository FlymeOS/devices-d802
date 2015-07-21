.class Lcom/lge/systemservice/service/SmartCoverService$4;
.super Landroid/os/UEventObserver;
.source "SmartCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/service/SmartCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/service/SmartCoverService;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/service/SmartCoverService;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/lge/systemservice/service/SmartCoverService$4;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 381
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 382
    .local v0, "newState":I
    move v1, v0

    .line 383
    .local v1, "newType":I
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on Sub Cover Uevent : state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") type("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService$4;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # invokes: Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverType(I)V
    invoke-static {v2, v1}, Lcom/lge/systemservice/service/SmartCoverService;->access$500(Lcom/lge/systemservice/service/SmartCoverService;I)V

    .line 386
    iget-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService$4;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # invokes: Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverEvent(I)V
    invoke-static {v2, v0}, Lcom/lge/systemservice/service/SmartCoverService;->access$600(Lcom/lge/systemservice/service/SmartCoverService;I)V

    .line 387
    return-void
.end method
