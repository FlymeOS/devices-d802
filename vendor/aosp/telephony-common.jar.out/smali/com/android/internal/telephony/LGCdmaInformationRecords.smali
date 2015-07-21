.class public final Lcom/android/internal/telephony/LGCdmaInformationRecords;
.super Ljava/lang/Object;
.source "LGCdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGCdmaInformationRecords$CdmaT53ReleaseInfoRecKddi;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getCDMAT53InfoRec()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    const-string v0, "KDDI"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/android/internal/telephony/LGCdmaInformationRecords$CdmaT53ReleaseInfoRecKddi;

    invoke-direct {v0}, Lcom/android/internal/telephony/LGCdmaInformationRecords$CdmaT53ReleaseInfoRecKddi;-><init>()V

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
