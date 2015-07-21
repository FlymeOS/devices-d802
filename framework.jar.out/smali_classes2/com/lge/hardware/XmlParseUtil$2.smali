.class final Lcom/lge/hardware/XmlParseUtil$2;
.super Lcom/lge/hardware/XmlParseUtil$ItemRunnable;
.source "LGCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hardware/XmlParseUtil;->addFeatureSupported()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1149
    invoke-direct {p0}, Lcom/lge/hardware/XmlParseUtil$ItemRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/String;)V
    .locals 1
    .param p1, "items"    # Ljava/lang/String;

    .prologue
    .line 1150
    # invokes: Lcom/lge/hardware/XmlParseUtil;->getItemSupportedType(Ljava/lang/String;)I
    invoke-static {p1}, Lcom/lge/hardware/XmlParseUtil;->access$100(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/hardware/XmlParseUtil;->sHDR_SUPPORTED_VALUE:I

    return-void
.end method
