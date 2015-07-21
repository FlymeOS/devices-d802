.class Lcom/lge/app/floating/FloatableActivity$1;
.super Ljava/lang/Object;
.source "FloatableActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/FloatableActivity;->handleAttachToFloatingWindow(Lcom/lge/app/floating/FloatingWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/FloatableActivity;


# direct methods
.method constructor <init>(Lcom/lge/app/floating/FloatableActivity;)V
    .locals 0

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/lge/app/floating/FloatableActivity$1;->this$0:Lcom/lge/app/floating/FloatableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/lge/app/floating/FloatableActivity$1;->this$0:Lcom/lge/app/floating/FloatableActivity;

    iget-object v0, v0, Lcom/lge/app/floating/FloatableActivity;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getTitleViewInterface()Lcom/lge/app/floating/ITitleView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/app/floating/ITitleView;->activateOpacitySlider(Z)V

    .line 1374
    return-void
.end method
