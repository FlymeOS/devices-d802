.class Lcom/android/server/display/DisplayPowerControllerEx$1;
.super Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;
.source "DisplayPowerControllerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerControllerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerControllerEx;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerControllerEx;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerEx$1;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    invoke-direct {p0}, Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 3
    .param p1, "coverState"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$1;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerControllerEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$1;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/display/DisplayPowerControllerEx;->mCoverOpened:Z
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayPowerControllerEx;->access$002(Lcom/android/server/display/DisplayPowerControllerEx;Z)Z

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$1;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    # invokes: Lcom/android/server/display/DisplayPowerControllerEx;->updateCoverStateLocked()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerEx;->access$100(Lcom/android/server/display/DisplayPowerControllerEx;)V

    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$1;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/DisplayPowerControllerEx;->mCoverOpened:Z
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayPowerControllerEx;->access$002(Lcom/android/server/display/DisplayPowerControllerEx;Z)Z

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTypeChanged(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$1;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerControllerEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$1;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    # getter for: Lcom/android/server/display/DisplayPowerControllerEx;->mCoverType:I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerEx;->access$200(Lcom/android/server/display/DisplayPowerControllerEx;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$1;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    # setter for: Lcom/android/server/display/DisplayPowerControllerEx;->mCoverType:I
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayPowerControllerEx;->access$202(Lcom/android/server/display/DisplayPowerControllerEx;I)I

    .line 160
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$1;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    # invokes: Lcom/android/server/display/DisplayPowerControllerEx;->updateCoverStateLocked()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerEx;->access$100(Lcom/android/server/display/DisplayPowerControllerEx;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$1;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/DisplayPowerControllerEx;->mQuickWindowSize:Landroid/graphics/Rect;
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayPowerControllerEx;->access$302(Lcom/android/server/display/DisplayPowerControllerEx;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 163
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$1;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    # invokes: Lcom/android/server/display/DisplayPowerControllerEx;->LGQuickWindowSetting()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerEx;->access$400(Lcom/android/server/display/DisplayPowerControllerEx;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$1;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    # invokes: Lcom/android/server/display/DisplayPowerControllerEx;->setScreenOffAnimationDuration()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerEx;->access$500(Lcom/android/server/display/DisplayPowerControllerEx;)V

    .line 166
    :cond_0
    monitor-exit v1

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
