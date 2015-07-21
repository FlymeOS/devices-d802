.class Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;
.super Ljava/lang/Object;
.source "SmsUsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/soi/SmsUsimHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SMSPType"
.end annotation


# instance fields
.field public CodeScheme:B

.field public DestAddr:[B

.field public ParamIndicator:B

.field public ProtoclID:B

.field public SVCCenterAddr:[B

.field public ValidPeriod:B

.field public alphaID:[B


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 219
    .local v0, "InitData":[B
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 221
    iput-byte v2, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ParamIndicator:B

    .line 222
    invoke-static {v0, v3, v4}, Lcom/lge/uicc/EfUtils;->subarray([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->DestAddr:[B

    .line 223
    invoke-static {v0, v3, v4}, Lcom/lge/uicc/EfUtils;->subarray([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->SVCCenterAddr:[B

    .line 224
    iput-byte v2, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ProtoclID:B

    .line 225
    iput-byte v2, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->CodeScheme:B

    .line 226
    iput-byte v2, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ValidPeriod:B

    .line 227
    return-void
.end method
