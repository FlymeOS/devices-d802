.class public final enum Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;
.super Ljava/lang/Enum;
.source "NfcConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HceScenarioList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

.field public static final enum INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

.field public static final enum v1:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

.field public static final enum v2:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    const-string v1, "INITVALUE"

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    const-string v1, "v1"

    invoke-direct {v0, v1, v3}, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;->v1:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    const-string v1, "v2"

    invoke-direct {v0, v1, v4}, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;->v2:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;->v1:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;->v2:Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;->$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

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
    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 264
    const-class v0, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    return-object v0
.end method

.method public static values()[Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;->$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    invoke-virtual {v0}, [Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;

    return-object v0
.end method
