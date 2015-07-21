.class public Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;
.super Ljava/lang/Object;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncomingExtendedCallstate"
.end annotation


# instance fields
.field public cnapCallingPartyNumber:Ljava/lang/String;

.field public cnapDisplay:Ljava/lang/String;

.field public cnapExtendedDisplay:Ljava/lang/String;

.field public isHDVoice:Z

.field public isVowifi:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput-object v0, p0, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->cnapDisplay:Ljava/lang/String;

    .line 705
    iput-object v0, p0, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->cnapCallingPartyNumber:Ljava/lang/String;

    .line 706
    iput-object v0, p0, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->cnapExtendedDisplay:Ljava/lang/String;

    .line 707
    iput-boolean v1, p0, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->isVowifi:Z

    .line 708
    iput-boolean v1, p0, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->isHDVoice:Z

    .line 710
    return-void
.end method


# virtual methods
.method public initializeIncomingExtendedCallstate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 713
    iput-object v0, p0, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->cnapDisplay:Ljava/lang/String;

    .line 714
    iput-object v0, p0, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->cnapCallingPartyNumber:Ljava/lang/String;

    .line 715
    iput-object v0, p0, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->cnapExtendedDisplay:Ljava/lang/String;

    .line 716
    iput-boolean v1, p0, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->isVowifi:Z

    .line 717
    iput-boolean v1, p0, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->isHDVoice:Z

    .line 718
    return-void
.end method

.method public isIncomingExtendedCallstate()Z
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->cnapCallingPartyNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
