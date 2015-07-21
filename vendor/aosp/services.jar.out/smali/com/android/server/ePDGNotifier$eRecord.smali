.class Lcom/android/server/ePDGNotifier$eRecord;
.super Ljava/lang/Object;
.source "ePDGNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "eRecord"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field callback:Landroid/net/IePDGStateListener;

.field events:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGNotifier$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ePDGNotifier$1;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/ePDGNotifier$eRecord;-><init>()V

    return-void
.end method
