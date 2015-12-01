.class public Lcom/lge/camera/controller/camera/PIPCameraController;
.super Lcom/lge/camera/controller/PIPController;
.source "PIPCameraController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PIPController;-><init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;IIII)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    .param p2, "x0"    # I
    .param p3, "y0"    # I
    .param p4, "x1"    # I
    .param p5, "y1"    # I

    .prologue
    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/controller/PIPController;-><init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;IIII)V

    .line 21
    return-void
.end method
