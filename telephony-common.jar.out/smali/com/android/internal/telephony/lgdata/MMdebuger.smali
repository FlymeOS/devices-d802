.class public Lcom/android/internal/telephony/lgdata/MMdebuger;
.super Ljava/lang/Object;
.source "MMdebuger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;,
        Lcom/android/internal/telephony/lgdata/MMdebuger$PDNLostHistory;,
        Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;
    }
.end annotation


# static fields
.field protected static final DEACTIVE_REQ:I = 0x3

.field protected static final DEACTIVE_RSP:I = 0x4

.field protected static final SETUP_REQ:I = 0x1

.field protected static final SETUP_RSP:I = 0x2


# instance fields
.field public LastConRadioTech:I

.field public LastPDNIPv:I

.field public LastPDNType:I

.field LteEmmErrorcode:I

.field c:Ljava/util/Calendar;

.field public currentAPNId:I

.field public currentRadioTech:I

.field lastfailreasion:[I

.field lastfailreasionOfInternetPND:[I

.field lastfailreasionOnEHRPD:[I

.field lastfailreasionOnLTE:[I

.field private mConHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;",
            ">;"
        }
    .end annotation
.end field

.field public mLcurDay:I

.field public mLcurHour:I

.field public mLcurMinute:I

.field public mLcurMonth:I

.field public mLcurSecond:I

.field public mLcurYear:I

.field public mMaxSize:I

.field private mPDNFailHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mPDNFailHistoryOnLTE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;",
            ">;"
        }
    .end annotation
.end field

.field public mcurDay:I

.field public mcurHour:I

.field public mcurMinute:I

.field public mcurMonth:I

.field public mcurSecond:I

.field public mcurYear:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v1, 0x46

    iput v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistory:Ljava/util/ArrayList;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryOnLTE:Ljava/util/ArrayList;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    .line 121
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasion:[I

    .line 122
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOfInternetPND:[I

    .line 123
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnLTE:[I

    .line 124
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnEHRPD:[I

    .line 125
    iput v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->LteEmmErrorcode:I

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasion:[I

    aput v2, v1, v0

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOfInternetPND:[I

    aput v2, v1, v0

    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnLTE:[I

    aput v2, v1, v0

    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnEHRPD:[I

    aput v2, v1, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public CleanLastfailReasion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOfInternetPND:[I

    aput v2, v0, v2

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOfInternetPND:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 362
    iput v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->LteEmmErrorcode:I

    .line 363
    return-void
.end method

.method public SetLteEmmErrorCode(I)V
    .locals 0
    .param p1, "ErrorCode"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->LteEmmErrorcode:I

    .line 267
    return-void
.end method

.method public UpdateCurrentTime()V
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurYear:I

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMonth:I

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurDay:I

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurHour:I

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMinute:I

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurSecond:I

    .line 162
    return-void
.end method

.method public UpdateLastCurrentTime()V
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mLcurYear:I

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mLcurMonth:I

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mLcurDay:I

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mLcurHour:I

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mLcurMinute:I

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mLcurSecond:I

    .line 152
    return-void
.end method

.method public dstoint(Ljava/lang/String;)I
    .locals 2
    .param p1, "ds"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x2

    .line 366
    const-string v1, "fota"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    const/4 v0, 0x1

    .line 373
    :cond_0
    :goto_0
    return v0

    .line 368
    :cond_1
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    const-string v1, "dun"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getConnHistory(I)[I
    .locals 4
    .param p1, "itemnum"    # I

    .prologue
    .line 226
    const/16 v2, 0xb

    new-array v1, v2, [I

    .line 227
    .local v1, "returnvalue":[I
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 243
    .end local v1    # "returnvalue":[I
    :goto_0
    return-object v1

    .line 231
    .restart local v1    # "returnvalue":[I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;

    .line 232
    .local v0, "binfo":Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;
    const/4 v2, 0x0

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curYear:I

    aput v3, v1, v2

    .line 233
    const/4 v2, 0x1

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curMonth:I

    aput v3, v1, v2

    .line 234
    const/4 v2, 0x2

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curDay:I

    aput v3, v1, v2

    .line 235
    const/4 v2, 0x3

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curHour:I

    aput v3, v1, v2

    .line 236
    const/4 v2, 0x4

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curMinute:I

    aput v3, v1, v2

    .line 237
    const/4 v2, 0x5

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->curSecond:I

    aput v3, v1, v2

    .line 238
    const/4 v2, 0x6

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cmdtype:I

    aput v3, v1, v2

    .line 239
    const/4 v2, 0x7

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cid:I

    aput v3, v1, v2

    .line 240
    const/16 v2, 0x8

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->serialnum:I

    aput v3, v1, v2

    .line 241
    const/16 v2, 0x9

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->currRadioTech:I

    aput v3, v1, v2

    .line 242
    const/16 v2, 0xa

    iget v3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->APNID:I

    aput v3, v1, v2

    goto :goto_0
.end method

.method public getLastFailreaon()[I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasion:[I

    return-object v0
.end method

.method public getLastFailreaonAtInternetPND()[I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOfInternetPND:[I

    return-object v0
.end method

.method public getLastFailreaonOnEHRPD()[I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnEHRPD:[I

    return-object v0
.end method

.method public getLastFailreaonOnLTE()[I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnLTE:[I

    return-object v0
.end method

.method public getLteEmmErrorcode()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->LteEmmErrorcode:I

    return v0
.end method

.method public getTimeoutHistory(I)[I
    .locals 1
    .param p1, "itemnum"    # I

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveAPNType(I)V
    .locals 0
    .param p1, "apnId"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentAPNId:I

    .line 169
    return-void
.end method

.method public saveRspHistory(III)V
    .locals 8
    .param p1, "cmdtype"    # I
    .param p2, "Serial"    # I
    .param p3, "cid"    # I

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/MMdebuger;->UpdateCurrentTime()V

    .line 207
    new-instance v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurYear:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMonth:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurDay:I

    iget v5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurHour:I

    iget v6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMinute:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurSecond:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;-><init>(Lcom/android/internal/telephony/lgdata/MMdebuger;IIIIII)V

    .line 210
    .local v0, "binfo":Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_1

    .line 211
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cmdtype:I

    .line 217
    :goto_0
    iput p3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cid:I

    .line 218
    iput p2, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->serialnum:I

    .line 219
    iget v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentAPNId:I

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->APNID:I

    .line 220
    iget v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentRadioTech:I

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->currRadioTech:I

    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    return-void

    .line 212
    :cond_1
    const/16 v1, 0x29

    if-ne p1, v1, :cond_2

    .line 213
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cmdtype:I

    goto :goto_0

    .line 215
    :cond_2
    const/16 v1, 0x63

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cmdtype:I

    goto :goto_0
.end method

.method public saveUpHistory(I)V
    .locals 8
    .param p1, "Serial"    # I

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/MMdebuger;->UpdateCurrentTime()V

    .line 177
    new-instance v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurYear:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMonth:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurDay:I

    iget v5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurHour:I

    iget v6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMinute:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurSecond:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;-><init>(Lcom/android/internal/telephony/lgdata/MMdebuger;IIIIII)V

    .line 178
    .local v0, "binfo":Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cmdtype:I

    .line 179
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cid:I

    .line 180
    iput p1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->serialnum:I

    .line 181
    iget v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentAPNId:I

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->APNID:I

    .line 182
    iget v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentRadioTech:I

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->currRadioTech:I

    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public savecurrenttech(I)V
    .locals 0
    .param p1, "newNetworkType"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentRadioTech:I

    .line 165
    return-void
.end method

.method public savedownHistory(II)V
    .locals 8
    .param p1, "Serial"    # I
    .param p2, "cid"    # I

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/MMdebuger;->UpdateCurrentTime()V

    .line 192
    new-instance v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurYear:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMonth:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurDay:I

    iget v5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurHour:I

    iget v6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMinute:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurSecond:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;-><init>(Lcom/android/internal/telephony/lgdata/MMdebuger;IIIIII)V

    .line 193
    .local v0, "binfo":Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cmdtype:I

    .line 194
    iput p2, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->cid:I

    .line 195
    iput p1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->serialnum:I

    .line 196
    iget v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentAPNId:I

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->APNID:I

    .line 197
    iget v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->currentRadioTech:I

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$conHistory;->currRadioTech:I

    .line 198
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public setFailHistory(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .param p1, "ds"    # Ljava/lang/String;
    .param p2, "ipv"    # Ljava/lang/String;
    .param p3, "currRadioTech"    # I
    .param p4, "reason"    # I
    .param p5, "reasonNum"    # I
    .param p6, "dy"    # I

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryOnLTE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryOnLTE:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_2

    .line 288
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/MMdebuger;->UpdateCurrentTime()V

    .line 291
    new-instance v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;

    iget v2, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurYear:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMonth:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurDay:I

    iget v5, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurHour:I

    iget v6, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurMinute:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mcurSecond:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;-><init>(Lcom/android/internal/telephony/lgdata/MMdebuger;IIIIII)V

    .line 292
    .local v0, "binfo":Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;
    if-nez p6, :cond_5

    .line 293
    const/16 v1, 0x63

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    .line 297
    :goto_0
    iget v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    packed-switch v1, :pswitch_data_0

    .line 311
    :goto_1
    const-string v1, "IP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 312
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNIPv:I

    .line 319
    :cond_3
    :goto_2
    iget v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->LastConRadioTech:I

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->RequestRadioTech:I

    .line 320
    iput p3, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->ResponseRadioTech:I

    .line 321
    iput p4, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->reason:I

    .line 322
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    const/16 v1, 0xe

    if-ne p3, v1, :cond_8

    .line 325
    iget v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    packed-switch v1, :pswitch_data_1

    .line 339
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryOnLTE:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_4
    :goto_4
    return-void

    .line 295
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/MMdebuger;->dstoint(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    goto :goto_0

    .line 299
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasion:[I

    const/4 v2, 0x0

    aput p5, v1, v2

    goto :goto_1

    .line 302
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasion:[I

    const/4 v2, 0x1

    aput p5, v1, v2

    goto :goto_1

    .line 305
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasion:[I

    const/4 v2, 0x2

    aput p5, v1, v2

    goto :goto_1

    .line 313
    :cond_6
    const-string v1, "IPV6"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 314
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNIPv:I

    goto :goto_2

    .line 315
    :cond_7
    const-string v1, "IPV4V6"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNIPv:I

    goto :goto_2

    .line 327
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnLTE:[I

    const/4 v2, 0x0

    aput p5, v1, v2

    goto :goto_3

    .line 330
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnLTE:[I

    const/4 v2, 0x1

    aput p5, v1, v2

    .line 331
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOfInternetPND:[I

    const/4 v2, 0x0

    aput p5, v1, v2

    goto :goto_3

    .line 334
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnLTE:[I

    const/4 v2, 0x2

    aput p5, v1, v2

    goto :goto_3

    .line 340
    :cond_8
    const/16 v1, 0xd

    if-ne p3, v1, :cond_4

    .line 341
    iget v1, v0, Lcom/android/internal/telephony/lgdata/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    packed-switch v1, :pswitch_data_2

    .line 355
    :goto_5
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 343
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnEHRPD:[I

    const/4 v2, 0x0

    aput p5, v1, v2

    goto :goto_5

    .line 346
    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnEHRPD:[I

    const/4 v2, 0x1

    aput p5, v1, v2

    .line 347
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOfInternetPND:[I

    const/4 v2, 0x1

    aput p5, v1, v2

    goto :goto_5

    .line 350
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->lastfailreasionOnEHRPD:[I

    const/4 v2, 0x2

    aput p5, v1, v2

    goto :goto_5

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 325
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 341
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setMaxLogSize(I)V
    .locals 2
    .param p1, "maxnum"    # I

    .prologue
    const/16 v1, 0x1f4

    const/16 v0, 0xa

    .line 135
    iput p1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    .line 136
    if-le p1, v1, :cond_1

    .line 137
    iput v1, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    if-ge p1, v0, :cond_0

    .line 139
    iput v0, p0, Lcom/android/internal/telephony/lgdata/MMdebuger;->mMaxSize:I

    goto :goto_0
.end method

.method public setTimeoutHistory(IIIII)V
    .locals 0
    .param p1, "currRadioTech"    # I
    .param p2, "reqRadioTech"    # I
    .param p3, "reqSrvState"    # I
    .param p4, "CurrSrvState"    # I
    .param p5, "apnid"    # I

    .prologue
    .line 247
    return-void
.end method
