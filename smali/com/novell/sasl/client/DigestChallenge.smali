.class Lcom/novell/sasl/client/DigestChallenge;
.super Ljava/lang/Object;
.source "DigestChallenge.java"


# static fields
.field private static final CIPHER_3DES:I = 0x1

.field private static final CIPHER_DES:I = 0x2

.field private static final CIPHER_RC4:I = 0x8

.field private static final CIPHER_RC4_40:I = 0x4

.field private static final CIPHER_RC4_56:I = 0x10

.field private static final CIPHER_RECOGNIZED_MASK:I = 0x1f

.field private static final CIPHER_UNRECOGNIZED:I = 0x20

.field public static final QOP_AUTH:I = 0x1

.field public static final QOP_AUTH_CONF:I = 0x4

.field public static final QOP_AUTH_INT:I = 0x2

.field public static final QOP_UNRECOGNIZED:I = 0x8


# instance fields
.field private m_algorithm:Ljava/lang/String;

.field private m_characterSet:Ljava/lang/String;

.field private m_cipherOptions:I

.field private m_maxBuf:I

.field private m_nonce:Ljava/lang/String;

.field private m_qop:I

.field private m_realms:Ljava/util/ArrayList;

.field private m_staleFlag:Z


# direct methods
.method constructor <init>([B)V
    .locals 5
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_realms:Ljava/util/ArrayList;

    .line 55
    iput-object v4, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    .line 56
    iput v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    .line 57
    iput-boolean v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    .line 59
    iput-object v4, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    .line 60
    iput-object v4, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    .line 61
    iput v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    .line 63
    new-instance v0, Lcom/novell/sasl/client/DirectiveList;

    invoke-direct {v0, p1}, Lcom/novell/sasl/client/DirectiveList;-><init>([B)V

    .line 66
    .local v0, "dirList":Lcom/novell/sasl/client/DirectiveList;
    :try_start_0
    invoke-virtual {v0}, Lcom/novell/sasl/client/DirectiveList;->parseDirectives()V

    .line 67
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->checkSemantics(Lcom/novell/sasl/client/DirectiveList;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/security/sasl/SaslException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method checkSemantics(Lcom/novell/sasl/client/DirectiveList;)V
    .locals 6
    .param p1, "dirList"    # Lcom/novell/sasl/client/DirectiveList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 85
    invoke-virtual {p1}, Lcom/novell/sasl/client/DirectiveList;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 89
    .local v1, "directives":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 112
    const/4 v3, -0x1

    iget v4, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    if-ne v3, v4, :cond_1

    .line 113
    const/high16 v3, 0x10000

    iput v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    .line 115
    :cond_1
    iget v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    if-nez v3, :cond_b

    .line 116
    iput v5, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    .line 128
    :cond_2
    return-void

    .line 91
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novell/sasl/client/ParsedDirective;

    .line 92
    .local v0, "directive":Lcom/novell/sasl/client/ParsedDirective;
    invoke-virtual {v0}, Lcom/novell/sasl/client/ParsedDirective;->getName()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleRealm(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 95
    :cond_4
    const-string/jumbo v3, "nonce"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleNonce(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 97
    :cond_5
    const-string/jumbo v3, "qop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 98
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleQop(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 99
    :cond_6
    const-string/jumbo v3, "maxbuf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 100
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleMaxbuf(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 101
    :cond_7
    const-string/jumbo v3, "charset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 102
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleCharset(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 103
    :cond_8
    const-string/jumbo v3, "algorithm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 104
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleAlgorithm(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 105
    :cond_9
    const-string/jumbo v3, "cipher"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 106
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleCipher(Lcom/novell/sasl/client/ParsedDirective;)V

    goto :goto_0

    .line 107
    :cond_a
    const-string/jumbo v3, "stale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestChallenge;->handleStale(Lcom/novell/sasl/client/ParsedDirective;)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "directive":Lcom/novell/sasl/client/ParsedDirective;
    .end local v2    # "name":Ljava/lang/String;
    :cond_b
    iget v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    and-int/lit8 v3, v3, 0x1

    if-eq v3, v5, :cond_c

    .line 118
    new-instance v3, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v4, "Only qop-auth is supported by client"

    invoke-direct {v3, v4}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :cond_c
    iget v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    .line 120
    iget v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    and-int/lit8 v3, v3, 0x1f

    if-nez v3, :cond_d

    .line 121
    new-instance v3, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v4, "Invalid cipher options"

    invoke-direct {v3, v4}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    :cond_d
    iget-object v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 123
    new-instance v3, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v4, "Missing nonce directive"

    invoke-direct {v3, v4}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_e
    iget-boolean v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    if-eqz v3, :cond_f

    .line 125
    new-instance v3, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v4, "Unexpected stale flag"

    invoke-direct {v3, v4}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_f
    iget-object v3, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 127
    new-instance v3, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v4, "Missing algorithm directive"

    invoke-direct {v3, v4}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherOptions()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    return v0
.end method

.method public getMaxBuf()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    return v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    return v0
.end method

.method public getRealms()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_realms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStaleFlag()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    return v0
.end method

.method handleAlgorithm(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 3
    .param p1, "pd"    # Lcom/novell/sasl/client/ParsedDirective;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v1, "Too many algorithm directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    .line 255
    const-string/jumbo v0, "md5-sess"

    iget-object v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid algorithm directive value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    return-void
.end method

.method handleCharset(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 2
    .param p1, "pd"    # Lcom/novell/sasl/client/ParsedDirective;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v1, "Too many charset directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_characterSet:Ljava/lang/String;

    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v1, "Invalid character encoding directive"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    return-void
.end method

.method handleCipher(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 4
    .param p1, "pd"    # Lcom/novell/sasl/client/ParsedDirective;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 278
    iget v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    if-eqz v2, :cond_0

    .line 279
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v3, "Too many cipher directives."

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_0
    new-instance v0, Lcom/novell/sasl/client/TokenParser;

    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/novell/sasl/client/TokenParser;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "parser":Lcom/novell/sasl/client/TokenParser;
    invoke-virtual {v0}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "token":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    move-result-object v1

    .line 284
    :goto_0
    if-nez v1, :cond_2

    .line 301
    iget v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    if-nez v2, :cond_1

    .line 302
    const/16 v2, 0x20

    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    .line 303
    :cond_1
    return-void

    .line 287
    :cond_2
    const-string/jumbo v2, "3des"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    iget v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    .line 285
    :goto_1
    invoke-virtual {v0}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 289
    :cond_3
    const-string/jumbo v2, "des"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 290
    iget v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1

    .line 291
    :cond_4
    const-string/jumbo v2, "rc4-40"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 292
    iget v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1

    .line 293
    :cond_5
    const-string/jumbo v2, "rc4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 294
    iget v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1

    .line 295
    :cond_6
    const-string/jumbo v2, "rc4-56"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 296
    iget v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1

    .line 298
    :cond_7
    iget v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_cipherOptions:I

    goto :goto_1
.end method

.method handleMaxbuf(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 2
    .param p1, "pd"    # Lcom/novell/sasl/client/ParsedDirective;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, -0x1

    iget v1, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    if-eq v0, v1, :cond_0

    .line 207
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v1, "Too many maxBuf directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    .line 211
    iget v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_maxBuf:I

    if-nez v0, :cond_1

    .line 212
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v1, "Max buf value must be greater than zero."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    return-void
.end method

.method handleNonce(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 2
    .param p1, "pd"    # Lcom/novell/sasl/client/ParsedDirective;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v1, "Too many nonce values."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_nonce:Ljava/lang/String;

    .line 145
    return-void
.end method

.method handleQop(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 4
    .param p1, "pd"    # Lcom/novell/sasl/client/ParsedDirective;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 176
    iget v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    if-eqz v2, :cond_0

    .line 177
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v3, "Too many qop directives."

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_0
    new-instance v0, Lcom/novell/sasl/client/TokenParser;

    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/novell/sasl/client/TokenParser;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "parser":Lcom/novell/sasl/client/TokenParser;
    invoke-virtual {v0}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "token":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 193
    return-void

    .line 184
    :cond_1
    const-string/jumbo v2, "auth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    iget v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    .line 182
    :goto_1
    invoke-virtual {v0}, Lcom/novell/sasl/client/TokenParser;->parseToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 186
    :cond_2
    const-string/jumbo v2, "auth-int"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 187
    iget v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    goto :goto_1

    .line 188
    :cond_3
    const-string/jumbo v2, "auth-conf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 189
    iget v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    goto :goto_1

    .line 191
    :cond_4
    iget v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/novell/sasl/client/DigestChallenge;->m_qop:I

    goto :goto_1
.end method

.method handleRealm(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 2
    .param p1, "pd"    # Lcom/novell/sasl/client/ParsedDirective;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_realms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method handleStale(Lcom/novell/sasl/client/ParsedDirective;)V
    .locals 3
    .param p1, "pd"    # Lcom/novell/sasl/client/ParsedDirective;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v1, "Too many stale directives."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    const-string/jumbo v0, "true"

    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/novell/sasl/client/DigestChallenge;->m_staleFlag:Z

    .line 324
    return-void

    .line 322
    :cond_1
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid stale directive value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
