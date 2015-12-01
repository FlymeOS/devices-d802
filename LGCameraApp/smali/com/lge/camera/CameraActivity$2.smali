.class Lcom/lge/camera/CameraActivity$2;
.super Landroid/telephony/PhoneStateListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/lge/camera/CameraActivity$2;->this$0:Lcom/lge/camera/CameraActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/lge/camera/CameraActivity$2;->this$0:Lcom/lge/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 761
    const-string v0, "CameraApp"

    const-string v1, "mMediator = null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraActivity$2;->this$0:Lcom/lge/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/lge/camera/CameraActivity;->doPhoneStateListenerAction(I)V

    goto :goto_0
.end method
