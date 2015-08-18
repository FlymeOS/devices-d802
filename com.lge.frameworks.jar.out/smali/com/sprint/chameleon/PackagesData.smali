.class public Lcom/sprint/chameleon/PackagesData;
.super Ljava/lang/Object;
.source "PackagesData.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private mDefHome:Ljava/lang/String;

.field private mDefMsg:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mOnWizard:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/OnWizardData;",
            ">;"
        }
    .end annotation
.end field

.field private mPrfActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/PrfActivityData;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/PackagesData;->mName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/PackagesData;->mStatus:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/PackagesData;->mDefMsg:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/chameleon/PackagesData;->mDefHome:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/chameleon/PackagesData;->mOnWizard:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/chameleon/PackagesData;->mPrfActivity:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public getDefHome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sprint/chameleon/PackagesData;->mDefHome:Ljava/lang/String;

    return-object v0
.end method

.method public getDefMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sprint/chameleon/PackagesData;->mDefMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sprint/chameleon/PackagesData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnWizard()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/OnWizardData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sprint/chameleon/PackagesData;->mOnWizard:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrfActivityData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/PrfActivityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sprint/chameleon/PackagesData;->mPrfActivity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sprint/chameleon/PackagesData;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setDefHome(Ljava/lang/String;)V
    .locals 0
    .param p1, "defHome"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sprint/chameleon/PackagesData;->mDefHome:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDefMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "defMsg"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sprint/chameleon/PackagesData;->mDefMsg:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sprint/chameleon/PackagesData;->mName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setOnWizardData(Lcom/sprint/chameleon/OnWizardData;)V
    .locals 1
    .param p1, "data"    # Lcom/sprint/chameleon/OnWizardData;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sprint/chameleon/PackagesData;->mOnWizard:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public setPrfActivityData(Lcom/sprint/chameleon/PrfActivityData;)V
    .locals 1
    .param p1, "data"    # Lcom/sprint/chameleon/PrfActivityData;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sprint/chameleon/PackagesData;->mPrfActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sprint/chameleon/PackagesData;->mStatus:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sprint/chameleon/PackagesData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sprint/chameleon/PackagesData;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "strPkg":Ljava/lang/String;
    return-object v0
.end method
