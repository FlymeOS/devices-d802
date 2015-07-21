.class public Lcom/android/server/CCModeService;
.super Landroid/security/ICCModeService$Stub;
.source "CCModeService.java"


# static fields
.field public static final FAIL:I = -0x1

.field public static final FAIL_ALREADY_CC_MODE_ENABLED:I = -0x2

.field public static final FAIL_CC_MODE_ENABLE:I = -0x4

.field public static final FAIL_CC_MODE_IS_NOT_SUPPORTED:I = -0xa

.field public static final FAIL_DEVICE_IS_NOT_CC_MODE:I = -0x3

.field public static final FAIL_FIPS_MODE_SET:I = -0x9

.field public static final FAIL_FTM_READ:I = -0x7

.field public static final FAIL_FTM_WRITE:I = -0x8

.field public static final FAIL_INTERNAL_DEVICE_IS_NOT_ENCRYPTED:I = -0x5

.field public static final FAIL_SD_DEVICE_IS_NOT_ENCRYPTED:I = -0x6

.field private static final Reboot_Message:Ljava/lang/String; = "Device will be Rebooted!!!!"

.field public static final SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CC_MODE"


# instance fields
.field public cc_mode:Lcom/android/server/CCMode;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 53
    invoke-direct {p0}, Landroid/security/ICCModeService$Stub;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/CCModeService;->mContext:Landroid/content/Context;

    .line 55
    new-instance v1, Lcom/android/server/CCMode;

    invoke-direct {v1}, Lcom/android/server/CCMode;-><init>()V

    iput-object v1, p0, Lcom/android/server/CCModeService;->cc_mode:Lcom/android/server/CCMode;

    .line 57
    invoke-direct {p0}, Lcom/android/server/CCModeService;->check_ccmode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 59
    const-string v1, "CC_MODE"

    const-string v2, "CCModeService: Openssl Self-test Started!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/android/server/CCModeService;->cc_mode:Lcom/android/server/CCMode;

    invoke-virtual {v1}, Lcom/android/server/CCMode;->cc_mode_selftest()I

    move-result v0

    .line 61
    .local v0, "status":I
    if-eq v0, v3, :cond_0

    .line 63
    const-string v1, "CC_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CCModeService: Openssl Self-test failed!!! errorno="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0    # "status":I
    :goto_0
    return-void

    .line 67
    .restart local v0    # "status":I
    :cond_0
    const-string v1, "CC_MODE"

    const-string v2, "CCModeService: Openssl Self-test successfully finished !!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v1, "CC_MODE"

    const-string v2, "CCModeService: BC Self-test Started!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lcom/android/server/CCModeService;->bc_self_test()V

    .line 70
    const-string v1, "CC_MODE"

    const-string v2, "CCModeService:BC Self-test finished!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    .end local v0    # "status":I
    :cond_1
    const-string v1, "CC_MODE"

    const-string v2, "Self-test: device is in non cc_mode. BC & Openssl Self-test will be skipped~!!!\n"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bc_self_test()V
    .locals 23

    .prologue
    .line 173
    new-instance v0, Lcom/android/org/bouncycastle/crypto/test/AESTest;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/test/AESTest;-><init>()V

    .line 174
    .local v0, "aes":Lcom/android/org/bouncycastle/crypto/test/AESTest;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/test/AESTest;->perform()Lcom/android/org/bouncycastle/util/test/TestResult;

    move-result-object v1

    .line 176
    .local v1, "aes_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    invoke-interface {v1}, Lcom/android/org/bouncycastle/util/test/TestResult;->isSuccessful()Z

    move-result v20

    if-nez v20, :cond_a

    .line 178
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v1}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-interface {v1}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 181
    invoke-interface {v1}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/CCModeService;->set_selftest_result()V

    .line 190
    :goto_0
    new-instance v2, Lcom/android/org/bouncycastle/crypto/test/AESWrapTest;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/test/AESWrapTest;-><init>()V

    .line 191
    .local v2, "aes_wrap":Lcom/android/org/bouncycastle/crypto/test/AESWrapTest;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/test/AESWrapTest;->perform()Lcom/android/org/bouncycastle/util/test/TestResult;

    move-result-object v3

    .line 192
    .local v3, "aes_wrap_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    invoke-interface {v3}, Lcom/android/org/bouncycastle/util/test/TestResult;->isSuccessful()Z

    move-result v20

    if-nez v20, :cond_b

    .line 194
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v3}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-interface {v3}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 197
    invoke-interface {v3}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/CCModeService;->set_selftest_result()V

    .line 206
    :goto_1
    new-instance v4, Lcom/android/org/bouncycastle/crypto/test/DESedeTest;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/crypto/test/DESedeTest;-><init>()V

    .line 207
    .local v4, "des3":Lcom/android/org/bouncycastle/crypto/test/DESedeTest;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/test/DESedeTest;->perform()Lcom/android/org/bouncycastle/util/test/TestResult;

    move-result-object v5

    .line 208
    .local v5, "des3_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    invoke-interface {v5}, Lcom/android/org/bouncycastle/util/test/TestResult;->isSuccessful()Z

    move-result v20

    if-nez v20, :cond_c

    .line 210
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v5}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-interface {v5}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 213
    invoke-interface {v5}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/CCModeService;->set_selftest_result()V

    .line 222
    :goto_2
    new-instance v8, Lcom/android/org/bouncycastle/crypto/test/RSATest;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/crypto/test/RSATest;-><init>()V

    .line 223
    .local v8, "rsa":Lcom/android/org/bouncycastle/crypto/test/RSATest;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/crypto/test/RSATest;->perform()Lcom/android/org/bouncycastle/util/test/TestResult;

    move-result-object v9

    .line 224
    .local v9, "rsa_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    invoke-interface {v9}, Lcom/android/org/bouncycastle/util/test/TestResult;->isSuccessful()Z

    move-result v20

    if-nez v20, :cond_d

    .line 226
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v9}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-interface {v9}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 229
    invoke-interface {v9}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/CCModeService;->set_selftest_result()V

    .line 238
    :goto_3
    new-instance v10, Lcom/android/org/bouncycastle/crypto/test/RSADigestSignerTest;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/crypto/test/RSADigestSignerTest;-><init>()V

    .line 239
    .local v10, "rsa_sign":Lcom/android/org/bouncycastle/crypto/test/RSADigestSignerTest;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/test/RSADigestSignerTest;->perform()Lcom/android/org/bouncycastle/util/test/TestResult;

    move-result-object v11

    .line 240
    .local v11, "rsa_sign_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    invoke-interface {v11}, Lcom/android/org/bouncycastle/util/test/TestResult;->isSuccessful()Z

    move-result v20

    if-nez v20, :cond_e

    .line 242
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v11}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-interface {v11}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 245
    invoke-interface {v11}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/CCModeService;->set_selftest_result()V

    .line 254
    :goto_4
    new-instance v12, Lcom/android/org/bouncycastle/crypto/test/SHA1HMacTest;

    invoke-direct {v12}, Lcom/android/org/bouncycastle/crypto/test/SHA1HMacTest;-><init>()V

    .line 255
    .local v12, "sha1":Lcom/android/org/bouncycastle/crypto/test/SHA1HMacTest;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/crypto/test/SHA1HMacTest;->perform()Lcom/android/org/bouncycastle/util/test/TestResult;

    move-result-object v13

    .line 256
    .local v13, "sha1_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    invoke-interface {v13}, Lcom/android/org/bouncycastle/util/test/TestResult;->isSuccessful()Z

    move-result v20

    if-nez v20, :cond_f

    .line 258
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v13}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-interface {v13}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 261
    invoke-interface {v13}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    .line 263
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/CCModeService;->set_selftest_result()V

    .line 270
    :goto_5
    new-instance v14, Lcom/android/org/bouncycastle/crypto/test/SHA256HMacTest;

    invoke-direct {v14}, Lcom/android/org/bouncycastle/crypto/test/SHA256HMacTest;-><init>()V

    .line 271
    .local v14, "sha256":Lcom/android/org/bouncycastle/crypto/test/SHA256HMacTest;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/crypto/test/SHA256HMacTest;->perform()Lcom/android/org/bouncycastle/util/test/TestResult;

    move-result-object v15

    .line 272
    .local v15, "sha256_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    invoke-interface {v15}, Lcom/android/org/bouncycastle/util/test/TestResult;->isSuccessful()Z

    move-result v20

    if-nez v20, :cond_10

    .line 274
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v15}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-interface {v15}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 277
    invoke-interface {v13}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    .line 279
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/CCModeService;->set_selftest_result()V

    .line 286
    :goto_6
    new-instance v16, Lcom/android/org/bouncycastle/crypto/test/SHA384HMacTest;

    invoke-direct/range {v16 .. v16}, Lcom/android/org/bouncycastle/crypto/test/SHA384HMacTest;-><init>()V

    .line 287
    .local v16, "sha384":Lcom/android/org/bouncycastle/crypto/test/SHA384HMacTest;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/crypto/test/SHA384HMacTest;->perform()Lcom/android/org/bouncycastle/util/test/TestResult;

    move-result-object v17

    .line 288
    .local v17, "sha384_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    invoke-interface/range {v17 .. v17}, Lcom/android/org/bouncycastle/util/test/TestResult;->isSuccessful()Z

    move-result v20

    if-nez v20, :cond_11

    .line 290
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v17 .. v17}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-interface/range {v17 .. v17}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_7

    .line 293
    invoke-interface/range {v17 .. v17}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    .line 295
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/CCModeService;->set_selftest_result()V

    .line 302
    :goto_7
    new-instance v18, Lcom/android/org/bouncycastle/crypto/test/SHA512HMacTest;

    invoke-direct/range {v18 .. v18}, Lcom/android/org/bouncycastle/crypto/test/SHA512HMacTest;-><init>()V

    .line 303
    .local v18, "sha512":Lcom/android/org/bouncycastle/crypto/test/SHA512HMacTest;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/crypto/test/SHA512HMacTest;->perform()Lcom/android/org/bouncycastle/util/test/TestResult;

    move-result-object v19

    .line 304
    .local v19, "sha512_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    invoke-interface/range {v19 .. v19}, Lcom/android/org/bouncycastle/util/test/TestResult;->isSuccessful()Z

    move-result v20

    if-nez v20, :cond_12

    .line 306
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v19 .. v19}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-interface/range {v19 .. v19}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 309
    invoke-interface/range {v19 .. v19}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    .line 311
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/CCModeService;->set_selftest_result()V

    .line 318
    :goto_8
    new-instance v6, Lcom/android/org/bouncycastle/crypto/test/MacTest;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/crypto/test/MacTest;-><init>()V

    .line 319
    .local v6, "mac":Lcom/android/org/bouncycastle/crypto/test/MacTest;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/test/MacTest;->perform()Lcom/android/org/bouncycastle/util/test/TestResult;

    move-result-object v7

    .line 320
    .local v7, "mac_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    invoke-interface {v7}, Lcom/android/org/bouncycastle/util/test/TestResult;->isSuccessful()Z

    move-result v20

    if-nez v20, :cond_13

    .line 322
    const-string v20, "BC Self-test: CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-interface {v7}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_9

    .line 325
    invoke-interface {v7}, Lcom/android/org/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    .line 327
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/CCModeService;->set_selftest_result()V

    .line 334
    :goto_9
    return-void

    .line 187
    .end local v2    # "aes_wrap":Lcom/android/org/bouncycastle/crypto/test/AESWrapTest;
    .end local v3    # "aes_wrap_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    .end local v4    # "des3":Lcom/android/org/bouncycastle/crypto/test/DESedeTest;
    .end local v5    # "des3_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    .end local v6    # "mac":Lcom/android/org/bouncycastle/crypto/test/MacTest;
    .end local v7    # "mac_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    .end local v8    # "rsa":Lcom/android/org/bouncycastle/crypto/test/RSATest;
    .end local v9    # "rsa_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    .end local v10    # "rsa_sign":Lcom/android/org/bouncycastle/crypto/test/RSADigestSignerTest;
    .end local v11    # "rsa_sign_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    .end local v12    # "sha1":Lcom/android/org/bouncycastle/crypto/test/SHA1HMacTest;
    .end local v13    # "sha1_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    .end local v14    # "sha256":Lcom/android/org/bouncycastle/crypto/test/SHA256HMacTest;
    .end local v15    # "sha256_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    .end local v16    # "sha384":Lcom/android/org/bouncycastle/crypto/test/SHA384HMacTest;
    .end local v17    # "sha384_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    .end local v18    # "sha512":Lcom/android/org/bouncycastle/crypto/test/SHA512HMacTest;
    .end local v19    # "sha512_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    :cond_a
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v1}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 203
    .restart local v2    # "aes_wrap":Lcom/android/org/bouncycastle/crypto/test/AESWrapTest;
    .restart local v3    # "aes_wrap_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    :cond_b
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v3}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 219
    .restart local v4    # "des3":Lcom/android/org/bouncycastle/crypto/test/DESedeTest;
    .restart local v5    # "des3_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    :cond_c
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v5}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 235
    .restart local v8    # "rsa":Lcom/android/org/bouncycastle/crypto/test/RSATest;
    .restart local v9    # "rsa_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    :cond_d
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v9}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 251
    .restart local v10    # "rsa_sign":Lcom/android/org/bouncycastle/crypto/test/RSADigestSignerTest;
    .restart local v11    # "rsa_sign_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    :cond_e
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v11}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 267
    .restart local v12    # "sha1":Lcom/android/org/bouncycastle/crypto/test/SHA1HMacTest;
    .restart local v13    # "sha1_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    :cond_f
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v13}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 283
    .restart local v14    # "sha256":Lcom/android/org/bouncycastle/crypto/test/SHA256HMacTest;
    .restart local v15    # "sha256_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    :cond_10
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v15}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 299
    .restart local v16    # "sha384":Lcom/android/org/bouncycastle/crypto/test/SHA384HMacTest;
    .restart local v17    # "sha384_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    :cond_11
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v17 .. v17}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 315
    .restart local v18    # "sha512":Lcom/android/org/bouncycastle/crypto/test/SHA512HMacTest;
    .restart local v19    # "sha512_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    :cond_12
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v19 .. v19}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 331
    .restart local v6    # "mac":Lcom/android/org/bouncycastle/crypto/test/MacTest;
    .restart local v7    # "mac_result":Lcom/android/org/bouncycastle/util/test/TestResult;
    :cond_13
    const-string v20, "CC_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BC Self-test: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v7}, Lcom/android/org/bouncycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method private check_ccmode()I
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 146
    const/4 v0, -0x1

    .line 147
    .local v0, "cc_mode":I
    const/4 v3, 0x0

    .line 151
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/sys/crypto/cc_mode"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 159
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 165
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "s":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    if-ne v0, v6, :cond_3

    .line 168
    :goto_1
    return v6

    .line 160
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "s":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 161
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 163
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 155
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v5    # "s":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 156
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 160
    :catch_2
    move-exception v2

    .line 161
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 159
    :goto_3
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 162
    :cond_2
    :goto_4
    throw v6

    .line 160
    :catch_3
    move-exception v2

    .line 161
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 168
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 158
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 155
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private set_selftest_result()V
    .locals 2

    .prologue
    .line 338
    const-string v0, "ro.sys.bc.selftest.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "ro.sys.bc.selftest.status"

    const-string v1, "failed"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v0, "CC_MODE"

    const-string v1, "BC Self-test: Bouncy castle Self test is failed~!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    return-void
