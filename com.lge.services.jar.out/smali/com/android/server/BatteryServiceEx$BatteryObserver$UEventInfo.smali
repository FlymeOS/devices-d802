.class Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
.super Ljava/lang/Object;
.source "BatteryServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryServiceEx$BatteryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UEventInfo"
.end annotation


# instance fields
.field private final mDevName:Ljava/lang/String;

.field private final mKeyName:Ljava/lang/String;

.field private final mNodeName:Ljava/lang/String;

.field private mValue:I

.field final synthetic this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "devName"    # Ljava/lang/String;
    .param p3, "nodeName"    # Ljava/lang/String;
    .param p4, "keyName"    # Ljava/lang/String;
    .param p5, "value"    # I

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput-object p2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    .line 527
    iput-object p3, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->mNodeName:Ljava/lang/String;

    .line 528
    iput-object p4, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->mKeyName:Ljava/lang/String;

    .line 529
    iput p5, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->mValue:I

    .line 530
    return-void
.end method


# virtual methods
.method public checkSwitchExists()Z
    .locals 2

    .prologue
    .line 541
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->mKeyName:Ljava/lang/String;

    return-object v0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 537
    const-string v0, "/sys/class/power_supply/%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->mNodeName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->mValue:I

    return v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 550
    iput p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->mValue:I

    .line 551
    return-void
.end method
