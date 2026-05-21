.class public Lcom/novell/sasl/client/DigestMD5SaslClient;
.super Ljava/lang/Object;
.source "DigestMD5SaslClient.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/sasl/SaslClient;


# static fields
.field private static final DIGEST_METHOD:Ljava/lang/String; = "AUTHENTICATE"

.field private static final NONCE_BYTE_COUNT:I = 0x20

.field private static final NONCE_HEX_COUNT:I = 0x40

.field private static final STATE_DIGEST_RESPONSE_SENT:I = 0x1

.field private static final STATE_DISPOSED:I = 0x4

.field private static final STATE_INITIAL:I = 0x0

.field private static final STATE_INVALID_SERVER_RESPONSE:I = 0x3

.field private static final STATE_VALID_SERVER_RESPONSE:I = 0x2


# instance fields
.field private m_HA1:[C

.field private m_authorizationId:Ljava/lang/String;

.field private m_cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

.field private m_clientNonce:Ljava/lang/String;

.field private m_dc:Lcom/novell/sasl/client/DigestChallenge;

.field private m_digestURI:Ljava/lang/String;

.field private m_name:Ljava/lang/String;

.field private m_props:Ljava/util/Map;

.field private m_protocol:Ljava/lang/String;

.field private m_qopValue:Ljava/lang/String;

.field private m_realm:Ljava/lang/String;

.field private m_serverName:Ljava/lang/String;

.field private m_state:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 1
    .param p1, "authorizationId"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "serverName"    # Ljava/lang/String;
    .param p4, "props"    # Ljava/util/Map;
    .param p5, "cbh"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_protocol:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_serverName:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_HA1:[C

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_protocol:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_serverName:Ljava/lang/String;

    .line 180
    iput-object p4, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_props:Ljava/util/Map;

    .line 181
    iput-object p5, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    .line 184
    return-void
.end method

.method private createDigestResponse([B)Ljava/lang/String;
    .locals 17
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 568
    new-instance v11, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v11, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 571
    .local v11, "digestResponse":Ljava/lang/StringBuffer;
    new-instance v1, Lcom/novell/sasl/client/DigestChallenge;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/novell/sasl/client/DigestChallenge;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_protocol:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_serverName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_digestURI:Ljava/lang/String;

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v1}, Lcom/novell/sasl/client/DigestChallenge;->getQop()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    .line 576
    const/4 v2, 0x1

    .line 575
    if-ne v1, v2, :cond_2

    .line 577
    const-string/jumbo v1, "auth"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    .line 582
    const/4 v1, 0x3

    new-array v10, v1, [Lorg/apache/harmony/javax/security/auth/callback/Callback;

    .line 583
    .local v10, "callbacks":[Lorg/apache/harmony/javax/security/auth/callback/Callback;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v1}, Lcom/novell/sasl/client/DigestChallenge;->getRealms()Ljava/util/ArrayList;

    move-result-object v14

    .line 584
    .local v14, "realms":Ljava/util/ArrayList;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 585
    .local v13, "realmSize":I
    if-nez v13, :cond_3

    .line 587
    const/4 v1, 0x0

    new-instance v2, Lorg/apache/harmony/javax/security/sasl/RealmCallback;

    const-string/jumbo v3, "Realm"

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/sasl/RealmCallback;-><init>(Ljava/lang/String;)V

    aput-object v2, v10, v1

    .line 603
    :goto_0
    const/4 v1, 0x1

    new-instance v2, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    const-string/jumbo v3, "Password"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v10, v1

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 607
    :cond_0
    const/4 v1, 0x2

    new-instance v2, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    const-string/jumbo v3, "Name"

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;-><init>(Ljava/lang/String;)V

    aput-object v2, v10, v1

    .line 613
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    invoke-interface {v1, v10}, Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;->handle([Lorg/apache/harmony/javax/security/auth/callback/Callback;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 625
    const/4 v1, 0x1

    if-le v13, v1, :cond_7

    .line 628
    const/4 v1, 0x0

    aget-object v1, v10, v1

    check-cast v1, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;

    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;->getSelectedIndexes()[I

    move-result-object v16

    .line 630
    .local v16, "selections":[I
    move-object/from16 v0, v16

    array-length v1, v0

    if-lez v1, :cond_6

    .line 632
    const/4 v1, 0x0

    aget-object v1, v10, v1

    check-cast v1, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;

    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;->getChoices()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v16, v2

    aget-object v1, v1, v2

    .line 631
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    .line 639
    .end local v16    # "selections":[I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getClientNonce()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    .line 641
    const/4 v1, 0x2

    aget-object v1, v10, v1

    check-cast v1, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    .line 642
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 643
    const/4 v1, 0x2

    aget-object v1, v10, v1

    check-cast v1, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    .line 644
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 645
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v2, "No user name was specified."

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    .end local v10    # "callbacks":[Lorg/apache/harmony/javax/security/auth/callback/Callback;
    .end local v13    # "realmSize":I
    .end local v14    # "realms":Ljava/util/ArrayList;
    :cond_2
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v2, "Client only supports qop of \'auth\'"

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 589
    .restart local v10    # "callbacks":[Lorg/apache/harmony/javax/security/auth/callback/Callback;
    .restart local v13    # "realmSize":I
    .restart local v14    # "realms":Ljava/util/ArrayList;
    :cond_3
    const/4 v1, 0x1

    if-ne v13, v1, :cond_4

    .line 591
    const/4 v2, 0x0

    new-instance v3, Lorg/apache/harmony/javax/security/sasl/RealmCallback;

    const-string/jumbo v4, "Realm"

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lorg/apache/harmony/javax/security/sasl/RealmCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v10, v2

    goto/16 :goto_0

    .line 595
    :cond_4
    const/4 v2, 0x0

    .line 596
    new-instance v3, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;

    .line 597
    const-string/jumbo v4, "Realm"

    .line 598
    new-array v1, v13, [Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 599
    const/4 v5, 0x0

    .line 600
    const/4 v6, 0x0

    .line 596
    invoke-direct {v3, v4, v1, v5, v6}, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;-><init>(Ljava/lang/String;[Ljava/lang/String;IZ)V

    .line 595
    aput-object v3, v10, v2

    goto/16 :goto_0

    .line 609
    :cond_5
    const/4 v1, 0x2

    new-instance v2, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    const-string/jumbo v3, "Name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v10, v1

    goto/16 :goto_1

    .line 615
    :catch_0
    move-exception v12

    .line 617
    .local v12, "e":Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v2, "Handler does not support necessary callbacks"

    invoke-direct {v1, v2, v12}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 620
    .end local v12    # "e":Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;
    :catch_1
    move-exception v12

    .line 622
    .local v12, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v2, "IO exception in CallbackHandler."

    invoke-direct {v1, v2, v12}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 634
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v16    # "selections":[I
    :cond_6
    const/4 v1, 0x0

    aget-object v1, v10, v1

    check-cast v1, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;

    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;->getChoices()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    goto/16 :goto_2

    .line 637
    .end local v16    # "selections":[I
    :cond_7
    const/4 v1, 0x0

    aget-object v1, v10, v1

    check-cast v1, Lorg/apache/harmony/javax/security/sasl/RealmCallback;

    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/sasl/RealmCallback;->getText()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    goto/16 :goto_2

    .line 648
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v1}, Lcom/novell/sasl/client/DigestChallenge;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    .line 650
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    .line 651
    new-instance v5, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v10, v1

    check-cast v1, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    .line 652
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v1}, Lcom/novell/sasl/client/DigestChallenge;->getNonce()Ljava/lang/String;

    move-result-object v6

    .line 653
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    move-object/from16 v1, p0

    .line 647
    invoke-virtual/range {v1 .. v7}, Lcom/novell/sasl/client/DigestMD5SaslClient;->DigestCalcHA1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_HA1:[C

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_HA1:[C

    .line 656
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v1}, Lcom/novell/sasl/client/DigestChallenge;->getNonce()Ljava/lang/String;

    move-result-object v3

    .line 657
    const-string/jumbo v4, "00000001"

    .line 658
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    .line 659
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    .line 660
    const-string/jumbo v7, "AUTHENTICATE"

    .line 661
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_digestURI:Ljava/lang/String;

    .line 662
    const/4 v9, 0x1

    move-object/from16 v1, p0

    .line 655
    invoke-virtual/range {v1 .. v9}, Lcom/novell/sasl/client/DigestMD5SaslClient;->DigestCalcResponse([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[C

    move-result-object v15

    .line 664
    .local v15, "response":[C
    const-string/jumbo v1, "username=\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 666
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 668
    const-string/jumbo v1, "\",realm=\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    :cond_9
    const-string/jumbo v1, "\",cnonce=\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    const-string/jumbo v1, "\",nc="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 674
    const-string/jumbo v1, "00000001"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 675
    const-string/jumbo v1, ",qop="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 677
    const-string/jumbo v1, ",digest-uri=\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 678
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_digestURI:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 679
    const-string/jumbo v1, "\",response="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 680
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 681
    const-string/jumbo v1, ",charset=utf-8,nonce=\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v1}, Lcom/novell/sasl/client/DigestChallenge;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 683
    const-string/jumbo v1, "\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 685
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;
    .locals 9
    .param p0, "authorizationId"    # Ljava/lang/String;
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "serverName"    # Ljava/lang/String;
    .param p3, "props"    # Ljava/util/Map;
    .param p4, "cbh"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    .prologue
    const/4 v0, 0x0

    .line 110
    const-string/jumbo v1, "javax.security.sasl.qop"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 111
    .local v6, "desiredQOP":Ljava/lang/String;
    const-string/jumbo v1, "javax.security.sasl.strength"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 112
    .local v7, "desiredStrength":Ljava/lang/String;
    const-string/jumbo v1, "javax.security.sasl.server.authentication"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 115
    .local v8, "serverAuth":Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string/jumbo v1, "auth"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :cond_1
    if-eqz v8, :cond_2

    const-string/jumbo v1, "false"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    :cond_2
    if-eqz p4, :cond_0

    .line 126
    new-instance v0, Lcom/novell/sasl/client/DigestMD5SaslClient;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/novell/sasl/client/DigestMD5SaslClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V

    goto :goto_0
.end method

.method private static getHexChar(B)C
    .locals 1
    .param p0, "value"    # B

    .prologue
    .line 735
    packed-switch p0, :pswitch_data_0

    .line 770
    const/16 v0, 0x5a

    :goto_0
    return v0

    .line 738
    :pswitch_0
    const/16 v0, 0x30

    goto :goto_0

    .line 740
    :pswitch_1
    const/16 v0, 0x31

    goto :goto_0

    .line 742
    :pswitch_2
    const/16 v0, 0x32

    goto :goto_0

    .line 744
    :pswitch_3
    const/16 v0, 0x33

    goto :goto_0

    .line 746
    :pswitch_4
    const/16 v0, 0x34

    goto :goto_0

    .line 748
    :pswitch_5
    const/16 v0, 0x35

    goto :goto_0

    .line 750
    :pswitch_6
    const/16 v0, 0x36

    goto :goto_0

    .line 752
    :pswitch_7
    const/16 v0, 0x37

    goto :goto_0

    .line 754
    :pswitch_8
    const/16 v0, 0x38

    goto :goto_0

    .line 756
    :pswitch_9
    const/16 v0, 0x39

    goto :goto_0

    .line 758
    :pswitch_a
    const/16 v0, 0x61

    goto :goto_0

    .line 760
    :pswitch_b
    const/16 v0, 0x62

    goto :goto_0

    .line 762
    :pswitch_c
    const/16 v0, 0x63

    goto :goto_0

    .line 764
    :pswitch_d
    const/16 v0, 0x64

    goto :goto_0

    .line 766
    :pswitch_e
    const/16 v0, 0x65

    goto :goto_0

    .line 768
    :pswitch_f
    const/16 v0, 0x66

    goto :goto_0

    .line 735
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method DigestCalcHA1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "nonce"    # Ljava/lang/String;
    .param p6, "clientNonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 444
    :try_start_0
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 446
    .local v2, "md":Ljava/security/MessageDigest;
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 447
    const-string/jumbo v3, ":"

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 448
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 449
    const-string/jumbo v3, ":"

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 450
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 451
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 453
    .local v1, "hash":[B
    const-string/jumbo v3, "md5-sess"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 456
    const-string/jumbo v3, ":"

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 457
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p5, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 458
    const-string/jumbo v3, ":"

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 459
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p6, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 460
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 473
    :cond_0
    invoke-virtual {p0, v1}, Lcom/novell/sasl/client/DigestMD5SaslClient;->convertToHex([B)[C

    move-result-object v3

    return-object v3

    .line 463
    .end local v1    # "hash":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v4, "No provider found for MD5 hash"

    invoke-direct {v3, v4, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 467
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 469
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lorg/apache/harmony/javax/security/sasl/SaslException;

    .line 470
    const-string/jumbo v4, "UTF-8 encoding not supported by platform."

    .line 469
    invoke-direct {v3, v4, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method DigestCalcResponse([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[C
    .locals 7
    .param p1, "HA1"    # [C
    .param p2, "serverNonce"    # Ljava/lang/String;
    .param p3, "nonceCount"    # Ljava/lang/String;
    .param p4, "clientNonce"    # Ljava/lang/String;
    .param p5, "qop"    # Ljava/lang/String;
    .param p6, "method"    # Ljava/lang/String;
    .param p7, "digestUri"    # Ljava/lang/String;
    .param p8, "clientResponseFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 512
    :try_start_0
    const-string/jumbo v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 513
    .local v3, "md":Ljava/security/MessageDigest;
    if-eqz p8, :cond_0

    .line 514
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p6, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 515
    :cond_0
    const-string/jumbo v5, ":"

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 516
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p7, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 517
    const-string/jumbo v5, "auth-int"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 519
    const-string/jumbo v5, ":"

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 520
    const-string/jumbo v5, "00000000000000000000000000000000"

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 522
    :cond_1
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 523
    .local v0, "HA2":[B
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestMD5SaslClient;->convertToHex([B)[C

    move-result-object v1

    .line 526
    .local v1, "HA2Hex":[C
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([C)V

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 527
    const-string/jumbo v5, ":"

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 528
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 529
    const-string/jumbo v5, ":"

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 530
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 532
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 533
    const-string/jumbo v5, ":"

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 534
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 535
    const-string/jumbo v5, ":"

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 536
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p5, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 537
    const-string/jumbo v5, ":"

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 539
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 540
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 552
    .local v4, "respHash":[B
    invoke-virtual {p0, v4}, Lcom/novell/sasl/client/DigestMD5SaslClient;->convertToHex([B)[C

    move-result-object v5

    return-object v5

    .line 542
    .end local v0    # "HA2":[B
    .end local v1    # "HA2Hex":[C
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "respHash":[B
    :catch_0
    move-exception v2

    .line 544
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v6, "No provider found for MD5 hash"

    invoke-direct {v5, v6, v2}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 546
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 548
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Lorg/apache/harmony/javax/security/sasl/SaslException;

    .line 549
    const-string/jumbo v6, "UTF-8 encoding not supported by platform."

    .line 548
    invoke-direct {v5, v6, v2}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method checkServerResponseAuth([B)Z
    .locals 12
    .param p1, "serverResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 705
    const/4 v10, 0x0

    .line 708
    .local v10, "responseAuth":Lcom/novell/sasl/client/ResponseAuth;
    new-instance v10, Lcom/novell/sasl/client/ResponseAuth;

    .end local v10    # "responseAuth":Lcom/novell/sasl/client/ResponseAuth;
    invoke-direct {v10, p1}, Lcom/novell/sasl/client/ResponseAuth;-><init>([B)V

    .line 710
    .restart local v10    # "responseAuth":Lcom/novell/sasl/client/ResponseAuth;
    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_HA1:[C

    .line 711
    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getNonce()Ljava/lang/String;

    move-result-object v2

    .line 712
    const-string/jumbo v3, "00000001"

    .line 713
    iget-object v4, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    .line 714
    iget-object v5, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    .line 715
    const-string/jumbo v6, "AUTHENTICATE"

    .line 716
    iget-object v7, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_digestURI:Ljava/lang/String;

    .line 717
    const/4 v8, 0x0

    move-object v0, p0

    .line 710
    invoke-virtual/range {v0 .. v8}, Lcom/novell/sasl/client/DigestMD5SaslClient;->DigestCalcResponse([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[C

    move-result-object v9

    .line 719
    .local v9, "response":[C
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v9}, Ljava/lang/String;-><init>([C)V

    .line 721
    .local v11, "responseStr":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/novell/sasl/client/ResponseAuth;->getResponseValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method convertToHex([B)[C
    .locals 5
    .param p1, "hash"    # [B

    .prologue
    .line 404
    const/16 v0, 0xf

    .line 405
    .local v0, "fifteen":B
    const/16 v3, 0x20

    new-array v1, v3, [C

    .line 407
    .local v1, "hex":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 415
    return-object v1

    .line 410
    :cond_0
    mul-int/lit8 v3, v2, 0x2

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    invoke-static {v4}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getHexChar(B)C

    move-result v4

    aput-char v4, v1, v3

    .line 412
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v4, p1, v2

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    invoke-static {v4}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getHexChar(B)C

    move-result v4

    aput-char v4, v1, v3

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 317
    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    if-eq v0, v1, :cond_0

    .line 319
    iput v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    .line 321
    :cond_0
    return-void
.end method

.method public evaluateChallenge([B)[B
    .locals 4
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 346
    const/4 v1, 0x0

    check-cast v1, [B

    .line 349
    .local v1, "response":[B
    iget v2, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    packed-switch v2, :pswitch_data_0

    .line 383
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v3, "Unknown client state."

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    :pswitch_0
    array-length v2, p1

    if-nez v2, :cond_0

    .line 353
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v3, "response = byte[0]"

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/novell/sasl/client/DigestMD5SaslClient;->createDigestResponse([B)Ljava/lang/String;

    move-result-object v2

    .line 358
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 359
    const/4 v2, 0x1

    iput v2, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-object v1

    .line 361
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/SaslException;

    .line 364
    const-string/jumbo v3, "UTF-8 encoding not suppported by platform"

    .line 363
    invoke-direct {v2, v3, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 368
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/novell/sasl/client/DigestMD5SaslClient;->checkServerResponseAuth([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    const/4 v2, 0x2

    iput v2, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    goto :goto_0

    .line 372
    :cond_1
    const/4 v2, 0x3

    iput v2, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    .line 373
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v3, "Could not validate response-auth value from server"

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 379
    :pswitch_2
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v3, "Authentication sequence is complete"

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    :pswitch_3
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v3, "Client has been disposed"

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getClientNonce()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    .line 783
    new-array v3, v7, [B

    .line 786
    .local v3, "nonceBytes":[B
    const/16 v5, 0x40

    new-array v1, v5, [C

    .line 790
    .local v1, "hexNonce":[C
    :try_start_0
    const-string/jumbo v5, "SHA1PRNG"

    invoke-static {v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v4

    .line 791
    .local v4, "prng":Ljava/security/SecureRandom;
    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 792
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v7, :cond_0

    .line 800
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 795
    :cond_0
    mul-int/lit8 v5, v2, 0x2

    aget-byte v6, v3, v2

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    invoke-static {v6}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getHexChar(B)C

    move-result v6

    aput-char v6, v1, v5

    .line 797
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v6, v3, v2

    and-int/lit16 v6, v6, 0xf0

    .line 798
    shr-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    .line 797
    invoke-static {v6}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getHexChar(B)C

    move-result v6

    aput-char v6, v1, v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 802
    .end local v2    # "i":I
    .end local v4    # "prng":Ljava/security/SecureRandom;
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v6, "No random number generator available"

    invoke-direct {v5, v6, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getMechanismName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 817
    const-string/jumbo v0, "DIGEST-MD5"

    return-object v0
.end method

.method public getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propName"    # Ljava/lang/String;

    .prologue
    .line 296
    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 298
    const-string/jumbo v1, "getNegotiatedProperty: authentication exchange not complete."

    .line 297
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    const-string/jumbo v0, "javax.security.sasl.qop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    const-string/jumbo v0, "auth"

    .line 303
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInitialResponse()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 210
    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 211
    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 212
    :cond_0
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unwrap([BII)[B
    .locals 2
    .param p1, "incoming"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 244
    const-string/jumbo v1, "unwrap: QOP has neither integrity nor privacy>"

    .line 243
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrap([BII)[B
    .locals 2
    .param p1, "outgoing"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 277
    const-string/jumbo v1, "wrap: QOP has neither integrity nor privacy>"

    .line 276
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
