.class Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;
.super Ljava/lang/Object;
.source "LgeProfileParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MatchedProfile"
.end annotation


# instance fields
.field public mBestMatchedProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

.field public mCandidateProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

.field public mDefaultProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

.field final synthetic this$0:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->this$0:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;
    .param p2, "x1"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$1;

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;-><init>(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;)V

    return-void
.end method
