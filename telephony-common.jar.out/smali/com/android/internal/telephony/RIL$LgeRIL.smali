.class public Lcom/android/internal/telephony/RIL$LgeRIL;
.super Ljava/lang/Object;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LgeRIL"
.end annotation


# instance fields
.field final DBG:Z

.field final LOG_TAG:Ljava/lang/String;

.field mRil:Lcom/android/internal/telephony/RIL;

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RIL;)V
    .locals 2
    .param p2, "ril"    # Lcom/android/internal/telephony/RIL;

    .prologue
    .line 7219
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7216
    const-string v0, "RILJLge"

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->LOG_TAG:Ljava/lang/String;

    .line 7217
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->DBG:Z

    .line 7220
    iput-object p2, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->mRil:Lcom/android/internal/telephony/RIL;

    .line 7221
    return-void
.end method

.method private dLogD(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 8028
    iget-boolean v0, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->DBG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8029
    const-string v0, "LGSmartcard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RILJLge] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8030
    :cond_0
    return-void
.end method


# virtual methods
.method protected enableSmartcardLog(Lcom/android/internal/telephony/RILRequest;)Z
    .locals 3
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    const/4 v0, 0x1

    .line 8144
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v2, 0x15f

    if-lt v1, v2, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v2, 0x163

    if-le v1, v2, :cond_3

    :cond_0
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v2, 0x72

    if-lt v1, v2, :cond_1

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v2, 0x75

    if-le v1, v2, :cond_3

    :cond_1
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v2, 0x83

    if-eq v1, v2, :cond_3

    .line 8154
    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->DBG:Z

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 8110
    const/16 v1, 0x161

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 8113
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8114
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccCloseChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL$LgeRIL;->dLogD(Ljava/lang/String;)V

    .line 8119
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 8120
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 8052
    if-nez p3, :cond_1

    .line 8053
    const/16 v1, 0x15f

    invoke-static {v1, p8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 8058
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8059
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8060
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8061
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8062
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8063
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 8064
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 8065
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8066
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8068
    iget-boolean v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->DBG:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 8069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccExchangeAPDU: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL$LgeRIL;->dLogD(Ljava/lang/String;)V

    .line 8076
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 8077
    return-void

    .line 8055
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_1
    const/16 v1, 0x162

    invoke-static {v1, p8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .restart local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    goto/16 :goto_0
.end method

.method public iccGetATR(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 8131
    const/16 v1, 0x163

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 8133
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8134
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccGetATR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL$LgeRIL;->dLogD(Ljava/lang/String;)V

    .line 8138
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 8139
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 8089
    const/16 v1, 0x160

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 8092
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccOpenChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL$LgeRIL;->dLogD(Ljava/lang/String;)V

    .line 8097
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 8098
    return-void
.end method

.method protected processRegistrantsUnsolicitedForOEM(ILjava/lang/Object;)V
    .locals 25
    .param p1, "requestCommand"    # I
    .param p2, "responseReadMessage"    # Ljava/lang/Object;

    .prologue
    .line 7531
    sparse-switch p1, :sswitch_data_0

    .line 8004
    .end local p2    # "responseReadMessage":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 7534
    .restart local p2    # "responseReadMessage":Ljava/lang/Object;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const-string v21, "[Periodic CSG] setCSGSelectionManual in RIL.java :  "

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7537
    const/16 v20, 0xff

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v18

    .line 7539
    .local v18, "rr":Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Parcel;->writeInt(I)V

    .line 7540
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Parcel;->writeInt(I)V

    .line 7542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0

    .line 7549
    .end local v18    # "rr":Lcom/android/internal/telephony/RILRequest;
    :sswitch_1
    const/16 v20, 0x0

    const-string v21, "speech_codec_ind"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 7551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7553
    check-cast p2, [I

    .end local p2    # "responseReadMessage":Ljava/lang/Object;
    move-object/from16 v6, p2

    check-cast v6, [I

    .line 7554
    .local v6, "codec":[I
    if-eqz v6, :cond_0

    .line 7556
    new-instance v8, Landroid/content/Intent;

    const-string v20, "com.lge.intent.action.VOICE_CODEC_INDICATOR"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7557
    .local v8, "intent":Landroid/content/Intent;
    const-string v20, "speech_codec"

    const/16 v21, 0x0

    aget v21, v6, v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7561
    # getter for: Lcom/android/internal/telephony/RIL;->iec:Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;
    invoke-static {}, Lcom/android/internal/telephony/RIL;->access$3600()Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->isIncomingExtendedCallstate()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 7562
    const/16 v20, 0x1

    const/16 v21, 0x0

    aget v21, v6, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 7563
    # getter for: Lcom/android/internal/telephony/RIL;->iec:Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;
    invoke-static {}, Lcom/android/internal/telephony/RIL;->access$3600()Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->isHDVoice:Z

    .line 7567
    :goto_1
    const-string v20, "IncomingExtendedCallstate"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "HDVoice: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    # getter for: Lcom/android/internal/telephony/RIL;->iec:Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;
    invoke-static {}, Lcom/android/internal/telephony/RIL;->access$3600()Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;

    move-result-object v22

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->isHDVoice:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    # invokes: Lcom/android/internal/telephony/RIL;->broadcastIncomingExtendedCallstate()V
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/RIL;->access$3700(Lcom/android/internal/telephony/RIL;)V

    goto/16 :goto_0

    .line 7565
    :cond_1
    # getter for: Lcom/android/internal/telephony/RIL;->iec:Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;
    invoke-static {}, Lcom/android/internal/telephony/RIL;->access$3600()Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/internal/telephony/RIL$IncomingExtendedCallstate;->isHDVoice:Z

    goto :goto_1

    .line 7576
    .end local v6    # "codec":[I
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local p2    # "responseReadMessage":Ljava/lang/Object;
    :sswitch_2
    const/4 v15, 0x0

    .line 7577
    .local v15, "mCat":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7579
    check-cast p2, [I

    .end local p2    # "responseReadMessage":Ljava/lang/Object;
    move-object/from16 v7, p2

    check-cast v7, [I

    .line 7581
    .local v7, "data":[I
    if-eqz v7, :cond_2

    array-length v0, v7

    move/from16 v20, v0

    if-lez v20, :cond_2

    .line 7582
    const/16 v20, 0x0

    aget v20, v7, v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const/4 v15, 0x1

    .line 7584
    :cond_2
    :goto_2
    new-instance v10, Landroid/content/Intent;

    const-string v20, "com.lge.systemui.ACTION_Italy_CAT_6_CA_INDICATOR"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7585
    .local v10, "intent_cat_CA":Landroid/content/Intent;
    const-string v20, "4G+"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 7582
    .end local v10    # "intent_cat_CA":Landroid/content/Intent;
    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .line 7591
    .end local v7    # "data":[I
    .end local v15    # "mCat":Z
    .restart local p2    # "responseReadMessage":Ljava/lang/Object;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaSessionSuccessRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaSessionSuccessRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7598
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLog(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$3800(Lcom/android/internal/telephony/RIL;I)V

    .line 7599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaSessionFailRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaSessionFailRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7605
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSidChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSidChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7612
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mWpbxStateChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mWpbxStateChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7619
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLog(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$3800(Lcom/android/internal/telephony/RIL;I)V

    .line 7620
    check-cast p2, [I

    .end local p2    # "responseReadMessage":Ljava/lang/Object;
    move-object/from16 v14, p2

    check-cast v14, [I

    .line 7621
    .local v14, "lockInfo":[I
    if-eqz v14, :cond_5

    .line 7622
    array-length v0, v14

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 7623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLockStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLockStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v14, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7627
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CDMA_LOCK_INFO ERROR with wrong length "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v14

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7630
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const-string v21, "CDMA_LOCK_INFO is NULL"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7634
    .end local v14    # "lockInfo":[I
    .restart local p2    # "responseReadMessage":Ljava/lang/Object;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLog(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$3800(Lcom/android/internal/telephony/RIL;I)V

    .line 7635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNetworkErrorDispRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNetworkErrorDispRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7643
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mWcdmaRejectReceivedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mWcdmaRejectReceivedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7650
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mWcdmaAcceptReceivedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mWcdmaAcceptReceivedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7659
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mWcdmaNetChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mWcdmaNetChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7666
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mWcdmaNetToKoreaChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mWcdmaNetToKoreaChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7675
    :sswitch_d
    const/16 v20, 0x0

    const-string v21, "LGU_KNIGHT_V2_9"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 7677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7679
    new-instance v12, Landroid/content/Intent;

    const-string v20, "com.lguplus.uknight.intent.receive.MEM_FULL"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7680
    .local v12, "intent_mem_full":Landroid/content/Intent;
    const/16 v20, 0x20

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 7682
    .end local v12    # "intent_mem_full":Landroid/content/Intent;
    :cond_6
    const/16 v20, 0x0

    const-string v21, "SKT_DOD"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 7684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7686
    new-instance v13, Landroid/content/Intent;

    const-string v20, "com.skt.smartagent.receive.MEM_FULL"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7687
    .local v13, "intent_memory_full":Landroid/content/Intent;
    const/16 v20, 0x20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 7697
    .end local v13    # "intent_memory_full":Landroid/content/Intent;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7699
    new-instance v13, Landroid/content/Intent;

    const-string v20, "com.lge.moca.receive.MEM_FULL"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7700
    .restart local v13    # "intent_memory_full":Landroid/content/Intent;
    const/16 v20, 0x20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 7707
    .end local v13    # "intent_memory_full":Landroid/content/Intent;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHdrLockRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHdrLockRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7715
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLteLockRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLteLockRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7723
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLteEmmRejectRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLteEmmRejectRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7735
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    move-object/from16 v20, p2

    .line 7737
    check-cast v20, [I

    check-cast v20, [I

    if-eqz v20, :cond_7

    .line 7738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SPRINT LTE_EHRPD_FORCED : "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v20, p2

    check-cast v20, [I

    check-cast v20, [I

    const/16 v23, 0x0

    aget v20, v20, v23

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7743
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLteEhrpdForcedChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLteEhrpdForcedChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7740
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const-string v21, "(int[])responseReadMessage) is NULL"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto :goto_3

    .line 7752
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    move-object/from16 v20, p2

    .line 7755
    check-cast v20, [I

    check-cast v20, [I

    if-eqz v20, :cond_8

    .line 7756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SPRINT LTE_ROAM_INDICATOR : "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v20, p2

    check-cast v20, [I

    check-cast v20, [I

    const/16 v23, 0x0

    aget v20, v20, v23

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7759
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLTERoamingIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLTERoamingIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7768
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    move-object/from16 v20, p2

    .line 7771
    check-cast v20, [I

    check-cast v20, [I

    if-eqz v20, :cond_9

    .line 7772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SPRINT HDR_ROAM_INDICATOR : "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v20, p2

    check-cast v20, [I

    check-cast v20, [I

    const/16 v23, 0x0

    aget v20, v20, v23

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7775
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHDRRoamingIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHDRRoamingIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7784
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7787
    check-cast p2, [I

    .end local p2    # "responseReadMessage":Ljava/lang/Object;
    move-object/from16 v16, p2

    check-cast v16, [I

    .line 7789
    .local v16, "networkType":[I
    if-eqz v16, :cond_a

    .line 7791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Broadcast(change) RIL_UNSOL_VOLTE_E911_NETWORK_TYPE intent - result = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v16, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7793
    new-instance v11, Landroid/content/Intent;

    const-string v20, "com.lge.intent.action.VOLTE_E911_NETWORK_TYPE_COMPLETE"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7794
    .local v11, "intent_i":Landroid/content/Intent;
    const-string v20, "result"

    const/16 v21, 0x0

    aget v21, v16, v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 7799
    .end local v11    # "intent_i":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const-string v21, "RIL_UNSOL_VOLTE_E911_NETWORK_TYPE is ERROR with wrong data"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7808
    .end local v16    # "networkType":[I
    .restart local p2    # "responseReadMessage":Ljava/lang/Object;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLog(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$3800(Lcom/android/internal/telephony/RIL;I)V

    .line 7811
    new-instance v9, Landroid/content/Intent;

    const-string v20, "com.lge.intent.action.ACTION_E911_STATE_READY_FOR_VOLTE"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7812
    .local v9, "intentForVoLTE":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const-string v21, "Broadcast VOLTE_E911_STATE_READY intent"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7822
    .end local v9    # "intentForVoLTE":Landroid/content/Intent;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7825
    move-object/from16 v5, p2

    .line 7827
    .local v5, "absTime":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSIB16TimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    .line 7828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSIB16TimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v5, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7832
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/android/internal/telephony/RIL;->mLastSIB16TimeInfo:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7839
    .end local v5    # "absTime":Ljava/lang/Object;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7841
    const-string v20, "VZW"

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v20, p2

    .line 7842
    check-cast v20, [I

    check-cast v20, [I

    if-eqz v20, :cond_0

    check-cast p2, [I

    .end local p2    # "responseReadMessage":Ljava/lang/Object;
    check-cast p2, [I

    const/16 v20, 0x0

    aget v20, p2, v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 7843
    new-instance v8, Landroid/content/Intent;

    const-string v20, "com.lge.intent.COLD_SIM_DETECTED"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7844
    .restart local v8    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const-string v21, "cold SIM detected"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7854
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local p2    # "responseReadMessage":Ljava/lang/Object;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    move-object/from16 v20, p2

    .line 7856
    check-cast v20, [I

    check-cast v20, [I

    if-eqz v20, :cond_c

    .line 7857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "UNSOL_LTE_NETWORK_INFO : "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v20, p2

    check-cast v20, [I

    check-cast v20, [I

    const/16 v23, 0x0

    aget v20, v20, v23

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7862
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLteNetworkInfoRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLteNetworkInfoRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7859
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const-string v21, "(int[])responseReadMessage) is NULL"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto :goto_4

    .line 7870
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->lgeCipheringIndRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->lgeCipheringIndRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7880
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->lgeRacIndRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 7884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->lgeRacIndRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/AsyncResult;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 7891
    :sswitch_1c
    const/16 v20, 0x0

    const-string v21, "SUPPORT_LOG_RF_INFO"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 7893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7895
    check-cast p2, [I

    .end local p2    # "responseReadMessage":Ljava/lang/Object;
    move-object/from16 v17, p2

    check-cast v17, [I

    .line 7897
    .local v17, "rfbandInfo":[I
    if-eqz v17, :cond_d

    .line 7899
    new-instance v8, Landroid/content/Intent;

    const-string v20, "com.lge.intent.action.LOG_RF_BAND_INFO"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7900
    .restart local v8    # "intent":Landroid/content/Intent;
    const/high16 v20, 0x20000000

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7901
    const-string v20, "interface"

    const/16 v21, 0x0

    aget v21, v17, v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7902
    const-string v20, "band"

    const/16 v21, 0x1

    aget v21, v17, v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7903
    const-string v20, "channel"

    const/16 v21, 0x2

    aget v21, v17, v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 7908
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const-string v21, "RIL_UNSOL_LOG_RF_BAND_INFO is ERROR with wrong data"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7916
    .end local v17    # "rfbandInfo":[I
    .restart local p2    # "responseReadMessage":Ljava/lang/Object;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7918
    check-cast p2, [I

    .end local p2    # "responseReadMessage":Ljava/lang/Object;
    move-object/from16 v19, p2

    check-cast v19, [I

    .line 7920
    .local v19, "vzwRsvPCOInfo":[I
    if-eqz v19, :cond_13

    .line 7921
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 7922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "VZW PCO MCC :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v19, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "VZW PCO MNC :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget v22, v19, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "VZW PCO PCO VAL:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    aget v22, v19, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "VZW PCO PDN ID :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x5

    aget v22, v19, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7928
    sget-object v20, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_LTE_PCO_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 7931
    const/16 v20, 0x2

    aget v20, v19, v20

    if-ltz v20, :cond_e

    .line 7932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v21, v19, v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/RIL;->curr_pco_value:I

    .line 7936
    :cond_e
    const/16 v20, 0x5

    aget v20, v19, v20

    if-ltz v20, :cond_f

    .line 7937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v21, v19, v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/RIL;->curr_pdn_id:I

    .line 7940
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "LTE_PCO_DATA :: curr_pco_value : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/RIL;->curr_pco_value:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "LTE_PCO_DATA :: curr_pdn_id : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/RIL;->curr_pdn_id:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/RIL;->curr_pdn_id:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 7945
    const-string v20, "persist.lg.data.ims_pco"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/RIL;->curr_pco_value:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "LTE_PCO_DATA :: SystemProperties lg.data.pco_ims : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/RIL;->curr_pco_value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7959
    :goto_5
    new-instance v4, Landroid/content/Intent;

    const-string v20, "com.lge.android.LTE_PCO"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7961
    .local v4, "LtePco":Landroid/content/Intent;
    const-string v20, "extra_pco_profile_num"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/RIL;->curr_pdn_id:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7962
    const-string v20, "extra_pco_value"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/RIL;->curr_pco_value:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const-string v21, "LTE_PCO_DATA :: sent Intent"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7948
    .end local v4    # "LtePco":Landroid/content/Intent;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/RIL;->curr_pdn_id:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 7950
    const-string v20, "persist.lg.data.internet_pco"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/RIL;->curr_pco_value:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "LTE_PCO_DATA :: SystemProperties lge.data.pco_internet : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/RIL;->curr_pco_value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 7955
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "LTE_PCO_DATA :: Nothing to do for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/RIL;->curr_pdn_id:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7971
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "VZW_RESERVED_PCO_INFO with wrong length "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7974
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const-string v21, "VZW_RESERVED_PCO_INFO is NULL"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7980
    .end local v19    # "vzwRsvPCOInfo":[I
    .restart local p2    # "responseReadMessage":Ljava/lang/Object;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const-string v21, "[LDB] MODEM_RESET"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const-string v21, "[LDB] send intent (com.lge.intent.action.LDB_MODEM_RESET)"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7985
    new-instance v8, Landroid/content/Intent;

    const-string v20, "com.lge.intent.action.LDB_MODEM_RESET"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7986
    .restart local v8    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const-string v21, "[LDB] < RIL_UNSOL_LDB_MODEM_RESET!"

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/RIL;->access$3500(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7993
    .end local v8    # "intent":Landroid/content/Intent;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$3400(Lcom/android/internal/telephony/RIL;ILjava/lang/Object;)V

    .line 7995
    const/16 v20, 0x0

    const-string v21, "lge_modem"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 7996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    check-cast p2, [I

    .end local p2    # "responseReadMessage":Ljava/lang/Object;
    check-cast p2, [I

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lge/internal/telephony/qcrilmsgtunnel/LGQcrilMsgTunnel;->broadcastVolteSsacInfoIntent(Landroid/content/Context;[I)V

    goto/16 :goto_0

    .line 7531
    :sswitch_data_0
    .sparse-switch
        0x41b -> :sswitch_1b
        0x478 -> :sswitch_3
        0x479 -> :sswitch_4
        0x47a -> :sswitch_5
        0x47b -> :sswitch_6
        0x47f -> :sswitch_12
        0x480 -> :sswitch_b
        0x481 -> :sswitch_c
        0x482 -> :sswitch_14
        0x484 -> :sswitch_d
        0x486 -> :sswitch_1f
        0x488 -> :sswitch_0
        0x489 -> :sswitch_1a
        0x48d -> :sswitch_1c
        0x491 -> :sswitch_e
        0x499 -> :sswitch_1
        0x49a -> :sswitch_2
        0x49f -> :sswitch_15
        0x4a0 -> :sswitch_16
        0x4a2 -> :sswitch_1d
        0x4a3 -> :sswitch_18
        0x4a4 -> :sswitch_17
        0x4a5 -> :sswitch_19
        0x4a7 -> :sswitch_1e
        0x4a8 -> :sswitch_7
        0x4a9 -> :sswitch_8
        0x4ab -> :sswitch_9
        0x4ac -> :sswitch_a
        0x4ad -> :sswitch_f
        0x4ae -> :sswitch_10
        0x4af -> :sswitch_11
        0x4b2 -> :sswitch_13
    .end sparse-switch
.end method

.method public responseOpenLogicalChannel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8011
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 8013
    .local v0, "response":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 8014
    .local v1, "temp":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 8015
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v0, v5

    .line 8017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseOpenLogicalChannel::Type(1-int[])(2-int,String)::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL$LgeRIL;->dLogD(Ljava/lang/String;)V

    .line 8018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseOpenLogicalChannel::channel id::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL$LgeRIL;->dLogD(Ljava/lang/String;)V

    .line 8019
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseOpenLogicalChannel::response::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL$LgeRIL;->dLogD(Ljava/lang/String;)V

    .line 8021
    return-object v0

    .line 8015
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected responseSolicitedForOEM(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "requestCommand"    # I
    .param p2, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 7227
    const/4 v0, 0x0

    .line 7228
    .local v0, "ret":Ljava/lang/Object;
    sparse-switch p1, :sswitch_data_0

    .line 7405
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized solicited response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7231
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->mRil:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 7407
    .end local v0    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 7234
    .restart local v0    # "ret":Ljava/lang/Object;
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->mRil:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1500(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7237
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->mRil:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1500(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7239
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7241
    :sswitch_4
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL$LgeRIL;->responseOpenLogicalChannel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7242
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1600(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7243
    :sswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1600(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7244
    :sswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1500(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7247
    :sswitch_8
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->mRil:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7250
    :sswitch_9
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7253
    :sswitch_a
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->mRil:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7256
    :sswitch_b
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7257
    :sswitch_c
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7258
    :sswitch_d
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7261
    :sswitch_e
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7265
    :sswitch_f
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7269
    :sswitch_10
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseLogging(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1700(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7273
    :sswitch_11
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7277
    :sswitch_12
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseGetModemInfo(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1800(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7278
    :sswitch_13
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7281
    :sswitch_14
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7284
    :sswitch_15
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7287
    :sswitch_16
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1500(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7292
    :sswitch_17
    const-string v1, "LGU_KNIGHT_V2_9"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKT_DOD"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7294
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1900(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7296
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7298
    .local v0, "ret":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 7300
    .local v0, "ret":Ljava/lang/Object;
    :sswitch_18
    const-string v1, "LGU_KNIGHT_V2_9"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7301
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseKNGetData(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$2000(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7303
    :cond_2
    const-string v1, "SKT_DOD"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7304
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseOemSsaGetData(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$2100(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7306
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7308
    .local v0, "ret":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 7311
    .local v0, "ret":Ljava/lang/Object;
    :sswitch_19
    const-string v1, "LGU_KNIGHT_V2_9"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7312
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7314
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7316
    .local v0, "ret":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 7319
    .local v0, "ret":Ljava/lang/Object;
    :sswitch_1a
    const-string v1, "SKT_DOD"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7320
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1900(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7322
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7324
    .local v0, "ret":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 7327
    .local v0, "ret":Ljava/lang/Object;
    :sswitch_1b
    const-string v1, "LGU_KNIGHT_V2_9"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "SKT_DOD"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7329
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7331
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7333
    .local v0, "ret":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 7338
    .local v0, "ret":Ljava/lang/Object;
    :sswitch_1c
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1900(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 7339
    goto/16 :goto_0

    .line 7342
    :sswitch_1d
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseMocaGetData(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$2200(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 7343
    goto/16 :goto_0

    .line 7346
    :sswitch_1e
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseMocaGetRFParameter(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$2300(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 7347
    goto/16 :goto_0

    .line 7350
    :sswitch_1f
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseMocaGetMisc(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$2400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 7351
    goto/16 :goto_0

    .line 7354
    :sswitch_20
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 7355
    goto/16 :goto_0

    .line 7358
    :sswitch_21
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1900(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 7359
    goto/16 :goto_0

    .line 7362
    :sswitch_22
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 7363
    goto/16 :goto_0

    .line 7367
    :sswitch_23
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7370
    :sswitch_24
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7373
    :sswitch_25
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1500(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7374
    :sswitch_26
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1500(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7377
    :sswitch_27
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7380
    :sswitch_28
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseAntennaConf(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$2500(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7381
    :sswitch_29
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseAntennaInfo(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$2600(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7385
    :sswitch_2a
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7389
    :sswitch_2b
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7390
    :sswitch_2c
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7394
    :sswitch_2d
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1500(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7398
    :sswitch_2e
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7402
    :sswitch_2f
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7228
    :sswitch_data_0
    .sparse-switch
        0xbf -> :sswitch_9
        0xe7 -> :sswitch_f
        0xe8 -> :sswitch_15
        0xe9 -> :sswitch_26
        0xfa -> :sswitch_2e
        0xfc -> :sswitch_0
        0xfd -> :sswitch_2f
        0xfe -> :sswitch_1
        0xff -> :sswitch_2
        0x100 -> :sswitch_8
        0x115 -> :sswitch_b
        0x116 -> :sswitch_c
        0x117 -> :sswitch_d
        0x118 -> :sswitch_e
        0x154 -> :sswitch_23
        0x155 -> :sswitch_25
        0x159 -> :sswitch_24
        0x15e -> :sswitch_14
        0x15f -> :sswitch_5
        0x160 -> :sswitch_4
        0x161 -> :sswitch_3
        0x162 -> :sswitch_6
        0x163 -> :sswitch_7
        0x16c -> :sswitch_28
        0x16d -> :sswitch_29
        0x171 -> :sswitch_27
        0x176 -> :sswitch_13
        0x177 -> :sswitch_12
        0x178 -> :sswitch_16
        0x17d -> :sswitch_2a
        0x180 -> :sswitch_a
        0x183 -> :sswitch_1a
        0x184 -> :sswitch_17
        0x185 -> :sswitch_18
        0x186 -> :sswitch_19
        0x187 -> :sswitch_1b
        0x191 -> :sswitch_10
        0x192 -> :sswitch_11
        0x198 -> :sswitch_1e
        0x199 -> :sswitch_1f
        0x19a -> :sswitch_21
        0x19b -> :sswitch_1c
        0x19c -> :sswitch_1d
        0x19d -> :sswitch_22
        0x19e -> :sswitch_20
        0x1cb -> :sswitch_2b
        0x1cc -> :sswitch_2c
        0x4a6 -> :sswitch_2d
    .end sparse-switch
.end method

.method protected responseUnsolicitedForOEM(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "requestCommand"    # I
    .param p2, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 7414
    const/4 v0, 0x0

    .line 7415
    .local v0, "ret":Ljava/lang/Object;
    sparse-switch p1, :sswitch_data_0

    .line 7521
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized unsol response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7418
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1500(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 7523
    .end local v0    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 7421
    .restart local v0    # "ret":Ljava/lang/Object;
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7424
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7427
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseSIB16(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$2700(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7431
    :sswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7432
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7433
    :sswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7434
    :sswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7435
    :sswitch_8
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7436
    :sswitch_9
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7439
    :sswitch_a
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseUnSolLGEUnSol(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$2800(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7442
    :sswitch_b
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7443
    :sswitch_c
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7446
    :sswitch_d
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7447
    :sswitch_e
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7452
    :sswitch_f
    const-string v1, "LGU_KNIGHT_V2_9"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7453
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseKNStateChg(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$2900(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7454
    :cond_0
    const-string v1, "SKT_DOD"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7455
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseOemSsaStateChg(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$3000(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7457
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7459
    .local v0, "ret":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 7460
    .local v0, "ret":Ljava/lang/Object;
    :sswitch_10
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7465
    :sswitch_11
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseMocaMiscNoti(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$3100(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 7466
    goto/16 :goto_0

    .line 7468
    :sswitch_12
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseMocaAlarmEvent(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$3200(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 7469
    goto/16 :goto_0

    .line 7470
    :sswitch_13
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7474
    :sswitch_14
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7475
    :sswitch_15
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7476
    :sswitch_16
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7479
    :sswitch_17
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7482
    :sswitch_18
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7485
    :sswitch_19
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7488
    :sswitch_1a
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7491
    :sswitch_1b
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7494
    :sswitch_1c
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7497
    :sswitch_1d
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7501
    :sswitch_1e
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseUnsolDebugInfo(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$3300(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7504
    :sswitch_1f
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7508
    :sswitch_20
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7512
    :sswitch_21
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7515
    :sswitch_22
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7518
    :sswitch_23
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$LgeRIL;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 7415
    :sswitch_data_0
    .sparse-switch
        0x41b -> :sswitch_20
        0x478 -> :sswitch_4
        0x479 -> :sswitch_5
        0x47a -> :sswitch_6
        0x47b -> :sswitch_7
        0x47f -> :sswitch_1d
        0x480 -> :sswitch_d
        0x481 -> :sswitch_e
        0x482 -> :sswitch_19
        0x483 -> :sswitch_f
        0x484 -> :sswitch_10
        0x485 -> :sswitch_1e
        0x486 -> :sswitch_23
        0x488 -> :sswitch_0
        0x489 -> :sswitch_1f
        0x48d -> :sswitch_21
        0x48f -> :sswitch_11
        0x490 -> :sswitch_12
        0x491 -> :sswitch_13
        0x499 -> :sswitch_1
        0x49a -> :sswitch_2
        0x49f -> :sswitch_17
        0x4a0 -> :sswitch_18
        0x4a3 -> :sswitch_1b
        0x4a4 -> :sswitch_3
        0x4a5 -> :sswitch_1c
        0x4a7 -> :sswitch_22
        0x4a8 -> :sswitch_8
        0x4a9 -> :sswitch_9
        0x4aa -> :sswitch_a
        0x4ab -> :sswitch_b
        0x4ac -> :sswitch_c
        0x4ad -> :sswitch_14
        0x4ae -> :sswitch_15
        0x4af -> :sswitch_16
        0x4b2 -> :sswitch_1a
    .end sparse-switch
.end method
