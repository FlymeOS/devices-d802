.class Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;
.super Ljava/lang/Object;
.source "MMdebuger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/MMdebuger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PDNFailHistory"
.end annotation


# instance fields
.field public LastFailPDNIPv:I

.field public LastFailPDNType:I

.field RequestRadioTech:I

.field ResponseRadioTech:I

.field curDay:I

.field curHour:I

.field curMinute:I

.field curMonth:I

.field curSecond:I

.field curYear:I

.field reason:I

.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/MMdebuger;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/lgdata/MMdebuger;IIIIII)V
    .locals 0
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .param p6, "e"    # I
    .param p7, "f"    # I

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->this$0:Lcom/android/internal/telephony/lgdata/MMdebuger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->curYear:I

    .line 56
    iput p3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->curMonth:I

    .line 57
    iput p4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->curDay:I

    .line 58
    iput p5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->curHour:I

    .line 59
    iput p6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->curMinute:I

    .line 60
    iput p7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->curSecond:I

    .line 61
    return-void
.end method
