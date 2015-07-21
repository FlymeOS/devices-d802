.class Lcom/android/internal/telephony/lgdata/LGDataRecovery$RecoveryRoutine;
.super Ljava/lang/Object;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecoveryRoutine"
.end annotation


# static fields
.field private static final CLEANUP_CONN:I = 0x1

.field private static final DCT_RESTART:I = 0x3

.field private static final MODEM_RESTART:I = 0x5

.field private static final NOTHING:I = 0x0

.field private static final PING_CHECK:I = 0x0

.field private static final RADIO_OFFON:I = 0x2

.field private static final RILD_RESTART:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RecoveryRoutine;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
