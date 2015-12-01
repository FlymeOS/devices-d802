.class Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$1;
.super Ljava/util/TimerTask;
.source "PanoramaTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->start(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;


# direct methods
.method constructor <init>(Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$1;->this$0:Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$1;->this$0:Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;

    # getter for: Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mListner:Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;
    invoke-static {v0}, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->access$000(Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;)Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;->onTimeout()V

    .line 34
    iget-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$1;->this$0:Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;

    # invokes: Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->taskCancel()V
    invoke-static {v0}, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->access$100(Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;)V

    .line 35
    return-void
.end method
