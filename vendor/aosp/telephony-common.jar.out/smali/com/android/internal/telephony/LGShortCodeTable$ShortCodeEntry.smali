.class Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;
.super Ljava/lang/Object;
.source "LGShortCodeTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGShortCodeTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShortCodeEntry"
.end annotation


# instance fields
.field mCategory:I

.field mCountryIso:Ljava/lang/String;

.field mDestAddr:Ljava/lang/String;

.field mMnc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "category"    # I
    .param p4, "mnc"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mCountryIso:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mDestAddr:Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mCategory:I

    .line 33
    iput-object v1, p0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mMnc:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mCountryIso:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mDestAddr:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mCategory:I

    .line 39
    iput-object p4, p0, Lcom/android/internal/telephony/LGShortCodeTable$ShortCodeEntry;->mMnc:Ljava/lang/String;

    .line 40
    return-void
.end method
