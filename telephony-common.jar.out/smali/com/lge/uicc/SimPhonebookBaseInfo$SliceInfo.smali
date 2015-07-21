.class public Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
.super Ljava/lang/Object;
.source "SimPhonebookBaseInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/SimPhonebookBaseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliceInfo"
.end annotation


# instance fields
.field public mAdnCount:I

.field public mAnrCount:I

.field public mAnrType:I

.field public mEmailCount:I

.field public mEmailType:I

.field public mSneCount:I

.field public mSneType:I

.field public mUsedAnrCount:[I

.field public mUsedEmailCount:[I

.field public mUsedSneCount:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
