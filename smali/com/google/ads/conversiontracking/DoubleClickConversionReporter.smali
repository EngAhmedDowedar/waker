.class public Lcom/google/ads/conversiontracking/DoubleClickConversionReporter;
.super Lcom/google/ads/conversiontracking/AdWordsConversionReporter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "conversionId"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "isRepeatable"    # Z

    .prologue
    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    return-void
.end method

.method public static reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "conversionId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "isRepeatable"    # Z

    .prologue
    .line 26
    new-instance v0, Lcom/google/ads/conversiontracking/DoubleClickConversionReporter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/conversiontracking/DoubleClickConversionReporter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 27
    invoke-virtual {v0}, Lcom/google/ads/conversiontracking/DoubleClickConversionReporter;->report()V

    .line 28
    return-void
.end method
