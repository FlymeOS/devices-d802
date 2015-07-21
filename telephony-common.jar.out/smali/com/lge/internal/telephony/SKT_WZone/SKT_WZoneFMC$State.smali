.class public final enum Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;
.super Ljava/lang/Enum;
.source "SKT_WZoneFMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

.field public static final enum ACTIVE:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

.field public static final enum DIALING:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

.field public static final enum IDLE:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

.field public static final enum RINGING:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->IDLE:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    .line 28
    new-instance v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->ACTIVE:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    .line 34
    new-instance v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    const-string v1, "DIALING"

    invoke-direct {v0, v1, v4}, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->DIALING:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    .line 40
    new-instance v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    const-string v1, "RINGING"

    invoke-direct {v0, v1, v5}, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->RINGING:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    sget-object v1, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->IDLE:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->ACTIVE:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->DIALING:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->RINGING:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->$VALUES:[Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    return-object v0
.end method

.method public static values()[Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->$VALUES:[Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    invoke-virtual {v0}, [Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    return-object v0
.end method


# virtual methods
.method public isAlive()Z
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->IDLE:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialing()Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->DIALING:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->IDLE:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;->RINGING:Lcom/lge/internal/telephony/SKT_WZone/SKT_WZoneFMC$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
