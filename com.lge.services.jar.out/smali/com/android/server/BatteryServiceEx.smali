.class public Lcom/android/server/BatteryServiceEx;
.super Lcom/android/server/BatteryService;
.source "BatteryServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryServiceEx$BatteryObserver;
    }
.end annotation


# static fields
.field private static final BATTERY_DEV_SET:[Ljava/lang/String;

.field private static final BATTERY_KEY_SET:[Ljava/lang/String;

.field private static final BATTERY_NODE_SET:[Ljava/lang/String;

.field private static final BATTERY_VALUE_SET:[I

.field private static final BATT_ID_DEV:Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final HW_PATCH:Z

.field private static final OPERATOR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BatteryServiceEx"

.field static sBootcomplete:I


# instance fields
.field private ignoreNativeCall:Z

.field private final mBatteryPluggedNone:I

.field private mFakeBatteryEnabled:Z

.field private mNewBatteryHealth:I

.field private mNewBatteryLevel:I

.field private mNewBatteryPresent:Z

.field private mNewBatteryStatus:I

.field private mNewBatteryTechnology:Ljava/lang/String;

.field private mNewBatteryTemperature:I

.field private mNewBatteryVoltage:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/BatteryServiceEx;->DEBUG:Z

    .line 33
    const-string v0, "ro.build.target_operator"

    const-string v3, "unknown"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryServiceEx;->OPERATOR:Ljava/lang/String;

    .line 34
    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "g3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "tiger6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/BatteryServiceEx;->HW_PATCH:Z

    .line 35
    sput v2, Lcom/android/server/BatteryServiceEx;->sBootcomplete:I

    .line 37
    const-string v0, "p1"

    const-string v3, "ro.product.device"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "battery_id"

    :goto_2
    sput-object v0, Lcom/android/server/BatteryServiceEx;->BATT_ID_DEV:Ljava/lang/String;

    .line 39
    new-array v0, v5, [Ljava/lang/String;

    sget-object v3, Lcom/android/server/BatteryServiceEx;->BATT_ID_DEV:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v3, "battery"

    aput-object v3, v0, v1

    const-string v3, "battery"

    aput-object v3, v0, v6

    const-string v3, "battery"

    aput-object v3, v0, v7

    const/4 v3, 0x4

    const-string v4, "battery"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "battery"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "battery"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "wireless"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "usb"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/server/BatteryServiceEx;->BATTERY_DEV_SET:[Ljava/lang/String;

    .line 41
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "valid_batt_id"

    aput-object v3, v0, v2

    const-string v3, "current_now"

    aput-object v3, v0, v1

    const-string v3, "battery_condition"

    aput-object v3, v0, v6

    const-string v3, "vzw_chg"

    aput-object v3, v0, v7

    const/4 v3, 0x4

    const-string v4, "ext_pwr"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "capacity"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "status"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "alignment"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "hvdcp_type"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/server/BatteryServiceEx;->BATTERY_NODE_SET:[Ljava/lang/String;

    .line 43
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "POWER_SUPPLY_VALID_BATT_ID"

    aput-object v3, v0, v2

    const-string v2, "POWER_SUPPLY_CURRENT_NOW"

    aput-object v2, v0, v1

    const-string v1, "POWER_SUPPLY_BATTERY_CONDITION"

    aput-object v1, v0, v6

    const-string v1, "POWER_SUPPLY_VZW_CHG"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "POWER_SUPPLY_EXT_PWR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "POWER_SUPPLY_CAPACITY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "POWER_SUPPLY_STATUS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "POWER_SUPPLY_ALIGNMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "POWER_SUPPLY_HVDCP_TYPE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/BatteryServiceEx;->BATTERY_KEY_SET:[Ljava/lang/String;

    .line 53
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/BatteryServiceEx;->BATTERY_VALUE_SET:[I

    return-void

    :cond_1
    move v0, v2

    .line 31
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 34
    goto/16 :goto_1

    .line 37
    :cond_3
    const-string v0, "battery"

    goto/16 :goto_2

    .line 53
    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x50
        0x1
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;)V

    .line 36
    iput v0, p0, Lcom/android/server/BatteryServiceEx;->mBatteryPluggedNone:I

    .line 121
    iput-boolean v0, p0, Lcom/android/server/BatteryServiceEx;->ignoreNativeCall:Z

    .line 122
    iput v0, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryStatus:I

    .line 123
    iput v0, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryHealth:I

    .line 124
    iput-boolean v0, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryPresent:Z

    .line 125
    iput v0, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryLevel:I

    .line 126
    iput v0, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryVoltage:I

    .line 127
    iput v0, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryTemperature:I

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryTechnology:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_enable_fake_battery_temp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/BatteryServiceEx;->mFakeBatteryEnabled:Z

    .line 66
    const-string v0, "BatteryServiceEx"

    const-string v1, "Start BatteryServiceEx"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Lcom/android/server/BatteryServiceEx$BatteryObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;-><init>(Lcom/android/server/BatteryServiceEx;Landroid/content/Context;)V

    .line 68
    const-string v0, "BatteryServiceEx"

    const-string v1, "Start BatteryObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/server/BatteryServiceEx;->HW_PATCH:Z

    return v0
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/server/BatteryServiceEx;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/server/BatteryServiceEx;->OPERATOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/server/BatteryServiceEx;->BATTERY_NODE_SET:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/server/BatteryServiceEx;->BATTERY_DEV_SET:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/server/BatteryServiceEx;->BATTERY_KEY_SET:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/server/BatteryServiceEx;->BATTERY_VALUE_SET:[I

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/server/BatteryServiceEx;->BATT_ID_DEV:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected sendIntentLocked()V
    .locals 4

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/server/BatteryService;->sendIntentLocked()V

    .line 106
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryServiceEx;->getIconLocked(I)I

    move-result v0

    .line 107
    .local v0, "icon":I
    sget-boolean v1, Lcom/android/server/BatteryServiceEx;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "BatteryServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending ACTION_BATTERY_CHANGED.  level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", scale:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", health:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", present:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v3, v3, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", voltage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", temperature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", technology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v3, v3, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", AC powered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v3, v3, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", USB powered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v3, v3, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Wireless powered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v3, v3, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", icon:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", invalid charger:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/BatteryServiceEx;->mInvalidCharger:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void
.end method

.method public setNativeCall(ZIIZIIILjava/lang/String;)V
    .locals 1
    .param p1, "ignore"    # Z
    .param p2, "batteryStatus"    # I
    .param p3, "batteryHealth"    # I
    .param p4, "batteryPresent"    # Z
    .param p5, "batteryLevel"    # I
    .param p6, "batteryVoltage"    # I
    .param p7, "batteryTemp"    # I
    .param p8, "batteryTech"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/server/BatteryServiceEx;->ignoreNativeCall:Z

    .line 135
    iput p2, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryStatus:I

    .line 136
    iput p3, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryHealth:I

    .line 137
    iput-boolean p4, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryPresent:Z

    .line 138
    iput p5, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryLevel:I

    .line 139
    iput p6, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryVoltage:I

    .line 140
    iput p7, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryTemperature:I

    .line 142
    if-eqz p8, :cond_0

    .line 143
    iput-object p8, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryTechnology:Ljava/lang/String;

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryServiceEx;->mUpdatesStopped:Z

    .line 148
    iget-boolean v0, p0, Lcom/android/server/BatteryServiceEx;->ignoreNativeCall:Z

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {p0, v0}, Lcom/android/server/BatteryServiceEx;->update(Landroid/os/BatteryProperties;)V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryServiceEx;->mUpdatesStopped:Z

    .line 153
    :cond_1
    return-void
.end method

.method protected update(Landroid/os/BatteryProperties;)V
    .locals 3
    .param p1, "props"    # Landroid/os/BatteryProperties;

    .prologue
    .line 75
    iget-boolean v1, p0, Lcom/android/server/BatteryServiceEx;->ignoreNativeCall:Z

    if-eqz v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx;->mBatteryProps:Landroid/os/BatteryProperties;

    .line 77
    .local v0, "mProps":Landroid/os/BatteryProperties;
    iget v1, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryStatus:I

    iput v1, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 78
    iget v1, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryHealth:I

    iput v1, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 79
    iget-boolean v1, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryPresent:Z

    iput-boolean v1, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 80
    iget v1, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryLevel:I

    iput v1, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 81
    iget v1, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryVoltage:I

    iput v1, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 82
    iget v1, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryTemperature:I

    iput v1, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 83
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx;->mNewBatteryTechnology:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 90
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/BatteryServiceEx;->mFakeBatteryEnabled:Z

    if-eqz v1, :cond_0

    .line 91
    iget v1, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    const/16 v2, 0x1d6

    if-lt v1, v2, :cond_2

    .line 92
    iget v1, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    add-int/lit8 v1, v1, -0x32

    iput v1, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 99
    :cond_0
    :goto_1
    invoke-super {p0, v0}, Lcom/android/server/BatteryService;->update(Landroid/os/BatteryProperties;)V

    .line 100
    return-void

    .line 85
    .end local v0    # "mProps":Landroid/os/BatteryProperties;
    :cond_1
    move-object v0, p1

    .restart local v0    # "mProps":Landroid/os/BatteryProperties;
    goto :goto_0

    .line 93
    :cond_2
    iget v1, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    const/16 v2, 0x10e

    if-lt v1, v2, :cond_0

    .line 94
    iget v1, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v2, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    add-int/lit16 v2, v2, -0x10e

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    goto :goto_1
.end method
