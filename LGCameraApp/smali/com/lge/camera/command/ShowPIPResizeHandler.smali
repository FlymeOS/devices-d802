.class public Lcom/lge/camera/command/ShowPIPResizeHandler;
.super Lcom/lge/camera/command/Command;
.source "ShowPIPResizeHandler.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 18
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 22
    const-string v0, "CameraApp"

    const-string v1, "ShowDualRecSubWindowHandler executed"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/ShowPIPResizeHandler;->execute(Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 28
    .local v0, "v1":F
    const-string v1, "CameraApp"

    const-string v2, "ShowDualRecSubWindowHandler executed"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/command/ShowPIPResizeHandler;->execute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public execute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 34
    .local v0, "x":F
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "arg2":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 36
    .local v1, "y":F
    const-string v2, "CameraApp"

    const-string v3, "ShowDualRecSubWindowHandler executed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/lge/camera/command/ShowPIPResizeHandler;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0, v1}, Lcom/lge/camera/ControllerFunction;->showSubWindowResizeHandler(FF)V

    .line 38
    return-void
.end method
