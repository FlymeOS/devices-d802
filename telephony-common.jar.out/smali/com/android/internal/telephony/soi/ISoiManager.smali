.class public interface abstract Lcom/android/internal/telephony/soi/ISoiManager;
.super Ljava/lang/Object;
.source "ISoiManager.java"


# static fields
.field public static final IMS_STATUS_INIT:I = 0x0

.field public static final IMS_STATUS_LIMITED:I = 0x2

.field public static final IMS_STATUS_NOT_READY:I = 0x3

.field public static final IMS_STATUS_READY:I = 0x1

.field public static final MO_IMS_LIMITED_SRV:I = 0x4

.field public static final MO_IMS_PERM_FAILURE:I = 0x3

.field public static final MO_IMS_TEMP_FAILURE:I = 0x2

.field public static final MO_SUCCESS:I = 0x1

.field public static final SMS_FORMAT_3GPP:I = 0x1

.field public static final SMS_FORMAT_3GPP2:I = 0x2

.field public static final SMS_FORMAT_INVALID:I = 0x0

.field public static final SOI_INTERNAL_ERR:I = -0x1

.field public static final SOI_NO_ERR:I = 0x0

.field public static final SOI_SERVICE_ERR:I = -0x2


# virtual methods
.method public abstract registerSmsEventListener(Lcom/android/internal/telephony/soi/ISmsEventListener;)V
.end method

.method public abstract reportMoStatus(III)I
.end method

.method public abstract reportMtSms(Lcom/android/internal/telephony/soi/ImsPdu;)I
.end method

.method public abstract updateServiceStatus(I)I
.end method

.method public abstract updateSmsFormat(I)I
.end method
