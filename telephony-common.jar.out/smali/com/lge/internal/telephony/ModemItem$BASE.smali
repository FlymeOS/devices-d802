.class public Lcom/lge/internal/telephony/ModemItem$BASE;
.super Ljava/lang/Object;
.source "ModemItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/telephony/ModemItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BASE"
.end annotation


# static fields
.field public static final LGE_MODEM_INFO_RIL_RESET:I = 0x70000

.field public static final LGE_UNSOL_AC_BARRING_STATUS:I = 0x70011

.field public static final LGE_UNSOL_EMM_REJECT_CAUSE_DISPLAY:I = 0x70010


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
