.class public Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;
.super Ljava/lang/Object;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RouteInfoWithIface"
.end annotation


# instance fields
.field dstAddr:Ljava/lang/String;

.field iface:Ljava/lang/String;

.field mtu:I

.field ri:Landroid/net/RouteInfo;

.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Landroid/net/RouteInfo;I)V
    .locals 1
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "routeInfo"    # Landroid/net/RouteInfo;
    .param p4, "mtuSize"    # I

    .prologue
    .line 1457
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;->this$0:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1458
    iput-object p2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;->iface:Ljava/lang/String;

    .line 1459
    iput-object p3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;->ri:Landroid/net/RouteInfo;

    .line 1460
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;->dstAddr:Ljava/lang/String;

    .line 1461
    iput p4, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;->mtu:I

    .line 1462
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[iface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;->iface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mtu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;->mtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;->ri:Landroid/net/RouteInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
