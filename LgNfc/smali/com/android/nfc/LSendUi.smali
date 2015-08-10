.class public Lcom/android/nfc/LSendUi;
.super Lcom/android/nfc/SendUi;
.source "LSendUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/LSendUi$BitmapRecycleHandler;
    }
.end annotation


# static fields
.field static final MSG_RECYCLE_BITMAP:I


# instance fields
.field private mHandler:Lcom/android/nfc/LSendUi$BitmapRecycleHandler;

.field private mSendUiTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/SendUi$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/SendUi$Callback;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/SendUi;-><init>(Landroid/content/Context;Lcom/android/nfc/SendUi$Callback;)V

    .line 108
    new-instance v0, Lcom/android/nfc/LSendUi$BitmapRecycleHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/LSendUi$BitmapRecycleHandler;-><init>(Lcom/android/nfc/LSendUi;)V

    iput-object v0, p0, Lcom/android/nfc/LSendUi;->mHandler:Lcom/android/nfc/LSendUi$BitmapRecycleHandler;

    .line 22
    return-void
.end method


# virtual methods
.method dismiss()V
    .locals 4

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/nfc/LSendUi;->mHandler:Lcom/android/nfc/LSendUi$BitmapRecycleHandler;

    invoke-virtual {v1}, Lcom/android/nfc/LSendUi$BitmapRecycleHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 69
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 70
    iget-object v1, p0, Lcom/android/nfc/LSendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/android/nfc/LSendUi;->mHandler:Lcom/android/nfc/LSendUi$BitmapRecycleHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/nfc/LSendUi$BitmapRecycleHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    invoke-super {p0}, Lcom/android/nfc/SendUi;->dismiss()V

    .line 73
    return-void
.end method

.method public finish(I)V
    .locals 2
    .param p1, "finishMode"    # I

    .prologue
    .line 49
    iget v0, p0, Lcom/android/nfc/LSendUi;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/nfc/SendUi;->finish(I)V

    .line 63
    iget-object v0, p0, Lcom/android/nfc/LSendUi;->mScreenshotLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 64
    :goto_0
    return-void

    .line 55
    :pswitch_1
    invoke-super {p0, p1}, Lcom/android/nfc/SendUi;->finish(I)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected getBeamTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/nfc/LSendUi;->mSendUiTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    invoke-super {p0}, Lcom/android/nfc/SendUi;->getBeamTitle()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/LSendUi;->mSendUiTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method protected makeDefaultCaptureScreen()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/nfc/LSendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public showPreSend(Z)V
    .locals 2
    .param p1, "promptToNfcTap"    # Z

    .prologue
    .line 26
    iget v0, p0, Lcom/android/nfc/LSendUi;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 27
    invoke-super {p0, p1}, Lcom/android/nfc/SendUi;->showPreSend(Z)V

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-super {p0, p1}, Lcom/android/nfc/SendUi;->showPreSend(Z)V

    .line 33
    iget-object v0, p0, Lcom/android/nfc/LSendUi;->mScreenshotLayout:Landroid/view/View;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public showPreSend_addException(Ljava/lang/String;)Z
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    iget v2, p0, Lcom/android/nfc/LSendUi;->mState:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    .line 44
    :goto_0
    return v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/android/nfc/LSendUi;->mSendUiTitle:Ljava/lang/String;

    .line 43
    iget v2, p0, Lcom/android/nfc/LSendUi;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/nfc/LSendUi;->showPreSend(Z)V

    move v0, v1

    .line 44
    goto :goto_0
.end method
