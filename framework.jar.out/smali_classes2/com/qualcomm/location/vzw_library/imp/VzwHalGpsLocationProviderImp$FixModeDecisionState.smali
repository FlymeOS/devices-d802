.class final enum Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;
.super Ljava/lang/Enum;
.source "VzwHalGpsLocationProviderImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FixModeDecisionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

.field public static final enum Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

.field public static final enum MSA:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

.field public static final enum MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

.field public static final enum Standalone:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    const-string v1, "Dormant"

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    const-string v1, "Standalone"

    invoke-direct {v0, v1, v3}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Standalone:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    const-string v1, "MSB"

    invoke-direct {v0, v1, v4}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    const-string v1, "MSA"

    invoke-direct {v0, v1, v5}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSA:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Standalone:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSA:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->$VALUES:[Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->$VALUES:[Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    invoke-virtual {v0}, [Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    return-object v0
.end method
