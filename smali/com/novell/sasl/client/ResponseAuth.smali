.class Lcom/novell/sasl/client/ResponseAuth;
.super Ljava/lang/Object;
.source "ResponseAuth.java"


# instance fields
.field private m_responseValue:Ljava/lang/String;


# direct methods
.method constructor <init>([B)V
    .locals 2
    .param p1, "responseAuth"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/novell/sasl/client/ResponseAuth;->m_responseValue:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/novell/sasl/client/DirectiveList;

    invoke-direct {v0, p1}, Lcom/novell/sasl/client/DirectiveList;-><init>([B)V

    .line 38
    .local v0, "dirList":Lcom/novell/sasl/client/DirectiveList;
    :try_start_0
    invoke-virtual {v0}, Lcom/novell/sasl/client/DirectiveList;->parseDirectives()V

    .line 39
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/ResponseAuth;->checkSemantics(Lcom/novell/sasl/client/DirectiveList;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/security/sasl/SaslException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method checkSemantics(Lcom/novell/sasl/client/DirectiveList;)V
    .locals 5
    .param p1, "dirList"    # Lcom/novell/sasl/client/DirectiveList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/novell/sasl/client/DirectiveList;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 61
    .local v1, "directives":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/novell/sasl/client/ResponseAuth;->m_responseValue:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 71
    new-instance v3, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string/jumbo v4, "Missing response-auth directive."

    invoke-direct {v3, v4}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novell/sasl/client/ParsedDirective;

    .line 64
    .local v0, "directive":Lcom/novell/sasl/client/ParsedDirective;
    invoke-virtual {v0}, Lcom/novell/sasl/client/ParsedDirective;->getName()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "rspauth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/novell/sasl/client/ParsedDirective;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/novell/sasl/client/ResponseAuth;->m_responseValue:Ljava/lang/String;

    goto :goto_0

    .line 72
    .end local v0    # "directive":Lcom/novell/sasl/client/ParsedDirective;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getResponseValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/novell/sasl/client/ResponseAuth;->m_responseValue:Ljava/lang/String;

    return-object v0
.end method
