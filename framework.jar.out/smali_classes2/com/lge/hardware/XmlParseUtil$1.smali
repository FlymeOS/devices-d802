.class final Lcom/lge/hardware/XmlParseUtil$1;
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
    .line 1145
    invoke-direct {p0}, Lcom/lge/hardware/XmlParseUtil$ItemRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/String;)V
    .locals 1
    .param p1, "items"    # Ljava/lang/String;

    .prologue
    .line 1146
    # invokes: Lcom/lge/hardware/XmlParseUtil;->isItemSupported(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/lge/hardware/XmlParseUtil;->access$000(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/hardware/XmlParseUtil;->sMORHPO_NIGHT_SHOT_SUPPORTED_VALUE:Z

    return-void
.end method
