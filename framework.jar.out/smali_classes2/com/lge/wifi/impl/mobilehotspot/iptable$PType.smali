.class final enum Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;
.super Ljava/lang/Enum;
.source "iptable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/iptable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

.field public static final enum TCP:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

.field public static final enum UDP:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;->TCP:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    const-string v1, "UDP"

    invoke-direct {v0, v1, v3}, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;->UDP:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    sget-object v1, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;->TCP:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;->UDP:Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;->$VALUES:[Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    return-object v0
.end method

.method public static values()[Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;->$VALUES:[Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    invoke-virtual {v0}, [Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/wifi/impl/mobilehotspot/iptable$PType;

    return-object v0
.end method
