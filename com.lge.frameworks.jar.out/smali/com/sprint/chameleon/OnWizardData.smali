.class public Lcom/sprint/chameleon/OnWizardData;
.super Ljava/lang/Object;
.source "OnWizardData.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private mLocation:Ljava/lang/String;

.field private mScreen:Ljava/lang/String;

.field private mSetupActivity:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/OnWizardData;->mScreen:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/OnWizardData;->mLocation:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/OnWizardData;->mSetupActivity:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sprint/chameleon/OnWizardData;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sprint/chameleon/OnWizardData;->mScreen:Ljava/lang/String;

    return-object v0
.end method

.method public getSetupActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sprint/chameleon/OnWizardData;->mSetupActivity:Ljava/lang/String;

    return-object v0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sprint/chameleon/OnWizardData;->mLocation:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setScreen(Ljava/lang/String;)V
    .locals 0
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sprint/chameleon/OnWizardData;->mScreen:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setSetupActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "setupActivity"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sprint/chameleon/OnWizardData;->mSetupActivity:Ljava/lang/String;

    .line 32
    return-void
.end method
