.class public Lcom/lge/constants/UsbManagerConstants;
.super Ljava/lang/Object;
.source "UsbManagerConstants.java"


# static fields
.field public static final USB_FUNCTION_AUTO_CONF:Ljava/lang/String; = "auto_conf"

.field public static final USB_FUNCTION_CDROM_STORAGE:Ljava/lang/String; = "cdrom_storage"

.field public static final USB_FUNCTION_CHARGE_ONLY:Ljava/lang/String; = "charge_only"

.field public static final USB_FUNCTION_MTP_ONLY:Ljava/lang/String; = "mtp_only"

.field public static final USB_FUNCTION_NCM:Ljava/lang/String; = "ncm"

.field public static final USB_FUNCTION_PC_SUITE:Ljava/lang/String; = "pc_suite"

.field public static final USB_FUNCTION_PTP_ONLY:Ljava/lang/String; = "ptp_only"

.field public static final USB_FUNCTION_TETHER:Ljava/lang/String;

.field public static final USB_FUNCTION_USB_ENABLE_DIAG:Ljava/lang/String; = "usb_enable_diag"

.field public static final USB_FUNCTION_USB_ENABLE_ECM:Ljava/lang/String; = "usb_enable_ecm"

.field public static final USB_FUNCTION_USB_ENABLE_MTP:Ljava/lang/String; = "usb_enable_mtp"

.field public static final USB_FUNCTION_USB_ENABLE_TETHER:Ljava/lang/String; = "ecm,diag"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_use_rndisdriver:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rndis"

    :goto_0
    sput-object v0, Lcom/lge/constants/UsbManagerConstants;->USB_FUNCTION_TETHER:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "ecm"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
