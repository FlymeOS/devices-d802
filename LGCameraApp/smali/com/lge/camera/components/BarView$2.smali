.class Lcom/lge/camera/components/BarView$2;
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
    .line 231
    iput-object p1, p0, Lcom/lge/camera/components/BarView$2;->this$0:Lcom/lge/camera/components/BarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lge/camera/components/BarView$2;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v0, v0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v0, p0}, Lcom/lge/camera/components/BarAction;->removePostRunnable(Ljava/lang/Runnable;)V

    .line 234
    iget-object v0, p0, Lcom/lge/camera/components/BarView$2;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v1, p0, Lcom/lge/camera/components/BarView$2;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v1, v1, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/camera/components/BarView$2;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v2}, Lcom/lge/camera/components/BarView;->getCursorValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/BarView;->setBarSettingValue(Ljava/lang/String;I)V

    .line 236
    iget-object v0, p0, Lcom/lge/camera/components/BarView$2;->this$0:Lcom/lge/camera/components/BarView;

    iget v0, v0, Lcom/lge/camera/components/BarView;->mBarType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/lge/camera/components/BarView$2;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v0, v0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v1, p0, Lcom/lge/camera/components/BarView$2;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v1, v1, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->doCommandNoneParameter(Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/BarView$2;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v0, v0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v1, p0, Lcom/lge/camera/components/BarView$2;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v1, v1, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;)V

    goto :goto_0
.end method
