.class Lcom/lge/camera/command/setting/SetVideoImageSize$2;
.super Ljava/lang/Object;
.source "SetVideoImageSize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetVideoImageSize;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

.field final synthetic val$lgParameters:Lcom/lge/hardware/LGCamera$LGParameters;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetVideoImageSize;Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iput-object p2, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$2;->val$lgParameters:Lcom/lge/hardware/LGCamera$LGParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$2;->val$lgParameters:Lcom/lge/hardware/LGCamera$LGParameters;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 179
    return-void
.end method
