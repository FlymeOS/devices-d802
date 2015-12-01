.class Lcom/lge/camera/Mediator$9;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/Mediator;->showDialogPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/Mediator;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/lge/camera/Mediator;I)V
    .locals 0

    .prologue
    .line 3751
    iput-object p1, p0, Lcom/lge/camera/Mediator$9;->this$0:Lcom/lge/camera/Mediator;

    iput p2, p0, Lcom/lge/camera/Mediator$9;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3753
    iget-object v0, p0, Lcom/lge/camera/Mediator$9;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 3754
    iget-object v0, p0, Lcom/lge/camera/Mediator$9;->this$0:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    iget v1, p0, Lcom/lge/camera/Mediator$9;->val$dialogId:I

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(I)V

    .line 3755
    return-void
.end method
