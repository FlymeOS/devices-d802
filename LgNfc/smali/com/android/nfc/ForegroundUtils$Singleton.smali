.class Lcom/android/nfc/ForegroundUtils$Singleton;
.super Ljava/lang/Object;
.source "ForegroundUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/ForegroundUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/nfc/ForegroundUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/android/nfc/ForegroundUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/nfc/ForegroundUtils;-><init>(Lcom/android/nfc/ForegroundUtils$1;)V

    sput-object v0, Lcom/android/nfc/ForegroundUtils$Singleton;->INSTANCE:Lcom/android/nfc/ForegroundUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/nfc/ForegroundUtils;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/nfc/ForegroundUtils$Singleton;->INSTANCE:Lcom/android/nfc/ForegroundUtils;

    return-object v0
.end method
