.class public Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;
.super Ljava/lang/Object;
.source "KnockCodeChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/KnockCodeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingUserInfo"
.end annotation


# instance fields
.field knockCodeSetting:Z

.field knockOnSetting:Z

.field passwordLength:I

.field userId:I


# direct methods
.method public constructor <init>(IZZI)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "on"    # Z
    .param p3, "code"    # Z
    .param p4, "len"    # I

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput p1, p0, Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;->userId:I

    .line 484
    iput-boolean p2, p0, Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;->knockOnSetting:Z

    .line 485
    iput-boolean p3, p0, Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;->knockCodeSetting:Z

    .line 486
    iput p4, p0, Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;->passwordLength:I

    .line 487
    return-void
.end method
