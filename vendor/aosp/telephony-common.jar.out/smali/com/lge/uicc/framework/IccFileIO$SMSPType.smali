.class Lcom/lge/uicc/framework/IccFileIO$SMSPType;
.super Ljava/lang/Object;
.source "IccFileIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccFileIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field final synthetic this$0:Lcom/lge/uicc/framework/IccFileIO;


# direct methods
.method public constructor <init>(Lcom/lge/uicc/framework/IccFileIO;)V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 513
    iput-object p1, p0, Lcom/lge/uicc/framework/IccFileIO$SMSPType;->this$0:Lcom/lge/uicc/framework/IccFileIO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 515
    .local v0, "InitData":[B
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 517
    iput-byte v2, p0, Lcom/lge/uicc/framework/IccFileIO$SMSPType;->ParamIndicator:B

    .line 518
    invoke-static {v0, v3, v4}, Lcom/lge/uicc/EfUtils;->subarray([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lge/uicc/framework/IccFileIO$SMSPType;->DestAddr:[B

    .line 519
    invoke-static {v0, v3, v4}, Lcom/lge/uicc/EfUtils;->subarray([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lge/uicc/framework/IccFileIO$SMSPType;->SVCCenterAddr:[B

    .line 520
    iput-byte v2, p0, Lcom/lge/uicc/framework/IccFileIO$SMSPType;->ProtoclID:B

    .line 521
    iput-byte v2, p0, Lcom/lge/uicc/framework/IccFileIO$SMSPType;->CodeScheme:B

    .line 522
    iput-byte v2, p0, Lcom/lge/uicc/framework/IccFileIO$SMSPType;->ValidPeriod:B

    .line 523
    return-void
.end method
