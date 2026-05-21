.class public Lcom/helpshift/util/LocaleUtil;
.super Ljava/lang/Object;
.source "LocaleUtil.java"


# static fields
.field private static final storage:Lcom/helpshift/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/helpshift/HSStorage;

    invoke-static {}, Lcom/helpshift/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/HSStorage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/util/LocaleUtil;->storage:Lcom/helpshift/HSStorage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeLanguage(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sget-object v4, Lcom/helpshift/util/LocaleUtil;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/HSStorage;->getSdkLanguage()Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "language":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 22
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 23
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 24
    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-static {v2}, Lcom/helpshift/util/LocaleUtil;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    iput-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 25
    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 27
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public static getAcceptLanguageHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    sget-object v1, Lcom/helpshift/util/LocaleUtil;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/HSStorage;->getSdkLanguage()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "sdkLanguage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .end local v0    # "sdkLanguage":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 4
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string/jumbo v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-string/jumbo v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "languageArray":[Ljava/lang/String;
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .end local v0    # "languageArray":[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
