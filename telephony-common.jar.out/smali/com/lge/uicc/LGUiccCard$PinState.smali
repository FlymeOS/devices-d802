.class public final enum Lcom/lge/uicc/LGUiccCard$PinState;
.super Ljava/lang/Enum;
.source "LGUiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/LGUiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PinState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/uicc/LGUiccCard$PinState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/uicc/LGUiccCard$PinState;

.field public static final enum DISABLED:Lcom/lge/uicc/LGUiccCard$PinState;

.field public static final enum ENABLED_BLOCKED:Lcom/lge/uicc/LGUiccCard$PinState;

.field public static final enum ENABLED_NOT_VERIFIED:Lcom/lge/uicc/LGUiccCard$PinState;

.field public static final enum ENABLED_PERM_BLOCKED:Lcom/lge/uicc/LGUiccCard$PinState;

.field public static final enum ENABLED_VERIFIED:Lcom/lge/uicc/LGUiccCard$PinState;

.field public static final enum UNKNOWN:Lcom/lge/uicc/LGUiccCard$PinState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/lge/uicc/LGUiccCard$PinState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/lge/uicc/LGUiccCard$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/LGUiccCard$PinState;->UNKNOWN:Lcom/lge/uicc/LGUiccCard$PinState;

    .line 22
    new-instance v0, Lcom/lge/uicc/LGUiccCard$PinState;

    const-string v1, "ENABLED_NOT_VERIFIED"

    invoke-direct {v0, v1, v4}, Lcom/lge/uicc/LGUiccCard$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/LGUiccCard$PinState;->ENABLED_NOT_VERIFIED:Lcom/lge/uicc/LGUiccCard$PinState;

    .line 23
    new-instance v0, Lcom/lge/uicc/LGUiccCard$PinState;

    const-string v1, "ENABLED_VERIFIED"

    invoke-direct {v0, v1, v5}, Lcom/lge/uicc/LGUiccCard$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/LGUiccCard$PinState;->ENABLED_VERIFIED:Lcom/lge/uicc/LGUiccCard$PinState;

    .line 24
    new-instance v0, Lcom/lge/uicc/LGUiccCard$PinState;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v6}, Lcom/lge/uicc/LGUiccCard$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/LGUiccCard$PinState;->DISABLED:Lcom/lge/uicc/LGUiccCard$PinState;

    .line 25
    new-instance v0, Lcom/lge/uicc/LGUiccCard$PinState;

    const-string v1, "ENABLED_BLOCKED"

    invoke-direct {v0, v1, v7}, Lcom/lge/uicc/LGUiccCard$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/LGUiccCard$PinState;->ENABLED_BLOCKED:Lcom/lge/uicc/LGUiccCard$PinState;

    .line 26
    new-instance v0, Lcom/lge/uicc/LGUiccCard$PinState;

    const-string v1, "ENABLED_PERM_BLOCKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/uicc/LGUiccCard$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/LGUiccCard$PinState;->ENABLED_PERM_BLOCKED:Lcom/lge/uicc/LGUiccCard$PinState;

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lge/uicc/LGUiccCard$PinState;

    sget-object v1, Lcom/lge/uicc/LGUiccCard$PinState;->UNKNOWN:Lcom/lge/uicc/LGUiccCard$PinState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/uicc/LGUiccCard$PinState;->ENABLED_NOT_VERIFIED:Lcom/lge/uicc/LGUiccCard$PinState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/uicc/LGUiccCard$PinState;->ENABLED_VERIFIED:Lcom/lge/uicc/LGUiccCard$PinState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/uicc/LGUiccCard$PinState;->DISABLED:Lcom/lge/uicc/LGUiccCard$PinState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/uicc/LGUiccCard$PinState;->ENABLED_BLOCKED:Lcom/lge/uicc/LGUiccCard$PinState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/uicc/LGUiccCard$PinState;->ENABLED_PERM_BLOCKED:Lcom/lge/uicc/LGUiccCard$PinState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/uicc/LGUiccCard$PinState;->$VALUES:[Lcom/lge/uicc/LGUiccCard$PinState;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/uicc/LGUiccCard$PinState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/lge/uicc/LGUiccCard$PinState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/uicc/LGUiccCard$PinState;

    return-object v0
.end method

.method public static values()[Lcom/lge/uicc/LGUiccCard$PinState;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lge/uicc/LGUiccCard$PinState;->$VALUES:[Lcom/lge/uicc/LGUiccCard$PinState;

    invoke-virtual {v0}, [Lcom/lge/uicc/LGUiccCard$PinState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/uicc/LGUiccCard$PinState;

    return-object v0
.end method
