.class Lcom/android/internal/telephony/lgdata/LGDataRecovery$DataStallSympton;
.super Ljava/lang/Object;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataStallSympton"
.end annotation


# static fields
.field private static final NETWORK_RADIO_PROBLEM:I = 0x7

.field private static final NO_AP_TX_INCREASE:I = 0x2

.field private static final NO_ROUTE_INFO:I = 0x1

.field private static final NO_SYMPTON:I = 0x0

.field private static final NO_TX_INCREASE_ON_DNSFAIL:I = 0x6

.field private static final ONLY_AP_TX_INCREASE:I = 0x4

.field private static final ONLY_TX_INCREASE:I = 0x3

.field private static final TXRX_OK_BUT_CONTINUOUS_DNSFAIL:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$DataStallSympton;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
