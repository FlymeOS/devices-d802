.class Lcom/android/nfc/LNfcIndicatorIcon$2;
.super Ljava/lang/Object;
.source "LNfcIndicatorIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/LNfcIndicatorIcon;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcIndicatorIcon;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcIndicatorIcon;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/nfc/LNfcIndicatorIcon$2;->this$0:Lcom/android/nfc/LNfcIndicatorIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 73
    iget-object v0, p0, Lcom/android/nfc/LNfcIndicatorIcon$2;->this$0:Lcom/android/nfc/LNfcIndicatorIcon;

    new-instance v1, Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;

    iget-object v2, p0, Lcom/android/nfc/LNfcIndicatorIcon$2;->this$0:Lcom/android/nfc/LNfcIndicatorIcon;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;-><init>(Lcom/android/nfc/LNfcIndicatorIcon;Lcom/android/nfc/LNfcIndicatorIcon$1;)V

    # setter for: Lcom/android/nfc/LNfcIndicatorIcon;->mHandler:Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;
    invoke-static {v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon;->access$002(Lcom/android/nfc/LNfcIndicatorIcon;Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;)Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;

    .line 74
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 75
    return-void
.end method
