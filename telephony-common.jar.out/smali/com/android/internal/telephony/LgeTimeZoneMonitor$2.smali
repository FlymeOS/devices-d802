.class Lcom/android/internal/telephony/LgeTimeZoneMonitor$2;
.super Landroid/database/ContentObserver;
.source "LgeTimeZoneMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeTimeZoneMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LgeTimeZoneMonitor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$2;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$2;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    const-string v1, "Auto time zone state changed"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$2;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sendEmptyMessageDelayed(IJ)Z

    .line 143
    return-void
.end method
