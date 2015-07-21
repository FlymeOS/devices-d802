.class abstract Lcom/lge/uicc/framework/IsimRecordLoader$IsimTest;
.super Ljava/lang/Object;
.source "IsimRecordLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IsimRecordLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "IsimTest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IsimRecordLoader;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/IsimRecordLoader;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lge/uicc/framework/IsimRecordLoader$IsimTest;->this$0:Lcom/lge/uicc/framework/IsimRecordLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/IsimRecordLoader;Lcom/lge/uicc/framework/IsimRecordLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/IsimRecordLoader;
    .param p2, "x1"    # Lcom/lge/uicc/framework/IsimRecordLoader$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IsimRecordLoader$IsimTest;-><init>(Lcom/lge/uicc/framework/IsimRecordLoader;)V

    return-void
.end method


# virtual methods
.method abstract getTestName()Ljava/lang/String;
.end method

.method abstract onTestCompleted(Ljava/lang/Object;)V
.end method

.method abstract onTestException(Ljava/lang/Throwable;)V
.end method
