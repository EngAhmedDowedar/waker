.class public Lcom/anansimobile/city_ar/CCTGoogleConversionTrack;
.super Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
.source "CCTGoogleConversionTrack.java"


# instance fields
.field sCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/city_ar/CCTGoogleConversionTrack;->sCtx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "isDebug"    # Z

    .prologue
    .line 13
    iput-object p1, p0, Lcom/anansimobile/city_ar/CCTGoogleConversionTrack;->sCtx:Landroid/content/Context;

    .line 14
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 47
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 51
    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public trackInstall()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public trackLogin(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method

.method public trackOpen(Ljava/lang/String;)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 22
    return-void
.end method

.method public trackPurchase(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "cost"    # D
    .param p5, "currency"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "costMoney":Ljava/lang/String;
    iget-object v1, p0, Lcom/anansimobile/city_ar/CCTGoogleConversionTrack;->sCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "985727499"

    const-string/jumbo v3, "H214CNKfmF0Qi4SE1gM"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    return-void
.end method

.method public trackRegistration(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 26
    return-void
.end method
