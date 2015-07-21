.class public final enum Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;
.super Ljava/lang/Enum;
.source "LGMSimSmsManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/msim/LGMSimSmsManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LGMultiSimVariants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

.field public static final enum DSDA:Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

.field public static final enum DSDS:Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

.field public static final enum TSTS:Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

.field public static final enum UNKNOWN:Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    const-string v1, "DSDS"

    invoke-direct {v0, v1, v2}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;->DSDS:Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    new-instance v0, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    const-string v1, "DSDA"

    invoke-direct {v0, v1, v3}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;->DSDA:Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    new-instance v0, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    const-string v1, "TSTS"

    invoke-direct {v0, v1, v4}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;->TSTS:Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    new-instance v0, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;->UNKNOWN:Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    sget-object v1, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;->DSDS:Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;->DSDA:Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;->TSTS:Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;->UNKNOWN:Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;->$VALUES:[Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    return-object v0
.end method

.method public static values()[Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;->$VALUES:[Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    invoke-virtual {v0}, [Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/telephony/msim/LGMSimSmsManagerBase$LGMultiSimVariants;

    return-object v0
.end method
