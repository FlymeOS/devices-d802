.class Lcom/lge/wifi/impl/WifiHS20$hs20Info;
.super Ljava/lang/Object;
.source "WifiHS20.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiHS20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "hs20Info"
.end annotation


# instance fields
.field private bssid:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private roaming:I

.field private ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/wifi/impl/WifiHS20;

.field private venue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/WifiHS20;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "hs20Bssid"    # Ljava/lang/String;
    .param p3, "hs20Ssid"    # Ljava/lang/String;
    .param p4, "roamingInd"    # I
    .param p5, "hs20Operator"    # Ljava/lang/String;
    .param p6, "hs20Venue"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->this$0:Lcom/lge/wifi/impl/WifiHS20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p4, p0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->roaming:I

    .line 60
    iput-object p3, p0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->ssid:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->bssid:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->operator:Ljava/lang/String;

    .line 63
    iput-object p6, p0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->venue:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getVenue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->venue:Ljava/lang/String;

    return-object v0
.end method
