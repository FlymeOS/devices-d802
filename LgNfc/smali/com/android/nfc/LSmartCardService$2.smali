.class Lcom/android/nfc/LSmartCardService$2;
.super Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;
.source "LSmartCardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/LSmartCardService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LSmartCardService;


# direct methods
.method constructor <init>(Lcom/android/nfc/LSmartCardService;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/nfc/LSmartCardService$2;->this$0:Lcom/android/nfc/LSmartCardService;

    invoke-direct {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;-><init>()V

    return-void
.end method
