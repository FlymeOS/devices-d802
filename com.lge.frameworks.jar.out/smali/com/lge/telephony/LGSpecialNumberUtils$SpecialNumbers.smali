.class Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;
.super Ljava/lang/Object;
.source "LGSpecialNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/LGSpecialNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecialNumbers"
.end annotation


# instance fields
.field public number:Ljava/lang/String;

.field public resIDOfNums:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "resIDOfNums"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;->number:Ljava/lang/String;

    .line 76
    iput p2, p0, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbers;->resIDOfNums:I

    .line 77
    return-void
.end method
