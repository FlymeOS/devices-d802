.class public Lcom/android/nfc/cardemulation/LHostEmulationManager;
.super Lcom/android/nfc/cardemulation/HostEmulationManager;
.source "LHostEmulationManager.java"


# static fields
.field static final PROP_ERROR:[B

.field static final TAG:Ljava/lang/String; = "LHostEmulationManager"


# instance fields
.field BindedAid:Ljava/lang/String;

.field BindedCategory:Ljava/lang/String;

.field ResolvedCategory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/cardemulation/LHostEmulationManager;->PROP_ERROR:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x69t
        -0x67t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidCache"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/cardemulation/HostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 37
    return-void
.end method
