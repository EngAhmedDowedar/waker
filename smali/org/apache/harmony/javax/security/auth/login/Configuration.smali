.class public abstract Lorg/apache/harmony/javax/security/auth/login/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static final GET_LOGIN_CONFIGURATION:Lorg/apache/harmony/javax/security/auth/AuthPermission;

.field private static final LOGIN_CONFIGURATION_PROVIDER:Ljava/lang/String; = "login.configuration.provider"

.field private static final SET_LOGIN_CONFIGURATION:Lorg/apache/harmony/javax/security/auth/AuthPermission;

.field private static configuration:Lorg/apache/harmony/javax/security/auth/login/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lorg/apache/harmony/javax/security/auth/AuthPermission;

    .line 31
    const-string/jumbo v1, "getLoginConfiguration"

    .line 30
    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/javax/security/auth/login/Configuration;->GET_LOGIN_CONFIGURATION:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    .line 34
    new-instance v0, Lorg/apache/harmony/javax/security/auth/AuthPermission;

    .line 35
    const-string/jumbo v1, "setLoginConfiguration"

    .line 34
    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/javax/security/auth/login/Configuration;->SET_LOGIN_CONFIGURATION:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    .line 24
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static getAccessibleConfiguration()Lorg/apache/harmony/javax/security/auth/login/Configuration;
    .locals 3

    .prologue
    .line 79
    sget-object v0, Lorg/apache/harmony/javax/security/auth/login/Configuration;->configuration:Lorg/apache/harmony/javax/security/auth/login/Configuration;

    .line 80
    .local v0, "current":Lorg/apache/harmony/javax/security/auth/login/Configuration;
    if-nez v0, :cond_1

    .line 81
    const-class v2, Lorg/apache/harmony/javax/security/auth/login/Configuration;

    monitor-enter v2

    .line 82
    :try_start_0
    sget-object v1, Lorg/apache/harmony/javax/security/auth/login/Configuration;->configuration:Lorg/apache/harmony/javax/security/auth/login/Configuration;

    if-nez v1, :cond_0

    .line 83
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getDefaultProvider()Lorg/apache/harmony/javax/security/auth/login/Configuration;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/javax/security/auth/login/Configuration;->configuration:Lorg/apache/harmony/javax/security/auth/login/Configuration;

    .line 85
    :cond_0
    sget-object v0, Lorg/apache/harmony/javax/security/auth/login/Configuration;->configuration:Lorg/apache/harmony/javax/security/auth/login/Configuration;

    .end local v0    # "current":Lorg/apache/harmony/javax/security/auth/login/Configuration;
    monitor-exit v2

    .line 88
    :cond_1
    return-object v0

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getConfiguration()Lorg/apache/harmony/javax/security/auth/login/Configuration;
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 46
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 47
    sget-object v1, Lorg/apache/harmony/javax/security/auth/login/Configuration;->GET_LOGIN_CONFIGURATION:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 49
    :cond_0
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getAccessibleConfiguration()Lorg/apache/harmony/javax/security/auth/login/Configuration;

    move-result-object v1

    return-object v1
.end method

.method private static final getDefaultProvider()Lorg/apache/harmony/javax/security/auth/login/Configuration;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/Configuration$1;

    invoke-direct {v0}, Lorg/apache/harmony/javax/security/auth/login/Configuration$1;-><init>()V

    return-object v0
.end method

.method public static setConfiguration(Lorg/apache/harmony/javax/security/auth/login/Configuration;)V
    .locals 2
    .param p0, "configuration"    # Lorg/apache/harmony/javax/security/auth/login/Configuration;

    .prologue
    .line 92
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 93
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 94
    sget-object v1, Lorg/apache/harmony/javax/security/auth/login/Configuration;->SET_LOGIN_CONFIGURATION:Lorg/apache/harmony/javax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 96
    :cond_0
    sput-object p0, Lorg/apache/harmony/javax/security/auth/login/Configuration;->configuration:Lorg/apache/harmony/javax/security/auth/login/Configuration;

    .line 97
    return-void
.end method


# virtual methods
.method public abstract getAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
.end method

.method public abstract refresh()V
.end method
