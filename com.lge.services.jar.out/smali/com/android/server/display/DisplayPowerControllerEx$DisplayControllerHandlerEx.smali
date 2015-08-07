.class public Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;
.super Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
.source "DisplayPowerControllerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerControllerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DisplayControllerHandlerEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerControllerEx;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerControllerEx;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    .line 283
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 287
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 293
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->handleMessage(Landroid/os/Message;)V

    .line 294
    return-void

    .line 289
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 290
    .local v0, "currentBrightness":I
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    # invokes: Lcom/android/server/display/DisplayPowerControllerEx;->animateRecoverScreenBrightness(I)V
    invoke-static {v1, v0}, Lcom/android/server/display/DisplayPowerControllerEx;->access$600(Lcom/android/server/display/DisplayPowerControllerEx;I)V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
