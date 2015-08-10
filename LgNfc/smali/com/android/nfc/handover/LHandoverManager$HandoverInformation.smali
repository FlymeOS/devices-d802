.class Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;
.super Ljava/lang/Object;
.source "LHandoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/LHandoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandoverInformation"
.end annotation


# instance fields
.field mIsLLCPActicated:Z

.field mRequestRandomNumber:[B

.field mRequester:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

.field final synthetic this$0:Lcom/android/nfc/handover/LHandoverManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/LHandoverManager;)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->this$0:Lcom/android/nfc/handover/LHandoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->mIsLLCPActicated:Z

    .line 83
    sget-object v0, Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;->INIT:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->mRequester:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->mRequestRandomNumber:[B

    return-void
.end method
