.class public final enum Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;
.super Ljava/lang/Enum;
.source "NfcConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WirelessChargingList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

.field public static final enum INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

.field public static final enum stay:Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

.field public static final enum update:Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    const-string v1, "INITVALUE"

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    const-string v1, "stay"

    invoke-direct {v0, v1, v3}, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;->stay:Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    const-string v1, "update"

    invoke-direct {v0, v1, v4}, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;->update:Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;->stay:Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;->update:Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;->$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    const-class v0, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    return-object v0
.end method

.method public static values()[Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;->$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    invoke-virtual {v0}, [Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    return-object v0
.end method
