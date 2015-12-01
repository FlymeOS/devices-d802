.class Lcom/lge/camera/components/BarView$1;
.super Ljava/lang/Object;
.source "BarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/components/BarView;->updateBar(IZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/BarView;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/BarView;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/lge/camera/components/BarView$1;->this$0:Lcom/lge/camera/components/BarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lge/camera/components/BarView$1;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v0, v0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v0, p0}, Lcom/lge/camera/components/BarAction;->removePostRunnable(Ljava/lang/Runnable;)V

    .line 220
    iget-object v0, p0, Lcom/lge/camera/components/BarView$1;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v1, p0, Lcom/lge/camera/components/BarView$1;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v1}, Lcom/lge/camera/components/BarView;->getCursorValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/BarView;->setCursor(I)V

    .line 221
    return-void
.end method
