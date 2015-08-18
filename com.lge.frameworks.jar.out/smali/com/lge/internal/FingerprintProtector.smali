.class public Lcom/lge/internal/FingerprintProtector;
.super Ljava/lang/Object;
.source "FingerprintProtector.java"


# static fields
.field private static final LIST_OF_AVAILABLELAUNCH_BENCHMARK:[Ljava/lang/String;

.field private static final LIST_OF_BENCHMARK_TO_BLOCK:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "FingerprintProtector"

.field private static sAlreadyCheckToFake:Z

.field private static final sFakeProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsReleaseVersion:Z

.field private static sShouldProtect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "benchmark.packet"

    aput-object v1, v0, v3

    const-string v1, "com.a1dev"

    aput-object v1, v0, v4

    const-string v1, "com.antutu"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.app3ho"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.aurorasoftworks"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.bfield"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.glbenchmark"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.obkircherlukas"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.performance"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.quicinc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.rightware"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.smartbench"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.unstableapps"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "it.curciolab"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "net.warp7"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "org.zwanoo"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ru.rdmobile"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "se.nena"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "air.com.n2degames"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.benchbee.AST"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.passmark.pt_mobile"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.greenecomputing.linpack"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.metricowireless.datumandroid"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "org.zwanoo.android.speedtest"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.primatelabs.geekbench"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/internal/FingerprintProtector;->LIST_OF_BENCHMARK_TO_BLOCK:[Ljava/lang/String;

    .line 28
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.metricowireless.datumandroid"

    aput-object v1, v0, v3

    const-string v1, "org.zwanoo.android.speedtest"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/internal/FingerprintProtector;->LIST_OF_AVAILABLELAUNCH_BENCHMARK:[Ljava/lang/String;

    .line 31
    sput-boolean v3, Lcom/lge/internal/FingerprintProtector;->sShouldProtect:Z

    .line 32
    sput-boolean v3, Lcom/lge/internal/FingerprintProtector;->sAlreadyCheckToFake:Z

    .line 33
    sput-boolean v3, Lcom/lge/internal/FingerprintProtector;->sIsReleaseVersion:Z

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    .line 138
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.id"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.display.id"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.fingerprint"

    const-string v2, "Android/unknown/unknown:4.4/unknown/unknown:userdebug/release-keys"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.host"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.version.incremental"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.version.release"

    const-string v2, "4.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.version.codename"

    const-string v2, "REL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.user"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.host"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.version.sdk"

    const-string v2, "19"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.product.name"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.product.device"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.product.board"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.product.brand"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.product.manufacturer"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.product.model"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.bootloader"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.hardware"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.serialno"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static FakeBuildInfo()V
    .locals 6

    .prologue
    const/16 v5, 0x13

    .line 167
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 168
    .local v0, "originalTags":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 169
    .local v1, "originalType":Ljava/lang/String;
    const-class v2, Landroid/os/Build;

    const-string v3, "ID"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    const-class v2, Landroid/os/Build;

    const-string v3, "DISPLAY"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-class v2, Landroid/os/Build;

    const-string v3, "PRODUCT"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-class v2, Landroid/os/Build;

    const-string v3, "DEVICE"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    const-class v2, Landroid/os/Build;

    const-string v3, "BOARD"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const-class v2, Landroid/os/Build;

    const-string v3, "MANUFACTURER"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    const-class v2, Landroid/os/Build;

    const-string v3, "BRAND"

    const-string v4, "Android"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-class v2, Landroid/os/Build;

    const-string v3, "MODEL"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-class v2, Landroid/os/Build;

    const-string v3, "BOOTLOADER"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-class v2, Landroid/os/Build;

    const-string v3, "HARDWARE"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-class v2, Landroid/os/Build;

    const-string v3, "SERIAL"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    const-class v2, Landroid/os/Build$VERSION;

    const-string v3, "INCREMENTAL"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-class v2, Landroid/os/Build$VERSION;

    const-string v3, "RELEASE"

    const-string v4, "4.4"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    const-class v2, Landroid/os/Build$VERSION;

    const-string v3, "SDK"

    const-string v4, "19"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    const-class v2, Landroid/os/Build$VERSION;

    const-string v3, "SDK_INT"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    const-class v2, Landroid/os/Build$VERSION;

    const-string v3, "CODENAME"

    const-string v4, "REL"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    const-class v2, Landroid/os/Build$VERSION;

    const-string v3, "RESOURCES_SDK_INT"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    const-class v2, Landroid/os/Build;

    const-string v3, "USER"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    const-class v2, Landroid/os/Build;

    const-string v3, "HOST"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    const-class v2, Landroid/os/Build;

    const-string v3, "FINGERPRINT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Android/unknown/unknown:4.4/unknown/unknown:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method private static isAvailableLaunchBechmark(Ljava/lang/String;)Z
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "bisAvailable":Z
    const-string v7, "sys.lge.benchmarkEnable"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 69
    .local v2, "enableCheckList":Z
    const-string v7, "ro.build.target_operator"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "op":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v7, "SPR"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "USC"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ATT"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TRF"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 72
    :cond_0
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->LIST_OF_AVAILABLELAUNCH_BENCHMARK:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 73
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    const/4 v1, 0x1

    .line 81
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    :goto_1
    return v1

    .line 72
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v6    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isBenchmarkToBlock(Ljava/lang/String;)Z
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 85
    if-nez p0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v5

    .line 86
    :cond_1
    sget-boolean v7, Lcom/lge/internal/FingerprintProtector;->sIsReleaseVersion:Z

    if-nez v7, :cond_0

    .line 88
    invoke-static {}, Lcom/lge/internal/FingerprintProtector;->isProductVersion()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 89
    sput-boolean v6, Lcom/lge/internal/FingerprintProtector;->sIsReleaseVersion:Z

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "lowCasePackageName":Ljava/lang/String;
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->LIST_OF_BENCHMARK_TO_BLOCK:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 95
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v3}, Lcom/lge/internal/FingerprintProtector;->isAvailableLaunchBechmark(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 96
    const-string v5, "FingerprintProtector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "benchmark pacakge was catched.(2) : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 97
    goto :goto_0

    .line 94
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isProductVersion()Z
    .locals 11

    .prologue
    const/16 v10, 0x5a

    const/16 v9, 0x41

    const/4 v5, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 105
    const/4 v3, 0x0

    .line 106
    .local v3, "version":Ljava/lang/String;
    const-string v6, "ro.lge.swversion_short"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "swVersion":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_1

    .line 108
    move-object v3, v2

    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v9, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v10, :cond_0

    .line 110
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 124
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 125
    const-string v5, "FingerprintProtector"

    const-string v6, "No SW version info"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_1
    return v4

    .line 113
    :cond_1
    const-string v6, "ro.lge.factoryversion"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "factoryVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 115
    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "splitVersion":[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x3

    if-le v6, v7, :cond_0

    .line 117
    aget-object v3, v1, v8

    .line 118
    aget-object v6, v1, v8

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v9, :cond_0

    aget-object v6, v1, v8

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v10, :cond_0

    .line 119
    aget-object v6, v1, v8

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 128
    .end local v0    # "factoryVersion":Ljava/lang/String;
    .end local v1    # "splitVersion":[Ljava/lang/String;
    :cond_2
    const-string v6, "10"

    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_3

    move v4, v5

    .line 129
    goto :goto_1

    .line 131
    :cond_3
    const-string v5, "FingerprintProtector"

    const-string v6, "This is not product version."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fakeValue"    # Ljava/lang/Object;

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 194
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 195
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FingerprintProtector"

    const-string v3, "error:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static tryFakeBuildInfo(Ljava/lang/String;)V
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 36
    if-nez p0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    sget-boolean v5, Lcom/lge/internal/FingerprintProtector;->sAlreadyCheckToFake:Z

    if-eq v5, v7, :cond_0

    .line 39
    sput-boolean v7, Lcom/lge/internal/FingerprintProtector;->sAlreadyCheckToFake:Z

    .line 40
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_0

    .line 44
    invoke-static {}, Lcom/lge/internal/FingerprintProtector;->isProductVersion()Z

    move-result v5

    if-nez v5, :cond_0

    .line 48
    const-string v5, "ro.lge.protect.fingerprint"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v5, v7, :cond_2

    .line 49
    sput-boolean v7, Lcom/lge/internal/FingerprintProtector;->sShouldProtect:Z

    .line 50
    invoke-static {}, Lcom/lge/internal/FingerprintProtector;->FakeBuildInfo()V

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "lowCasePackageName":Ljava/lang/String;
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->LIST_OF_BENCHMARK_TO_BLOCK:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 55
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 56
    sput-boolean v7, Lcom/lge/internal/FingerprintProtector;->sShouldProtect:Z

    .line 57
    invoke-static {}, Lcom/lge/internal/FingerprintProtector;->FakeBuildInfo()V

    .line 58
    const-string v5, "FingerprintProtector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "benchmark pacakge was catched(1) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v5, "http.agent"

    const-string v6, "Dalvik/1.6.0 (Linux; U; Android 4.4.2; XXXXXXX Build/KVT49L.XXXXXXXX)"

    invoke-static {v5, v6}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static tryGetFakeProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "propName"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-boolean v0, Lcom/lge/internal/FingerprintProtector;->sShouldProtect:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
