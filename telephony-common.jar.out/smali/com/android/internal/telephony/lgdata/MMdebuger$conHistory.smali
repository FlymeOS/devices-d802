.class Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;
.super Ljava/lang/Object;
.source "MMdebuger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/MMdebuger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "conHistory"
.end annotation


# instance fields
.field APNID:I

.field cid:I

.field cmdtype:I

.field curDay:I

.field curHour:I

.field curMinute:I

.field curMonth:I

.field curSecond:I

.field curYear:I

.field currRadioTech:I

.field serialnum:I

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
    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->this$0:Lcom/android/internal/telephony/lgdata/MMdebuger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curYear:I

    .line 106
    iput p3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curMonth:I

    .line 107
    iput p4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curDay:I

    .line 108
    iput p5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curHour:I

    .line 109
    iput p6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curMinute:I

    .line 110
    iput p7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curSecond:I

    .line 111
    return-void
.end method
