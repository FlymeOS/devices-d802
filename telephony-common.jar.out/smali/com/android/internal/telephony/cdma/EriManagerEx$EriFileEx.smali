.class Lcom/android/internal/telephony/cdma/EriManagerEx$EriFileEx;
.super Lcom/android/internal/telephony/cdma/EriManager$EriFile;
.source "EriManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/EriManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EriFileEx"
.end annotation


# instance fields
.field public mCallPrmptTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/EriManagerEx$EriPrmpt;",
            ">;"
        }
    .end annotation
.end field

.field public mEriFileCrc:I

.field public mIconImageType:I

.field public mIconImgTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/EriManagerEx$EriImg;",
            ">;"
        }
    .end annotation
.end field

.field public mNumberOfIconImages:I

.field public mReservedPadBits:I

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/EriManagerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/EriManagerEx;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManagerEx$EriFileEx;->this$0:Lcom/android/internal/telephony/cdma/EriManagerEx;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    .line 32
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/EriManagerEx$EriFileEx;->mCallPrmptTable:Ljava/util/HashMap;

    .line 33
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/EriManagerEx$EriFileEx;->mIconImgTable:Ljava/util/HashMap;

    .line 42
    const-string v0, "vzw_eri"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManagerEx$EriFileEx;->mIconImgTable:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManagerEx$EriFileEx;->mCallPrmptTable:Ljava/util/HashMap;

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public getCallPrmptTable()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManagerEx$EriFileEx;->mCallPrmptTable:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIconImgTable()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManagerEx$EriFileEx;->mIconImgTable:Ljava/util/HashMap;

    return-object v0
.end method
