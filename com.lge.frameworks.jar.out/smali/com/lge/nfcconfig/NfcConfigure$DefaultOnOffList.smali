.class public final enum Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;
.super Ljava/lang/Enum;
.source "NfcConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultOnOffList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

.field public static final enum INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

.field public static final enum off:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

.field public static final enum offp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

.field public static final enum oncard:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

.field public static final enum oncardp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

.field public static final enum oncardrw:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

.field public static final enum oncardrwp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

.field public static final enum onrwp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

.field public static final enum open:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    const-string v1, "INITVALUE"

    invoke-direct {v0, v1, v3}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    const-string v1, "off"

    invoke-direct {v0, v1, v4}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->off:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    const-string v1, "offp2p"

    invoke-direct {v0, v1, v5}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->offp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    const-string v1, "oncardrwp2p"

    invoke-direct {v0, v1, v6}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncardrwp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    const-string v1, "oncard"

    invoke-direct {v0, v1, v7}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncard:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    const-string v1, "oncardrw"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncardrw:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    const-string v1, "oncardp2p"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncardp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    const-string v1, "onrwp2p"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->onrwp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    const-string v1, "open"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->open:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->off:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->offp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncardrwp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncard:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncardrw:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncardp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->onrwp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->open:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

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
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    const-class v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    return-object v0
.end method

.method public static values()[Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v0}, [Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    return-object v0
.end method
