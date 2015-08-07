.class public Lcom/lge/usb/autorun/Autorun_VZW;
.super Lcom/lge/usb/autorun/Autorun;
.source "Autorun_VZW.java"


# instance fields
.field private final iSecureLockLevel:I

.field private mAutorunDelayed:Z

.field private mGuestMode:Z

.field mSecureLockReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 21
    invoke-direct {p0, p1}, Lcom/lge/usb/autorun/Autorun;-><init>(Landroid/content/Context;)V

    .line 15
    iput-boolean v3, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mAutorunDelayed:Z

    .line 16
    iput-boolean v3, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    .line 17
    const/4 v1, 0x2

    iput v1, p0, Lcom/lge/usb/autorun/Autorun_VZW;->iSecureLockLevel:I

    .line 18
    iput-boolean v3, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mGuestMode:Z

    .line 46
    new-instance v1, Lcom/lge/usb/autorun/Autorun_VZW$1;

    invoke-direct {v1, p0}, Lcom/lge/usb/autorun/Autorun_VZW$1;-><init>(Lcom/lge/usb/autorun/Autorun_VZW;)V

    iput-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] Autorun_VZW"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-direct {p0, v3}, Lcom/lge/usb/autorun/Autorun_VZW;->setSecureLockState(Z)V

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    .local v0, "secured_filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/lge/usb/autorun/Autorun_VZW;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun_VZW;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lge/usb/autorun/Autorun_VZW;->setSecureLockState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/usb/autorun/Autorun_VZW;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun_VZW;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/lge/usb/autorun/Autorun_VZW;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun_VZW;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/usb/autorun/Autorun_VZW;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun_VZW;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mGuestMode:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lge/usb/autorun/Autorun_VZW;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun_VZW;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mGuestMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/usb/autorun/Autorun_VZW;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun_VZW;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mAutorunDelayed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lge/usb/autorun/Autorun_VZW;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun_VZW;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mAutorunDelayed:Z

    return p1
.end method

.method private getNcmState()Z
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun_VZW;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "currentFunction":Ljava/lang/String;
    const-string v1, "ncm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ncm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    const/4 v1, 0x1

    .line 106
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setSecureLockState(Z)V
    .locals 6
    .param p1, "isSleep"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 85
    if-eqz p1, :cond_0

    .line 87
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    const-string v1, "service.keyguard.status"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ge v1, v5, :cond_1

    const-string v1, "persist.service.keyguard.status"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v5, :cond_2

    .line 94
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    .line 98
    :goto_1
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iput-boolean v4, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    goto :goto_1
.end method


# virtual methods
.method protected onBootComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-boolean v0, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mAutorunDelayed:Z

    .line 114
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] setCurrentFunction(charge_only,false)::onBootComplete when securelocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "charge_only"

    invoke-virtual {p0, v0, v2}, Lcom/lge/usb/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun_VZW;->getSetupWizardState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun_VZW;->getUsbUnplugState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lge/usb/autorun/Autorun_VZW;->getNcmState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] set to cdrom_storage :: onBootComplete when lock was released"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v0, "cdrom_storage"

    invoke-virtual {p0, v0, v2}, Lcom/lge/usb/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onUsbPlugged()V
    .locals 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun_VZW;->getIsBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun_VZW;->getSetupWizardState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lge/usb/autorun/Autorun_VZW;->getNcmState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] call startAutorun :: onUsbPlugged"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun_VZW;->startAutorun()V

    .line 146
    :cond_0
    return-void
.end method

.method protected onUsbUnplugged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-boolean v0, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/usb/autorun/Autorun_VZW;->mAutorunDelayed:Z

    .line 128
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] setCurrentFunction(charge_only,false)::onUsbUnPlugged when securelocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "charge_only"

    invoke-virtual {p0, v0, v2}, Lcom/lge/usb/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun_VZW;->getSetupWizardState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun_VZW;->getUsbUnplugState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lge/usb/autorun/Autorun_VZW;->getNcmState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] set to cdrom_storage :: onUsbUnPlugged"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v0, "cdrom_storage"

    invoke-virtual {p0, v0, v2}, Lcom/lge/usb/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected startAutorun()V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun_VZW;->getUsbUnplugState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun_VZW;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "currentFunction":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 36
    const-string v1, "AUTORUN"

    const-string v2, "exception case about currentFunction which is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v0    # "currentFunction":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 39
    .restart local v0    # "currentFunction":Ljava/lang/String;
    :cond_1
    const-string v1, "cdrom_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cdrom_storage,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 40
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] set to cdrom_storage :: startAutorun"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v1, "cdrom_storage"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/lge/usb/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun_VZW;->autorunStartTimer()V

    goto :goto_0
.end method
