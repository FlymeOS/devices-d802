.class public Lcom/android/nfc/cardemulation/LCardEmulationConfig;
.super Ljava/lang/Object;
.source "LCardEmulationConfig.java"


# static fields
.field private static final DBG:Z

.field private static final ROUTE_SWITCH_OFF:I = 0x2

.field private static final ROUTE_SWITCH_ON:I = 0x1

.field private static final ROUTE_SWITCH_ON_LOCKED:I = 0x40

.field private static final ROUTE_SWITCH_ON_SCREEN_OFF:I = 0x80

.field protected static final ROUTING_LIST_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SCREENSTATE_CONFIG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;",
            ">;"
        }
    .end annotation
.end field

.field static final SCREEN_STATE_OFF:I = 0x1

.field static final SCREEN_STATE_ON_LOCKED:I = 0x2

.field static final SCREEN_STATE_ON_UNLOCKED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LCardEmulationConfig"

.field private static mObject:Lcom/android/nfc/cardemulation/LCardEmulationConfig;


# instance fields
.field private mConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;",
            ">;"
        }
    .end annotation
.end field

.field private mRouteAidPowerState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DBG:Z

    .line 36
    new-instance v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig$1;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/LCardEmulationConfig$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTING_LIST_MAP:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig$2;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/LCardEmulationConfig$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->SCREENSTATE_CONFIG_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "config":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mRouteAidPowerState:I

    .line 57
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    .line 58
    return-void
.end method

.method public static getInstance()Lcom/android/nfc/cardemulation/LCardEmulationConfig;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mObject:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    return-object v0
.end method

.method public static getInstance(Ljava/util/Map;)Lcom/android/nfc/cardemulation/LCardEmulationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;",
            ">;)",
            "Lcom/android/nfc/cardemulation/LCardEmulationConfig;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "config":Ljava/util/Map;, "Ljava/util/Map<Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;>;"
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mObject:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 161
    new-instance v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mObject:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    .line 163
    :cond_0
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mObject:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    return-object v0
.end method


# virtual methods
.method public IsCEEnable_whenPowerOff(Z)Z
    .locals 6
    .param p1, "isOffHostRouting"    # Z

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->power_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    .line 75
    .local v0, "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->config:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 77
    .local v1, "ret":Z
    :goto_0
    sget-boolean v2, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DBG:Z

    const-string v3, "LCardEmulationConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCEEnable_whenPowerOff : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 78
    return v1

    .line 75
    .end local v1    # "ret":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsHCEConfig(ILcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;)Z
    .locals 2
    .param p1, "list"    # I
    .param p2, "type"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    .prologue
    .line 152
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->SCREENSTATE_CONFIG_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0, v0, p2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;)Z

    move-result v0

    return v0
.end method

.method public IsHCEConfig(ILjava/lang/String;)Z
    .locals 2
    .param p1, "list"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 144
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->SCREENSTATE_CONFIG_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0, v0, p2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public IsHCEConfig(I[Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;)Z
    .locals 2
    .param p1, "list"    # I
    .param p2, "types"    # [Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    .prologue
    .line 156
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->SCREENSTATE_CONFIG_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0, v0, p2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;[Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;)Z

    move-result v0

    return v0
.end method

.method public IsHCEConfig(I[Ljava/lang/String;)Z
    .locals 2
    .param p1, "list"    # I
    .param p2, "types"    # [Ljava/lang/String;

    .prologue
    .line 148
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->SCREENSTATE_CONFIG_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0, v0, p2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;)Z
    .locals 2
    .param p1, "list"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    .param p2, "type"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    .prologue
    const/4 v0, 0x0

    .line 114
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Ljava/lang/String;)Z
    .locals 2
    .param p1, "list"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    const/4 v1, 0x0

    .line 110
    :goto_0
    return v1

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    invoke-virtual {v1}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "configvalue":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 108
    .end local v0    # "configvalue":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;[Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;)Z
    .locals 3
    .param p1, "list"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    .param p2, "types"    # [Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    .prologue
    const/4 v1, 0x0

    .line 122
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 127
    .local v0, "arraylistType":Ljava/util/List;, "Ljava/util/List<Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;>;"
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "list"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    .param p2, "types"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 131
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v1

    .line 135
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 136
    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    const/4 v1, 0x1

    goto :goto_0

    .line 135
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public IsRoutingOffHost(II)Z
    .locals 2
    .param p1, "screenState"    # I
    .param p2, "appCount"    # I

    .prologue
    .line 61
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->SCREENSTATE_CONFIG_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0, v0, p2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsRoutingOffHost(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;I)Z

    move-result v0

    return v0
.end method

.method public IsRoutingOffHost(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;I)Z
    .locals 6
    .param p1, "screenState"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    .param p2, "appCount"    # I

    .prologue
    .line 65
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    invoke-virtual {v2}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "config":Ljava/lang/String;
    const-string v2, "uicc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ese"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "_uicc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    const-string v2, "_ese"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    :cond_0
    if-nez p2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 69
    .local v1, "routingOffHost":Z
    :goto_0
    sget-boolean v2, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DBG:Z

    const-string v3, "LCardEmulationConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsRoutingOffHost : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 70
    return v1

    .line 66
    .end local v1    # "routingOffHost":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRouteAidsPowerState()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 82
    iget v5, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mRouteAidPowerState:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 83
    iget v5, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mRouteAidPowerState:I

    .line 101
    :goto_0
    return v5

    .line 85
    :cond_0
    iput v6, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mRouteAidPowerState:I

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 87
    invoke-static {v0}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->getListValue(I)Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    move-result-object v4

    .line 88
    .local v4, "state":Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    iget-object v5, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    .line 89
    .local v1, "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
    sget-boolean v5, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DBG:Z

    const-string v7, "LCardEmulationConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "state : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 90
    if-nez v1, :cond_2

    .line 86
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {v1}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "list_str":Ljava/lang/String;
    const-string v5, "config"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "host"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 96
    :cond_3
    sget-boolean v5, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DBG:Z

    const-string v7, "LCardEmulationConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add route list : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v5, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTING_LIST_MAP:Ljava/util/Map;

    invoke-static {v0}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->getListValue(I)Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 98
    .local v3, "routestate":Ljava/lang/Integer;
    iget v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mRouteAidPowerState:I

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_3
    or-int/2addr v5, v7

    iput v5, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mRouteAidPowerState:I

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_3

    .line 101
    .end local v1    # "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
    .end local v2    # "list_str":Ljava/lang/String;
    .end local v3    # "routestate":Ljava/lang/Integer;
    .end local v4    # "state":Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    :cond_5
    iget v5, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mRouteAidPowerState:I

    goto/16 :goto_0
.end method
