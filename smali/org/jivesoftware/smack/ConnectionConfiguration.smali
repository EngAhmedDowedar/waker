.class public Lorg/jivesoftware/smack/ConnectionConfiguration;
.super Ljava/lang/Object;
.source "ConnectionConfiguration.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;
    }
.end annotation


# instance fields
.field private callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

.field private capsNode:Ljava/lang/String;

.field private compressionEnabled:Z

.field private debuggerEnabled:Z

.field private expiredCertificatesCheckEnabled:Z

.field private host:Ljava/lang/String;

.field private isRosterVersioningAvailable:Z

.field private keystorePath:Ljava/lang/String;

.field private keystoreType:Ljava/lang/String;

.field private notMatchingDomainCheckEnabled:Z

.field private password:Ljava/lang/String;

.field private pkcs11Library:Ljava/lang/String;

.field private port:I

.field protected proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

.field private reconnectionAllowed:Z

.field private resource:Ljava/lang/String;

.field private rosterLoadedAtLogin:Z

.field private saslAuthenticationEnabled:Z

.field private securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

.field private selfSignedCertificateEnabled:Z

.field private sendPresence:Z

.field private serviceName:Ljava/lang/String;

.field private socketFactory:Ljavax/net/SocketFactory;

.field private truststorePassword:Ljava/lang/String;

.field private truststorePath:Ljava/lang/String;

.field private truststoreType:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private verifyChainEnabled:Z

