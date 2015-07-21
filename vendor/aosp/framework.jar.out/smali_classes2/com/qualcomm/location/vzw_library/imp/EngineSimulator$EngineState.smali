.class public final enum Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;
.super Ljava/lang/Enum;
.source "EngineSimulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EngineState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

.field public static final enum FINAL_SENT:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

.field public static final enum IDLE:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

.field public static final enum IDLE_START_REQ:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

.field public static final enum RECV:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

.field public static final enum RECV_STOP_REQ:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

.field public static final enum TERM_REQ:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

.field public static final enum UNKNOWN:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->UNKNOWN:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->IDLE:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    const-string v1, "IDLE_START_REQ"

    invoke-direct {v0, v1, v5}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->IDLE_START_REQ:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    const-string v1, "RECV"

    invoke-direct {v0, v1, v6}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->RECV:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    const-string v1, "RECV_STOP_REQ"

    invoke-direct {v0, v1, v7}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->RECV_STOP_REQ:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    const-string v1, "FINAL_SENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->FINAL_SENT:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    const-string v1, "TERM_REQ"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->TERM_REQ:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->UNKNOWN:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->IDLE:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->IDLE_START_REQ:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->RECV:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->RECV_STOP_REQ:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->FINAL_SENT:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->TERM_REQ:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->$VALUES:[Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->$VALUES:[Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    invoke-virtual {v0}, [Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    return-object v0
.end method
