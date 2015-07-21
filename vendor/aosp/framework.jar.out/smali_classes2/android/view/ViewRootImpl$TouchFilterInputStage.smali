.class final Landroid/view/ViewRootImpl$TouchFilterInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TouchFilterInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;

.field private touchFilterInputStageHelper:Landroid/view/TouchFilterInputStageHelper;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 4
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .prologue
    .line 3914
    iput-object p1, p0, Landroid/view/ViewRootImpl$TouchFilterInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 3915
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 3916
    new-instance v0, Landroid/view/TouchFilterInputStageHelper;

    iget-object v1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, p1, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    iget-object v3, p1, Landroid/view/ViewRootImpl;->savedEventForSplit:Landroid/view/MotionEvent;

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/view/TouchFilterInputStageHelper;-><init>(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/ViewRootImpl$WindowInputEventReceiver;Landroid/view/MotionEvent;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$TouchFilterInputStage;->touchFilterInputStageHelper:Landroid/view/TouchFilterInputStageHelper;

    .line 3918
    return-void
.end method


# virtual methods
.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3922
    iget-object v3, p0, Landroid/view/ViewRootImpl$TouchFilterInputStage;->touchFilterInputStageHelper:Landroid/view/TouchFilterInputStageHelper;

    if-eqz v3, :cond_0

    .line 3923
    iget-object v3, p0, Landroid/view/ViewRootImpl$TouchFilterInputStage;->touchFilterInputStageHelper:Landroid/view/TouchFilterInputStageHelper;

    invoke-virtual {v3}, Landroid/view/TouchFilterInputStageHelper;->initializeEventForTouchFilter()V

    .line 3925
    :cond_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v3, v3, Landroid/view/MotionEvent;

    if-eqz v3, :cond_2

    .line 3926
    const/4 v2, 0x0

    .line 3928
    .local v2, "retVal":I
    :try_start_0
    iget-object v3, p0, Landroid/view/ViewRootImpl$TouchFilterInputStage;->touchFilterInputStageHelper:Landroid/view/TouchFilterInputStageHelper;

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v3, v4}, Landroid/view/TouchFilterInputStageHelper;->onProcessInner(Landroid/view/InputEvent;)I

    move-result v2

    .line 3929
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 3930
    iget-object v3, p0, Landroid/view/ViewRootImpl$TouchFilterInputStage;->touchFilterInputStageHelper:Landroid/view/TouchFilterInputStageHelper;

    invoke-virtual {v3}, Landroid/view/TouchFilterInputStageHelper;->getNewEvent()Landroid/view/MotionEvent;

    move-result-object v1

    .line 3931
    .local v1, "newEvent":Landroid/view/MotionEvent;
    if-eqz v1, :cond_1

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    if-eq v1, v3, :cond_1

    .line 3932
    iput-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 3933
    iget-object v3, p0, Landroid/view/ViewRootImpl$TouchFilterInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, p0, Landroid/view/ViewRootImpl$TouchFilterInputStage;->touchFilterInputStageHelper:Landroid/view/TouchFilterInputStageHelper;

    invoke-virtual {v4}, Landroid/view/TouchFilterInputStageHelper;->getSavedEventForSplit()Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, v3, Landroid/view/ViewRootImpl;->savedEventForSplit:Landroid/view/MotionEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3941
    .end local v1    # "newEvent":Landroid/view/MotionEvent;
    .end local v2    # "retVal":I
    :cond_1
    :goto_0
    return v2

    .line 3936
    .restart local v2    # "retVal":I
    :catch_0
    move-exception v0

    .line 3937
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ViewRootImpl"

    const-string v4, "TouchFilter exception !!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3941
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "retVal":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
