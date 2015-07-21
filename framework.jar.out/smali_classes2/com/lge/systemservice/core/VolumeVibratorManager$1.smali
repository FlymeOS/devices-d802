.class Lcom/lge/systemservice/core/VolumeVibratorManager$1;
.super Ljava/lang/Object;
.source "VolumeVibratorManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/VolumeVibratorManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/VolumeVibratorManager;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lge/systemservice/core/VolumeVibratorManager$1;->this$0:Lcom/lge/systemservice/core/VolumeVibratorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/systemservice/core/VolumeVibratorManager$1;->this$0:Lcom/lge/systemservice/core/VolumeVibratorManager;

    const/4 v1, 0x0

    # setter for: Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/VolumeVibratorManager;->access$002(Lcom/lge/systemservice/core/VolumeVibratorManager;Lcom/lge/systemservice/core/IVolumeVibratorManager;)Lcom/lge/systemservice/core/IVolumeVibratorManager;

    return-void
.end method
