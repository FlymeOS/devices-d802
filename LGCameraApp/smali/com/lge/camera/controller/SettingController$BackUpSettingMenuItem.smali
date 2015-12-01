.class Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;
.super Ljava/lang/Object;
.source "SettingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SettingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackUpSettingMenuItem"
.end annotation


# instance fields
.field private settingMenuItem:Lcom/lge/camera/setting/SettingMenuItem;

.field private settingMenuItemIndex:I

.field final synthetic this$0:Lcom/lge/camera/controller/SettingController;


# direct methods
.method private constructor <init>(Lcom/lge/camera/controller/SettingController;)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItemIndex:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItem:Lcom/lge/camera/setting/SettingMenuItem;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/controller/SettingController;Lcom/lge/camera/controller/SettingController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/camera/controller/SettingController;
    .param p2, "x1"    # Lcom/lge/camera/controller/SettingController$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;-><init>(Lcom/lge/camera/controller/SettingController;)V

    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItem:Lcom/lge/camera/setting/SettingMenuItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;

    .prologue
    .line 83
    iget v0, p0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItemIndex:I

    return v0
.end method


# virtual methods
.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItemIndex:I

    .line 93
    return-void
.end method

.method public setSettingMenuItem(Lcom/lge/camera/setting/SettingMenuItem;)V
    .locals 0
    .param p1, "item"    # Lcom/lge/camera/setting/SettingMenuItem;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItem:Lcom/lge/camera/setting/SettingMenuItem;

    .line 89
    return-void
.end method
