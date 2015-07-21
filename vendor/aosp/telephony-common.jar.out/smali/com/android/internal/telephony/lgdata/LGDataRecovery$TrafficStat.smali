.class public Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;
.super Ljava/lang/Object;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrafficStat"
.end annotation


# instance fields
.field public rxCnt:J

.field public systime:J

.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

.field public txCnt:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1045
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    iput-wide v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    .line 1047
    iput-wide v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    .line 1048
    iput-wide v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    .line 1049
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "txCnt= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rxCnt= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SystemTime= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "yyyy-MM-dd kk:mm:ss"

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
