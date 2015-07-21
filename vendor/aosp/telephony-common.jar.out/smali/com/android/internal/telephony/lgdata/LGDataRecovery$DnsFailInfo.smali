.class Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;
.super Ljava/lang/Object;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsFailInfo"
.end annotation


# instance fields
.field errorCode:I

.field hostName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;I)V
    .locals 1
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;->hostName:Ljava/lang/String;

    .line 904
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;->errorCode:I

    .line 908
    iput-object p2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;->hostName:Ljava/lang/String;

    .line 909
    iput p3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;->errorCode:I

    .line 910
    return-void
.end method
