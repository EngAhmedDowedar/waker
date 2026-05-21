.class Lcom/novell/sasl/client/DirectiveList;
.super Ljava/lang/Object;
.source "DirectiveList.java"


# static fields
.field private static final STATE_LOOKING_FOR_COMMA:I = 0x6

.field private static final STATE_LOOKING_FOR_DIRECTIVE:I = 0x2

.field private static final STATE_LOOKING_FOR_EQUALS:I = 0x4

.field private static final STATE_LOOKING_FOR_FIRST_DIRECTIVE:I = 0x1

.field private static final STATE_LOOKING_FOR_VALUE:I = 0x5

.field private static final STATE_NO_UTF8_SUPPORT:I = 0x9

.field private static final STATE_SCANNING_NAME:I = 0x3

.field private static final STATE_SCANNING_QUOTED_STRING_VALUE:I = 0x7

.field private static final STATE_SCANNING_TOKEN_VALUE:I = 0x8


# instance fields
.field private m_curName:Ljava/lang/String;

.field private m_curPos:I

.field private m_directiveList:Ljava/util/ArrayList;

.field private m_directives:Ljava/lang/String;

.field private m_errorPos:I

.field private m_scanStart:I

.field private m_state:I


# direct methods
.method constructor <init>([B)V
    .locals 4
    .param p1, "directives"    # [B

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v3, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    .line 54
    const/4 v1, 0x1

    iput v1, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/novell/sasl/client/DirectiveList;->m_directiveList:Ljava/util/ArrayList;

    .line 56
    iput v3, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/novell/sasl/client/DirectiveList;->m_errorPos:I

    .line 60
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/16 v1, 0x9

    iput v1, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto :goto_0
.end method


# virtual methods
.method addDirective(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "haveQuotedPair"    # Z

    .prologue
    .line 327
    if-nez p2, :cond_0

    .line 329
    iget-object v6, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;

    iget v7, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    iget v8, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "value":Ljava/lang/String;
    :goto_0
    iget v6, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_3

    .line 348
    const/4 v1, 0x1

    .line 351
    .local v1, "type":I
    :goto_1
    iget-object v6, p0, Lcom/novell/sasl/client/DirectiveList;->m_directiveList:Ljava/util/ArrayList;

    new-instance v7, Lcom/novell/sasl/client/ParsedDirective;

    invoke-direct {v7, p1, v2, v1}, Lcom/novell/sasl/client/ParsedDirective;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    return-void

    .line 333
    .end local v1    # "type":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    iget v6, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iget v7, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    sub-int/2addr v6, v7

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 334
    .local v3, "valueBuf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 335
    .local v5, "valueIndex":I
    iget v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    .line 336
    .local v0, "inputIndex":I
    :goto_2
    iget v6, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    if-lt v0, v6, :cond_1

    .line 344
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 338
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    const/16 v6, 0x5c

    iget-object v7, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .local v4, "valueChar":C
    if-ne v6, v4, :cond_2

    .line 339
    add-int/lit8 v0, v0, 0x1

    .line 340
    :cond_2
    iget-object v6, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 341
    add-int/lit8 v5, v5, 0x1

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 350
    .end local v0    # "inputIndex":I
    .end local v3    # "valueBuf":Ljava/lang/StringBuffer;
    .end local v4    # "valueChar":C
    .end local v5    # "valueIndex":I
    .restart local v2    # "value":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x2

    .restart local v1    # "type":I
    goto :goto_1
.end method

.method getIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/novell/sasl/client/DirectiveList;->m_directiveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method isValidTokenChar(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 276
    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-le p1, v0, :cond_3

    .line 277
    :cond_0
    const/16 v0, 0x3a

    if-lt p1, v0, :cond_1

    const/16 v0, 0x40

    if-le p1, v0, :cond_3

    .line 278
    :cond_1
    const/16 v0, 0x5b

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5d

    if-le p1, v0, :cond_3

    .line 279
    :cond_2
    const/16 v0, 0x2c

    if-eq v0, p1, :cond_3

    .line 280
    const/16 v0, 0x25

    if-eq v0, p1, :cond_3

    .line 281
    const/16 v0, 0x28

    if-eq v0, p1, :cond_3

    .line 282
    const/16 v0, 0x29

    if-eq v0, p1, :cond_3

    .line 283
    const/16 v0, 0x7b

    if-eq v0, p1, :cond_3

    .line 284
    const/16 v0, 0x7d

    if-eq v0, p1, :cond_3

    .line 285
    const/16 v0, 0x7f

    if-ne v0, p1, :cond_4

    .line 286
    :cond_3
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isWhiteSpace(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 301
    const/16 v0, 0x9

    if-eq v0, p1, :cond_0

    .line 302
    const/16 v0, 0xa

    if-eq v0, p1, :cond_0

    .line 303
    const/16 v0, 0xd

    if-eq v0, p1, :cond_0

    .line 304
    const/16 v0, 0x20

    if-ne v0, p1, :cond_1

    .line 305
    :cond_0
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parseDirectives()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x22

    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 81
    const/4 v4, 0x0

    .line 82
    .local v4, "rc":I
    const/4 v2, 0x0

    .line 83
    .local v2, "haveQuotedPair":Z
    const-string/jumbo v1, "<no name>"

    .line 85
    .local v1, "currentName":Ljava/lang/String;
    iget v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    .line 86
    new-instance v5, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v6, "No UTF-8 support on platform"

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_0
    const/4 v3, 0x0

    .line 90
    .local v3, "prevChar":C
    :goto_0
    iget v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iget-object v6, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 226
    :cond_1
    if-nez v4, :cond_2

    .line 229
    iget v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    packed-switch v5, :pswitch_data_0

    .line 252
    :cond_2
    :goto_1
    :pswitch_0
    return-void

    .line 92
    :cond_3
    iget-object v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;

    iget v6, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 93
    .local v0, "currChar":C
    iget v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    packed-switch v5, :pswitch_data_1

    .line 219
    :cond_4
    :goto_2
    if-nez v4, :cond_1

    .line 221
    move v3, v0

    .line 222
    iget v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DirectiveList;->isWhiteSpace(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 101
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DirectiveList;->isValidTokenChar(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 103
    iget v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    .line 104
    const/4 v5, 0x3

    iput v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto :goto_2

    .line 108
    :cond_5
    iget v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_errorPos:I

    .line 109
    new-instance v5, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v6, "Parse error: Invalid name character"

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 114
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DirectiveList;->isValidTokenChar(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 118
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DirectiveList;->isWhiteSpace(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 120
    iget-object v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;

    iget v6, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    iget v7, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 121
    const/4 v5, 0x4

    iput v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto :goto_2

    .line 123
    :cond_6
    const/16 v5, 0x3d

    if-ne v5, v0, :cond_7

    .line 125
    iget-object v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_directives:Ljava/lang/String;

    iget v6, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    iget v7, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 126
    iput v10, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto :goto_2

    .line 130
    :cond_7
    iget v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_errorPos:I

    .line 131
    new-instance v5, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v6, "Parse error: Invalid name character"

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 136
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DirectiveList;->isWhiteSpace(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 140
    const/16 v5, 0x3d

    if-ne v5, v0, :cond_8

    .line 142
    iput v10, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto :goto_2

    .line 146
    :cond_8
    iget v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_errorPos:I

    .line 147
    new-instance v5, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v6, "Parse error: Expected equals sign \'=\'."

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 152
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DirectiveList;->isWhiteSpace(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 156
    if-ne v12, v0, :cond_9

    .line 158
    iget v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    .line 159
    const/4 v5, 0x7

    iput v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto/16 :goto_2

    .line 161
    :cond_9
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DirectiveList;->isValidTokenChar(C)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 163
    iget v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_scanStart:I

    .line 164
    const/16 v5, 0x8

    iput v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto/16 :goto_2

    .line 168
    :cond_a
    iget v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_errorPos:I

    .line 169
    new-instance v5, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v6, "Parse error: Unexpected character"

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 174
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DirectiveList;->isValidTokenChar(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 178
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DirectiveList;->isWhiteSpace(C)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 180
    invoke-virtual {p0, v1, v8}, Lcom/novell/sasl/client/DirectiveList;->addDirective(Ljava/lang/String;Z)V

    .line 181
    iput v11, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto/16 :goto_2

    .line 183
    :cond_b
    const/16 v5, 0x2c

    if-ne v5, v0, :cond_c

    .line 185
    invoke-virtual {p0, v1, v8}, Lcom/novell/sasl/client/DirectiveList;->addDirective(Ljava/lang/String;Z)V

    .line 186
    iput v9, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto/16 :goto_2

    .line 190
    :cond_c
    iget v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_errorPos:I

    .line 191
    new-instance v5, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v6, "Parse error: Invalid value character"

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 196
    :pswitch_6
    const/16 v5, 0x5c

    if-ne v5, v0, :cond_d

    .line 197
    const/4 v2, 0x1

    .line 198
    :cond_d
    if-ne v12, v0, :cond_4

    .line 199
    const/16 v5, 0x5c

    if-eq v5, v3, :cond_4

    .line 201
    invoke-virtual {p0, v1, v2}, Lcom/novell/sasl/client/DirectiveList;->addDirective(Ljava/lang/String;Z)V

    .line 202
    const/4 v2, 0x0

    .line 203
    iput v11, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto/16 :goto_2

    .line 208
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DirectiveList;->isWhiteSpace(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 210
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_e

    .line 211
    iput v9, p0, Lcom/novell/sasl/client/DirectiveList;->m_state:I

    goto/16 :goto_2

    .line 214
    :cond_e
    iget v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_curPos:I

    iput v5, p0, Lcom/novell/sasl/client/DirectiveList;->m_errorPos:I

    .line 215
    new-instance v5, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v6, "Parse error: Expected a comma."

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 232
    .end local v0    # "currChar":C
    :pswitch_8
    invoke-virtual {p0, v1, v8}, Lcom/novell/sasl/client/DirectiveList;->addDirective(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 240
    :pswitch_9
    new-instance v5, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v6, "Parse error: Trailing comma."

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 245
    :pswitch_a
    new-instance v5, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v6, "Parse error: Missing value."

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 248
    :pswitch_b
    new-instance v5, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v6, "Parse error: Missing closing quote."

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_8
    .end packed-switch

    .line 93
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
