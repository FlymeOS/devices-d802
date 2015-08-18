.class Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;
.super Ljava/lang/Object;
.source "LGSpecialNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/LGSpecialNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecialNumbersAddon"
.end annotation


# instance fields
.field public number:Ljava/lang/String;

.field public resString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "resString"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;->number:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/lge/telephony/LGSpecialNumberUtils$SpecialNumbersAddon;->resString:Ljava/lang/String;

    .line 112
    return-void
.end method
