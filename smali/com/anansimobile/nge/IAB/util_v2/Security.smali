.class public Lcom/anansimobile/nge/IAB/util_v2/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;
    }
.end annotation


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "Security"

.field private static sKnownNonces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/anansimobile/nge/IAB/util_v2/Security;->RANDOM:Ljava/security/SecureRandom;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/anansimobile/nge/IAB/util_v2/Security;->sKnownNonces:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNonce()J
    .locals 4

    .prologue
    .line 77
    sget-object v2, Lcom/anansimobile/nge/IAB/util_v2/Security;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 78
    .local v0, "nonce":J
    sget-object v2, Lcom/anansimobile/nge/IAB/util_v2/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    return-wide v0
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 197
    :try_start_0
    invoke-static {p0}, Lcom/anansimobile/nge/IAB/util_v2/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 198
    .local v0, "decodedKey":[B
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 199
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/anansimobile/nge/IAB/util_v2/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    .line 200
    .end local v0    # "decodedKey":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 202
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 203
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string/jumbo v3, "Security"

    const-string/jumbo v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 205
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    .line 206
    .local v1, "e":Lcom/anansimobile/nge/IAB/util_v2/Base64DecoderException;
    const-string/jumbo v3, "Security"

    const-string/jumbo v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isNonceKnown(J)Z
    .locals 2
    .param p0, "nonce"    # J

    .prologue
    .line 87
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeNonce(J)V
    .locals 2
    .param p0, "nonce"    # J

    .prologue
    .line 83
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 226
    :try_start_0
    const-string/jumbo v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 227
    .local v1, "sig":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 229
    invoke-static {p2}, Lcom/anansimobile/nge/IAB/util_v2/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    const-string/jumbo v3, "Security"

    const-string/jumbo v4, "Signature verification failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/anansimobile/nge/IAB/util_v2/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 243
    .end local v1    # "sig":Ljava/security/Signature;
    :goto_0
    return v2

    .line 233
    .restart local v1    # "sig":Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v3, "Security"

    const-string/jumbo v4, "NoSuchAlgorithmException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 237
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string/jumbo v3, "Security"

    const-string/jumbo v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 239
    .local v0, "e":Ljava/security/SignatureException;
    const-string/jumbo v3, "Security"

    const-string/jumbo v4, "Signature exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 241
    .local v0, "e":Lcom/anansimobile/nge/IAB/util_v2/Base64DecoderException;
    const-string/jumbo v3, "Security"

    const-string/jumbo v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 28
    .param p0, "signedData"    # Ljava/lang/String;
    .param p1, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    const-string/jumbo v5, "Security"

    const-string/jumbo v26, "data is null"

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/16 v23, 0x0

    .line 185
    :goto_0
    return-object v23

    .line 110
    :cond_0
    const/16 v25, 0x0

    .line 111
    .local v25, "verified":Z
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 125
    const-string/jumbo v4, "your public key here"

    .line 126
    .local v4, "base64EncodedPublicKey":Ljava/lang/String;
    invoke-static {v4}, Lcom/anansimobile/nge/IAB/util_v2/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v18

    .line 127
    .local v18, "key":Ljava/security/PublicKey;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/anansimobile/nge/IAB/util_v2/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    .line 128
    if-nez v25, :cond_1

    .line 129
    const-string/jumbo v5, "Security"

    const-string/jumbo v26, "signature does not match data."

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v23, 0x0

    goto :goto_0

    .line 135
    .end local v4    # "base64EncodedPublicKey":Ljava/lang/String;
    .end local v18    # "key":Ljava/security/PublicKey;
    :cond_1
    const/16 v17, 0x0

    .line 136
    .local v17, "jTransactionsArray":Lorg/json/JSONArray;
    const/16 v19, 0x0

    .line 137
    .local v19, "numTransactions":I
    const-wide/16 v20, 0x0

    .line 139
    .local v20, "nonce":J
    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 142
    .local v16, "jObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "nonce"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 143
    const-string/jumbo v5, "orders"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 144
    if-eqz v17, :cond_2

    .line 145
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 151
    :cond_2
    invoke-static/range {v20 .. v21}, Lcom/anansimobile/nge/IAB/util_v2/Security;->isNonceKnown(J)Z

    move-result v5

    if-nez v5, :cond_3

    .line 152
    const-string/jumbo v5, "Security"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Nonce not found: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/16 v23, 0x0

    goto :goto_0

    .line 147
    .end local v16    # "jObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v13

    .line 148
    .local v13, "e":Lorg/json/JSONException;
    const/16 v23, 0x0

    goto :goto_0

    .line 156
    .end local v13    # "e":Lorg/json/JSONException;
    .restart local v16    # "jObject":Lorg/json/JSONObject;
    :cond_3
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v23, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_6

    .line 159
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 160
    .local v15, "jElement":Lorg/json/JSONObject;
    const-string/jumbo v5, "purchaseState"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 161
    .local v24, "response":I
    invoke-static/range {v24 .. v24}, Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;->valueOf(I)Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;

    move-result-object v6

    .line 162
    .local v6, "purchaseState":Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;
    const-string/jumbo v5, "productId"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, "productId":Ljava/lang/String;
    const-string/jumbo v5, "packageName"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 164
    .local v22, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "purchaseTime"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 165
    .local v10, "purchaseTime":J
    const-string/jumbo v5, "orderId"

    const-string/jumbo v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v15, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 166
    .local v9, "orderId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 167
    .local v7, "notifyId":Ljava/lang/String;
    const-string/jumbo v5, "notificationId"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 168
    const-string/jumbo v5, "notificationId"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 170
    :cond_4
    const-string/jumbo v5, "developerPayload"

    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v15, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 174
    .local v12, "developerPayload":Ljava/lang/String;
    sget-object v5, Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;->PURCHASED:Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;

    if-ne v6, v5, :cond_5

    if-nez v25, :cond_5

    .line 158
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 177
    :cond_5
    new-instance v5, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;

    invoke-direct/range {v5 .. v12}, Lcom/anansimobile/nge/IAB/util_v2/Security$VerifiedPurchase;-><init>(Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 180
    .end local v6    # "purchaseState":Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;
    .end local v7    # "notifyId":Ljava/lang/String;
    .end local v8    # "productId":Ljava/lang/String;
    .end local v9    # "orderId":Ljava/lang/String;
    .end local v10    # "purchaseTime":J
    .end local v12    # "developerPayload":Ljava/lang/String;
    .end local v15    # "jElement":Lorg/json/JSONObject;
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v24    # "response":I
    :catch_1
    move-exception v13

    .line 181
    .restart local v13    # "e":Lorg/json/JSONException;
    const-string/jumbo v5, "Security"

    const-string/jumbo v26, "JSON exception: "

    move-object/from16 v0, v26

    invoke-static {v5, v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 184
    .end local v13    # "e":Lorg/json/JSONException;
    :cond_6
    invoke-static/range {v20 .. v21}, Lcom/anansimobile/nge/IAB/util_v2/Security;->removeNonce(J)V

    goto/16 :goto_0
.end method