.field private verifyRootCAEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    .line 59
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    .line 60
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    .line 61
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    .line 62
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    .line 63
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->isRosterVersioningAvailable:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->capsNode:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    .line 68
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    .line 74
    sget-boolean v0, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 77
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    .line 86
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->sendPresence:Z

    .line 87
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->rosterLoadedAtLogin:Z

    .line 88
    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->enabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .line 138
    invoke-static {}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->forDefaultProxy()Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, p1, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->init(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    .line 59
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    .line 60
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    .line 61
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    .line 62
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    .line 63
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->isRosterVersioningAvailable:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->capsNode:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    .line 68
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    .line 74
    sget-boolean v0, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 77
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    .line 86
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->sendPresence:Z

    .line 87
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->rosterLoadedAtLogin:Z

    .line 88
    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->enabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .line 108
    invoke-static {}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->forDefaultProxy()Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->init(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "proxy"    # Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    .line 59
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    .line 60
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    .line 61
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    .line 62
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    .line 63
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->isRosterVersioningAvailable:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->capsNode:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    .line 68
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    .line 74
    sget-boolean v0, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 77
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    .line 86
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->sendPresence:Z

    .line 87
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->rosterLoadedAtLogin:Z

    .line 88
    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->enabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->init(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "proxy"    # Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    .line 59
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    .line 60
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    .line 61
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    .line 62
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    .line 63
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->isRosterVersioningAvailable:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->capsNode:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    .line 68
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    .line 74
    sget-boolean v0, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 77
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    .line 86
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->sendPresence:Z

    .line 87
    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->rosterLoadedAtLogin:Z

    .line 88
    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->enabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .line 150
    invoke-direct {p0, p1, p2, p1, p3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->init(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    .line 151
    return-void
.end method

.method private init(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "proxy"    # Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .prologue
    .line 154
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->host:Ljava/lang/String;

    .line 155
    iput p2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->port:I

    .line 156
    iput-object p3, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->serviceName:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .line 161
    const-string/jumbo v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "javaHome":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "security"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "cacerts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststorePath:Ljava/lang/String;

    .line 168
    const-string/jumbo v2, "jks"

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststoreType:Ljava/lang/String;

    .line 170
    const-string/jumbo v2, "changeit"

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststorePassword:Ljava/lang/String;

    .line 171
    const-string/jumbo v2, "javax.net.ssl.keyStore"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->keystorePath:Ljava/lang/String;

    .line 172
    const-string/jumbo v2, "jks"

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->keystoreType:Ljava/lang/String;

    .line 173
    const-string/jumbo v2, "pkcs11.config"

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->pkcs11Library:Ljava/lang/String;

    .line 176
    invoke-virtual {p4}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->socketFactory:Ljavax/net/SocketFactory;

    .line 177
    return-void
.end method


# virtual methods
.method public getCallbackHandler()Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    return-object v0
.end method

.method getCapsNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->capsNode:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystorePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->keystorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->keystoreType:Ljava/lang/String;

    return-object v0
.end method

.method public getPKCS11Library()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->pkcs11Library:Ljava/lang/String;

    return-object v0
.end method

.method getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->port:I

    return v0
.end method

.method getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityMode()Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getTruststorePassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststorePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getTruststorePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTruststoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststoreType:Ljava/lang/String;

    return-object v0
.end method

.method getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isCompressionEnabled()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    return v0
.end method

.method public isDebuggerEnabled()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    return v0
.end method

.method public isExpiredCertificatesCheckEnabled()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    return v0
.end method

.method public isNotMatchingDomainCheckEnabled()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    return v0
.end method

.method public isReconnectionAllowed()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    return v0
.end method

.method public isRosterLoadedAtLogin()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->rosterLoadedAtLogin:Z

    return v0
.end method

.method isRosterVersioningAvailable()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->isRosterVersioningAvailable:Z

    return v0
.end method

.method public isSASLAuthenticationEnabled()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    return v0
.end method

.method public isSelfSignedCertificateEnabled()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    return v0
.end method

.method isSendPresence()Z
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->sendPresence:Z

    return v0
.end method

.method public isVerifyChainEnabled()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    return v0
.end method

.method public isVerifyRootCAEnabled()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    return v0
.end method

.method public setCallbackHandler(Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 0
    .param p1, "callbackHandler"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    .prologue
    .line 617
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    .line 618
    return-void
.end method

.method setCapsNode(Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Ljava/lang/String;

    .prologue
    .line 693
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->capsNode:Ljava/lang/String;

    .line 694
    return-void
.end method

.method public setCompressionEnabled(Z)V
    .locals 0
    .param p1, "compressionEnabled"    # Z

    .prologue
    .line 484
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->compressionEnabled:Z

    .line 485
    return-void
.end method

.method public setDebuggerEnabled(Z)V
    .locals 0
    .param p1, "debuggerEnabled"    # Z

    .prologue
    .line 528
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 529
    return-void
.end method

.method public setExpiredCertificatesCheckEnabled(Z)V
    .locals 0
    .param p1, "expiredCertificatesCheckEnabled"    # Z

    .prologue
    .line 438
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->expiredCertificatesCheckEnabled:Z

    .line 439
    return-void
.end method

.method public setKeystorePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "keystorePath"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->keystorePath:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setKeystoreType(Ljava/lang/String;)V
    .locals 0
    .param p1, "keystoreType"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->keystoreType:Ljava/lang/String;

    .line 336
    return-void
.end method

.method setLoginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "resource"    # Ljava/lang/String;

    .prologue
    .line 710
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->username:Ljava/lang/String;

    .line 711
    iput-object p2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->password:Ljava/lang/String;

    .line 712
    iput-object p3, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->resource:Ljava/lang/String;

    .line 713
    return-void
.end method

.method public setNotMatchingDomainCheckEnabled(Z)V
    .locals 0
    .param p1, "notMatchingDomainCheckEnabled"    # Z

    .prologue
    .line 460
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->notMatchingDomainCheckEnabled:Z

    .line 461
    return-void
.end method

.method public setPKCS11Library(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkcs11Library"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->pkcs11Library:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setReconnectionAllowed(Z)V
    .locals 0
    .param p1, "isAllowed"    # Z

    .prologue
    .line 538
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    .line 539
    return-void
.end method

.method public setRosterLoadedAtLogin(Z)V
    .locals 0
    .param p1, "rosterLoadedAtLogin"    # Z

    .prologue
    .line 591
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->rosterLoadedAtLogin:Z

    .line 592
    return-void
.end method

.method setRosterVersioningAvailable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 689
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->isRosterVersioningAvailable:Z

    .line 690
    return-void
.end method

.method public setSASLAuthenticationEnabled(Z)V
    .locals 0
    .param p1, "saslAuthenticationEnabled"    # Z

    .prologue
    .line 508
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->saslAuthenticationEnabled:Z

    .line 509
    return-void
.end method

.method public setSecurityMode(Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;)V
    .locals 0
    .param p1, "securityMode"    # Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .prologue
    .line 235
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .line 236
    return-void
.end method

.method public setSelfSignedCertificateEnabled(Z)V
    .locals 0
    .param p1, "selfSignedCertificateEnabled"    # Z

    .prologue
    .line 416
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->selfSignedCertificateEnabled:Z

    .line 417
    return-void
.end method

.method public setSendPresence(Z)V
    .locals 0
    .param p1, "sendPresence"    # Z

    .prologue
    .line 569
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->sendPresence:Z

    .line 570
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->serviceName:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .locals 0
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .prologue
    .line 557
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->socketFactory:Ljavax/net/SocketFactory;

    .line 558
    return-void
.end method

.method public setTruststorePassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "truststorePassword"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststorePassword:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setTruststorePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "truststorePath"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststorePath:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setTruststoreType(Ljava/lang/String;)V
    .locals 0
    .param p1, "truststoreType"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->truststoreType:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setVerifyChainEnabled(Z)V
    .locals 0
    .param p1, "verifyChainEnabled"    # Z

    .prologue
    .line 378
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyChainEnabled:Z

    .line 379
    return-void
.end method

.method public setVerifyRootCAEnabled(Z)V
    .locals 0
    .param p1, "verifyRootCAEnabled"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->verifyRootCAEnabled:Z

    .line 397
    return-void
.end method