.end method


# virtual methods
.method public cc_mode_disable()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v1, -0x1

    .line 102
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/CCModeService;->mContext:Landroid/content/Context;

    const-string v3, "com.lge.permission.ACCESS_CC_MODE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: setSystemProperty() from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires com.lge.security.cc_mode_disable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "CC_MODE"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/CCModeService;->cc_mode:Lcom/android/server/CCMode;

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/android/server/CCModeService;->cc_mode:Lcom/android/server/CCMode;

    invoke-virtual {v2}, Lcom/android/server/CCMode;->cc_mode_disable()I

    move-result v1

    .line 114
    const-string v2, "CC_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CCModeService: result of cc_mode_disable() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    const-string v2, "CC_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CCModeService: cc_mode_disable== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v1
.end method

.method public cc_mode_enable()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v1, -0x1

    .line 81
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/CCModeService;->mContext:Landroid/content/Context;

    const-string v3, "com.lge.permission.ACCESS_CC_MODE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: setSystemProperty() from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires com.lge.security.cc_mode_enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "CC_MODE"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/CCModeService;->cc_mode:Lcom/android/server/CCMode;

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/server/CCModeService;->cc_mode:Lcom/android/server/CCMode;

    invoke-virtual {v2}, Lcom/android/server/CCMode;->cc_mode_enable()I

    move-result v1

    .line 93
    const-string v2, "CC_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CCModeService: result of cc_mode_enable() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    const-string v2, "CC_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CCModeService: cc_mode_enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v1
.end method

.method public cc_mode_isSupported()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v1, -0x1

    .line 124
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/CCModeService;->mContext:Landroid/content/Context;

    const-string v3, "com.lge.permission.ACCESS_CC_MODE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: setSystemProperty() from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires com.lge.security.cc_mode_isSupported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "CC_MODE"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/CCModeService;->cc_mode:Lcom/android/server/CCMode;

    if-eqz v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/android/server/CCModeService;->cc_mode:Lcom/android/server/CCMode;

    invoke-virtual {v2}, Lcom/android/server/CCMode;->cc_mode_isSupported()I

    move-result v1

    .line 137
    const-string v2, "CC_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CCModeService: result of cc_mode_isSupported() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    const-string v2, "CC_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CCModeService: cc_mode_isSupported = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v1
.end method
