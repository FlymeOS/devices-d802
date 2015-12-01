.class Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
.super Ljava/lang/Object;
.source "QuickButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/QuickButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickButtonType"
.end annotation


# instance fields
.field private mButton:Lcom/lge/camera/components/RotateImageButton;

.field private mEnable:Z

.field private mNeedDefault:Z

.field final synthetic this$0:Lcom/lge/camera/controller/QuickButtonController;


# direct methods
.method public constructor <init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V
    .locals 1
    .param p2, "button"    # Lcom/lge/camera/components/RotateImageButton;
    .param p3, "enable"    # Z

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mButton:Lcom/lge/camera/components/RotateImageButton;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mEnable:Z

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mNeedDefault:Z

    .line 67
    iput-object p2, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mButton:Lcom/lge/camera/components/RotateImageButton;

    .line 68
    iput-boolean p3, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mEnable:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;ZZ)V
    .locals 1
    .param p2, "button"    # Lcom/lge/camera/components/RotateImageButton;
    .param p3, "enable"    # Z
    .param p4, "needDefault"    # Z

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mButton:Lcom/lge/camera/components/RotateImageButton;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mEnable:Z

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mNeedDefault:Z

    .line 72
    iput-object p2, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mButton:Lcom/lge/camera/components/RotateImageButton;

    .line 73
    iput-boolean p3, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mEnable:Z

    .line 74
    iput-boolean p4, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mNeedDefault:Z

    .line 75
    return-void
.end method


# virtual methods
.method public getButton()Lcom/lge/camera/components/RotateImageButton;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mButton:Lcom/lge/camera/components/RotateImageButton;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mEnable:Z

    return v0
.end method

.method public isNeedDefault()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mNeedDefault:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mEnable:Z

    .line 83
    return-void
.end method

.method public setNeedDefault(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mNeedDefault:Z

    .line 91
    return-void
.end method
