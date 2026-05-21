.class public final Lcom/google/ads/conversiontracking/AdWordsAutomatedUsageReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableAutomatedUsageReporting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "conversionId"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/ads/conversiontracking/c;->a(Landroid/content/Context;)Lcom/google/ads/conversiontracking/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/conversiontracking/c;->b(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static enableAutomatedUsageReporting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "conversionId"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/google/ads/conversiontracking/c;->a(Landroid/content/Context;)Lcom/google/ads/conversiontracking/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/conversiontracking/c;->a(Ljava/lang/String;)V

    .line 23
    return-void
.end method
