.class Lcom/android/internal/telephony/RIL$GONS$CountryCode;
.super Ljava/lang/Object;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL$GONS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountryCode"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private count:I

.field final synthetic this$1:Lcom/android/internal/telephony/RIL$GONS;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL$GONS;Ljava/lang/String;)V
    .locals 3
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->this$1:Lcom/android/internal/telephony/RIL$GONS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const-string v0, "GONS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CountryCode constructor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iput-object p2, p0, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->code:Ljava/lang/String;

    .line 554
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->count:I

    .line 555
    return-void
.end method


# virtual methods
.method public addCount()V
    .locals 3

    .prologue
    .line 558
    iget v0, p0, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->count:I

    .line 559
    const-string v0, "GONS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->count:I

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$GONS$CountryCode;->code:Ljava/lang/String;

    return-object v0
.end method
