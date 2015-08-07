.class public Lcom/lge/usb/autorun/AutorunManager;
.super Ljava/lang/Object;
.source "AutorunManager.java"


# static fields
.field public static final AUTORUN_CMD_STOP:I = 0x64

.field public static final AUTORUN_CMD_TIMER_STOP:I = 0x2

.field public static final AUTORUN_CMD_VZW_START:I = 0x1

.field private static final AUTORUN_STATE_INIT:I = 0x0

.field private static final AUTORUN_STATE_START:I = 0x1

.field private static final AUTORUN_STATE_STOP:I = 0x64

.field private static final DEBUG:Z = true

.field private static final PDK:Z = false

.field private static final TAG:Ljava/lang/String; = "AutorunManager"


# instance fields
.field private mAutorun:Lcom/lge/usb/autorun/Autorun;

.field private mAutorunEnabled:Z

.field private mAutorunState:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mUsbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usbDeviceManager"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunState:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunEnabled:Z

    .line 84
    new-instance v0, Lcom/lge/usb/autorun/AutorunManager$1;

    invoke-direct {v0, p0}, Lcom/lge/usb/autorun/AutorunManager$1;-><init>(Lcom/lge/usb/autorun/AutorunManager;)V

    iput-object v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/lge/usb/autorun/AutorunManager;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 48
    iput-object p2, p0, Lcom/lge/usb/autorun/AutorunManager;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 50
    invoke-direct {p0}, Lcom/lge/usb/autorun/AutorunManager;->initAutorun()V

    .line 51
    invoke-direct {p0}, Lcom/lge/usb/autorun/AutorunManager;->registerAutorunReceiver()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/lge/usb/autorun/AutorunManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/lge/usb/autorun/AutorunManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/usb/autorun/AutorunManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/usb/autorun/AutorunManager;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/usb/autorun/AutorunManager;->command(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/usb/autorun/AutorunManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/usb/autorun/AutorunManager;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lge/usb/autorun/AutorunManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/usb/autorun/AutorunManager;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/usb/autorun/AutorunManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/usb/autorun/AutorunManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lge/usb/autorun/AutorunManager;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/usb/autorun/AutorunManager;)Lcom/lge/usb/autorun/Autorun;
    .locals 1
    .param p0, "x0"    # Lcom/lge/usb/autorun/AutorunManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorun:Lcom/lge/usb/autorun/Autorun;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/usb/autorun/AutorunManager;)Lcom/android/server/usb/UsbDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/usb/autorun/AutorunManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method private command(I)V
    .locals 3
    .param p1, "cmd"    # I

    .prologue
    const/16 v1, 0x64

    const/4 v2, 0x1

    .line 139
    sparse-switch p1, :sswitch_data_0

    .line 178
    const-string v0, "AutorunManager"

    const-string v1, "[AUTORUN] Unknown cmd...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 142
    :sswitch_0
    iget v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunState:I

    if-ne v0, v2, :cond_1

    .line 143
    const-string v0, "AutorunManager"

    const-string v1, "autorun already started"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorun:Lcom/lge/usb/autorun/Autorun;

    if-nez v0, :cond_3

    .line 148
    new-instance v0, Lcom/lge/usb/autorun/Autorun_VZW;

    iget-object v1, p0, Lcom/lge/usb/autorun/AutorunManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/usb/autorun/Autorun_VZW;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorun:Lcom/lge/usb/autorun/Autorun;

    .line 149
    iget-object v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorun:Lcom/lge/usb/autorun/Autorun;

    iget-object v1, p0, Lcom/lge/usb/autorun/AutorunManager;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, v1}, Lcom/lge/usb/autorun/Autorun;->addUsbDeviceManager(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 153
    :cond_2
    :goto_1
    iput v2, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunState:I

    goto :goto_0

    .line 150
    :cond_3
    iget v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunState:I

    if-ne v0, v1, :cond_2

    .line 151
    iget-object v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorun:Lcom/lge/usb/autorun/Autorun;

    invoke-virtual {v0}, Lcom/lge/usb/autorun/Autorun;->resume()V

    goto :goto_1

    .line 158
    :sswitch_1
    iget v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunState:I

    if-ne v0, v1, :cond_4

    .line 159
    const-string v0, "AutorunManager"

    const-string v1, "autorun already stopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorun:Lcom/lge/usb/autorun/Autorun;

    if-eqz v0, :cond_5

    .line 164
    iget-object v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorun:Lcom/lge/usb/autorun/Autorun;

    invoke-virtual {v0}, Lcom/lge/usb/autorun/Autorun;->distroy()V

    .line 166
    :cond_5
    iput v1, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunState:I

    goto :goto_0

    .line 170
    :sswitch_2
    iget v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunState:I

    if-ne v0, v2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorun:Lcom/lge/usb/autorun/Autorun;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorun:Lcom/lge/usb/autorun/Autorun;

    invoke-virtual {v0}, Lcom/lge/usb/autorun/Autorun;->autorunStopTimer()V

    goto :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method private getCurrentFunction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    const-string v2, "sys.usb.config"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "functions":Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 130
    .local v0, "commaIndex":I
    if-lez v0, :cond_0

    .line 131
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 133
    .end local v1    # "functions":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private initAutorun()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    iget-object v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "autorun_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iput-boolean v4, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunEnabled:Z

    .line 65
    :goto_0
    const-string v0, "AutorunManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTORUN] mAutorunEnabled value is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput v3, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunState:I

    .line 69
    iget-boolean v0, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunEnabled:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, v4}, Lcom/lge/usb/autorun/AutorunManager;->command(I)V

    .line 73
    :cond_0
    return-void

    .line 61
    :cond_1
    iput-boolean v3, p0, Lcom/lge/usb/autorun/AutorunManager;->mAutorunEnabled:Z

    goto :goto_0
.end method

.method private registerAutorunReceiver()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.android.intent.AUTORUN_ENABLE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/lge/usb/autorun/AutorunManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/usb/autorun/AutorunManager;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method
