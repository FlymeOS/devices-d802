.class public final enum Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;
.super Ljava/lang/Enum;
.source "LGMSimConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/msim/LGMSimConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardUnavailableReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

.field public static final enum REASON_CARD_REMOVED:Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

.field public static final enum REASON_RADIO_UNAVAILABLE:Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

.field public static final enum REASON_SIM_REFRESH_RESET:Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

    const-string v1, "REASON_CARD_REMOVED"

    invoke-direct {v0, v1, v2}, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

    .line 38
    new-instance v0, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

    const-string v1, "REASON_RADIO_UNAVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

    .line 43
    new-instance v0, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

    const-string v1, "REASON_SIM_REFRESH_RESET"

    invoke-direct {v0, v1, v4}, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

    sget-object v1, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;->$VALUES:[Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

    return-object v0
.end method

.method public static values()[Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;->$VALUES:[Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

    invoke-virtual {v0}, [Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/telephony/msim/LGMSimConstants$CardUnavailableReason;

    return-object v0
.end method
