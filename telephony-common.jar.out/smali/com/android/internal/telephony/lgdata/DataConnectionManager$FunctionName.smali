.class public final enum Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;
.super Ljava/lang/Enum;
.source "DataConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/DataConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FunctionName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

.field public static final enum KT_KAF:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

.field public static final enum WHEN_DATA_DISALLOWED:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

.field public static final enum callingSetMobileDataEnabled:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

.field public static final enum debugFileWrite:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

.field public static final enum functionForPacketList:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

.field public static final enum getAlreadyAppUsedPacket:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

.field public static final enum getBlockPacketMenuProcess:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

.field public static final enum getDataNetworkMode:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

.field public static final enum getRouteList_debug:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

.field public static final enum handleSKT_QA:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

.field public static final enum setAlreadyAppUsedPacket:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

.field public static final enum setBlockPacketMenuProcess:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    const-string v1, "getBlockPacketMenuProcess"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->getBlockPacketMenuProcess:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    const-string v1, "getAlreadyAppUsedPacket"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->getAlreadyAppUsedPacket:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    const-string v1, "getDataNetworkMode"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->getDataNetworkMode:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    const-string v1, "KT_KAF"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->KT_KAF:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    const-string v1, "setBlockPacketMenuProcess"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->setBlockPacketMenuProcess:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    const-string v1, "setAlreadyAppUsedPacket"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->setAlreadyAppUsedPacket:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    const-string v1, "functionForPacketList"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->functionForPacketList:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    const-string v1, "getRouteList_debug"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->getRouteList_debug:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    const-string v1, "handleSKT_QA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->handleSKT_QA:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    const-string v1, "debugFileWrite"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->debugFileWrite:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    const-string v1, "callingSetMobileDataEnabled"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->callingSetMobileDataEnabled:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    const-string v1, "WHEN_DATA_DISALLOWED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->WHEN_DATA_DISALLOWED:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    .line 35
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    sget-object v1, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->getBlockPacketMenuProcess:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->getAlreadyAppUsedPacket:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->getDataNetworkMode:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->KT_KAF:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->setBlockPacketMenuProcess:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->setAlreadyAppUsedPacket:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->functionForPacketList:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->getRouteList_debug:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->handleSKT_QA:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->debugFileWrite:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->callingSetMobileDataEnabled:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->WHEN_DATA_DISALLOWED:Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->$VALUES:[Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->$VALUES:[Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/lgdata/DataConnectionManager$FunctionName;

    return-object v0
.end method
