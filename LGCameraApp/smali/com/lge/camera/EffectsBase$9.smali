.class Lcom/lge/camera/EffectsBase$9;
.super Ljava/lang/Object;
.source "EffectsBase.java"

# interfaces
.implements Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/EffectsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/EffectsBase;


# direct methods
.method constructor <init>(Lcom/lge/camera/EffectsBase;)V
    .locals 0

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunnerDone(I)V
    .locals 8
    .param p1, "result"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x3

    .line 1250
    iget-object v3, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    monitor-enter v3

    .line 1251
    :try_start_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRunnerDone:Graph runner done ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRunner "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v6, v6, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mOldRunner "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v6, v6, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget v6, v6, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const/4 v4, 0x6

    if-ne p1, v4, :cond_0

    .line 1259
    const-string v4, "CameraApp"

    const-string v5, "Error running filter graph!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object v4, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v5, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v5, v5, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-nez v5, :cond_6

    :goto_0
    # invokes: Lcom/lge/camera/EffectsBase;->raiseError(Ljava/lang/Exception;)V
    invoke-static {v4, v2}, Lcom/lge/camera/EffectsBase;->access$500(Lcom/lge/camera/EffectsBase;Ljava/lang/Exception;)V

    .line 1262
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v2, v2, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v2, :cond_3

    .line 1264
    const-string v2, "CameraApp"

    const-string v4, "Tearing down old graph."

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v2, v2, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v2}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 1266
    .local v1, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->isActive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1268
    :try_start_1
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->activate()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1275
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v2, v2, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    iget-object v4, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v4, v4, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v4}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 1276
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1277
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    .line 1279
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 1281
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-virtual {v2, v4, v5}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    .line 1283
    .end local v1    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    if-eq v2, v7, :cond_4

    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    .line 1286
    :cond_4
    const-string v2, "CameraApp"

    const-string v4, "Previous effect halted, starting new effect."

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/lge/camera/EffectsBase;->tryEnable3ALocks(Z)Z

    .line 1289
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v2, v2, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v2, v2, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->isRunning()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1290
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v2, v2, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->run()V

    .line 1291
    const-string v2, "CameraApp"

    const-string v4, "mRunner.run() is called in onRunnerDone callback"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    :cond_5
    :goto_1
    monitor-exit v3

    .line 1304
    :goto_2
    return-void

    .line 1260
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v2, v2, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getError()Ljava/lang/Exception;

    move-result-object v2

    goto/16 :goto_0

    .line 1270
    .restart local v1    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    :catch_0
    move-exception v0

    .line 1271
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v4, "Cannot activate glEnv"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    monitor-exit v3

    goto :goto_2

    .line 1303
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1293
    :cond_7
    :try_start_3
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_5

    .line 1295
    const-string v2, "CameraApp"

    const-string v4, "Runner halted, restoring direct preview"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/lge/camera/EffectsBase;->tryEnable3ALocks(Z)Z

    .line 1297
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    const/16 v4, 0x66

    if-eq v2, v4, :cond_5

    .line 1298
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$9;->this$0:Lcom/lge/camera/EffectsBase;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
