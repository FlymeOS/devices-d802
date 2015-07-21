.class public final enum Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;
.super Ljava/lang/Enum;
.source "LGMSimTelephonyManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LGMultiSimVariants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

.field public static final enum DSDA:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

.field public static final enum DSDS:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

.field public static final enum TSTS:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

.field public static final enum UNKNOWN:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    const-string v1, "DSDS"

    invoke-direct {v0, v1, v2}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;->DSDS:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    .line 26
    new-instance v0, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    const-string v1, "DSDA"

    invoke-direct {v0, v1, v3}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;->DSDA:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    .line 27
    new-instance v0, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    const-string v1, "TSTS"

    invoke-direct {v0, v1, v4}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;->TSTS:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    .line 28
    new-instance v0, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;->UNKNOWN:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    sget-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;->DSDS:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;->DSDA:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;->TSTS:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;->UNKNOWN:Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;->$VALUES:[Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    return-object v0
.end method

.method public static values()[Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;->$VALUES:[Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    invoke-virtual {v0}, [Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/telephony/msim/LGMSimTelephonyManagerBase$LGMultiSimVariants;

    return-object v0
.end method
