.class public final enum Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;
.super Ljava/lang/Enum;
.source "NfcConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChipSetList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

.field public static final enum INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

.field public static final enum brcm:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

.field public static final enum inside:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

.field public static final enum nxp:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

.field public static final enum sony:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    const-string v1, "INITVALUE"

    invoke-direct {v0, v1, v2}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    const-string v1, "nxp"

    invoke-direct {v0, v1, v3}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->nxp:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    const-string v1, "brcm"

    invoke-direct {v0, v1, v4}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->brcm:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    const-string v1, "inside"

    invoke-direct {v0, v1, v5}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->inside:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    const-string v1, "sony"

    invoke-direct {v0, v1, v6}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->sony:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->nxp:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->brcm:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->inside:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->sony:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

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
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    const-class v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    return-object v0
.end method

.method public static values()[Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    invoke-virtual {v0}, [Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    return-object v0
.end method
