.class Lcom/lge/app/floating/FloatingWindow$2;
.super Ljava/lang/Object;
.source "FloatingWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/FloatingWindow;->handleImeVisibilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/FloatingWindow;


# direct methods
.method constructor <init>(Lcom/lge/app/floating/FloatingWindow;)V
    .locals 0

    .prologue
    .line 2479
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow$2;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2482
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$2;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0, v1, v1}, Lcom/lge/app/floating/FloatingWindow;->setLayoutLimit(ZZ)V

    .line 2483
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$2;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$2;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindow;->requestFocusAndShowKeyboard(Landroid/view/View;)V

    .line 2487
    return-void
.end method
