.class final Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
.super Ljava/lang/Object;
.source "LGCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CookieWrapper"
.end annotation


# instance fields
.field public cookie:Ljava/lang/Object;

.field public event:I

.field public listener:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;

.field public number:Ljava/lang/String;

.field public subId:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;-><init>()V

    return-void
.end method
