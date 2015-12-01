.class public Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;
.super Ljava/lang/Object;
.source "Ola_AutoPanoramaInfo.java"


# static fields
.field public static final OLA_AUTOPANORAMADIRECTION_EDOWN:I = 0x3

.field public static final OLA_AUTOPANORAMADIRECTION_ELEFT:I = 0x2

.field public static final OLA_AUTOPANORAMADIRECTION_ERIGHT:I = 0x1

.field public static final OLA_AUTOPANORAMADIRECTION_ESTILL:I = 0x0

.field public static final OLA_AUTOPANORAMADIRECTION_EUP:I = 0x4

.field public static final OLA_AUTOPANORAMAPARAM_EDIRECTION_HORIZONTAL_ONLY:I = 0x0

.field public static final OLA_AUTOPANORAMAPARAM_ETHUMBNAIL_ENABLE:I = 0x1

.field public static final OLA_AUTOPANORAMASTATUS_ECANCELED:I = 0x5

.field public static final OLA_AUTOPANORAMASTATUS_ECOMPLETESYNTHESIS:I = 0x4

.field public static final OLA_AUTOPANORAMASTATUS_ECREATED:I = 0x0

.field public static final OLA_AUTOPANORAMASTATUS_EERROR:I = 0x6

.field public static final OLA_AUTOPANORAMASTATUS_EINITIALIZED:I = 0x1

.field public static final OLA_AUTOPANORAMASTATUS_EINPROCESSING:I = 0x2

.field public static final OLA_AUTOPANORAMASTATUS_EINSYNTHESIS:I = 0x3

.field public static final OLA_AUTOPANORAMASTATUS_NONE:I = -0x1


# instance fields
.field public direction:I

.field public displacement:I

.field public hRealDisp:I

.field public progressMax:I

.field public progressNow:I

.field public status:I

.field public vRealDisp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x1388

    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->progressMax:I

    .line 59
    invoke-virtual {p0}, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->clear()V

    .line 60
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 63
    iput v2, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->status:I

    .line 64
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->direction:I

    .line 65
    const/16 v0, 0x1388

    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->progressMax:I

    .line 66
    iput v2, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->progressNow:I

    .line 67
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->displacement:I

    .line 69
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->hRealDisp:I

    .line 70
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->vRealDisp:I

    .line 71
    return-void
.end method
