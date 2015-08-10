.class Lcom/android/nfc/MDMNfcServiceAdapter$1;
.super Ljava/lang/Object;
.source "MDMNfcServiceAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/MDMNfcServiceAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/MDMNfcServiceAdapter;


# direct methods
.method constructor <init>(Lcom/android/nfc/MDMNfcServiceAdapter;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/nfc/MDMNfcServiceAdapter$1;->this$0:Lcom/android/nfc/MDMNfcServiceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 45
    new-instance v0, Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;

    iget-object v1, p0, Lcom/android/nfc/MDMNfcServiceAdapter$1;->this$0:Lcom/android/nfc/MDMNfcServiceAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;-><init>(Lcom/android/nfc/MDMNfcServiceAdapter;Lcom/android/nfc/MDMNfcServiceAdapter$1;)V

    # setter for: Lcom/android/nfc/MDMNfcServiceAdapter;->mHandler:Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;
    invoke-static {v0}, Lcom/android/nfc/MDMNfcServiceAdapter;->access$002(Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;)Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;

    .line 46
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 47
    return-void
.end method
