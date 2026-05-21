.class public final Lcom/helpshift/util/HSTimeUtil;
.super Ljava/lang/Object;
.source "HSTimeUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateTimeAdjustment(Ljava/lang/String;)Ljava/lang/Float;
    .locals 10
    .param p0, "serverTime"    # Ljava/lang/String;

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 15
    new-instance v3, Ljava/lang/Float;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/lang/Float;-><init>(F)V

    .line 16
    .local v3, "timeDelta":Ljava/lang/Float;
    sget-object v5, Lcom/helpshift/util/HSFormat;->tsSecFormatter:Ljava/text/DecimalFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "deviceTime":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 19
    .local v4, "timeStamp":Ljava/lang/Double;
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-long v6, v6

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 20
    .local v2, "serverDate":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-double v6, v6

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-float v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 25
    .end local v2    # "serverDate":Ljava/util/Date;
    .end local v4    # "timeStamp":Ljava/lang/Double;
    :goto_0
    return-object v3

    .line 21
    :catch_0
    move-exception v1

    .line 22
    .local v1, "e":Landroid/net/ParseException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "Could not parse the server date"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAdjustedTimeInMillis(Ljava/lang/Float;)J
    .locals 5
    .param p0, "timeDelta"    # Ljava/lang/Float;

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    .local v0, "deviceTs":J
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 41
    long-to-float v2, v0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-long v0, v2

    .line 43
    :cond_0
    return-wide v0
.end method

.method public static getAdjustedTimestamp(Ljava/lang/Float;)Ljava/lang/String;
    .locals 8
    .param p0, "timeDelta"    # Ljava/lang/Float;

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 30
    sget-object v2, Lcom/helpshift/util/HSFormat;->tsSecFormatter:Ljava/text/DecimalFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "deviceTs":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 33
    .local v1, "deviceTsFloat":Ljava/lang/Double;
    sget-object v2, Lcom/helpshift/util/HSFormat;->tsSecFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v6, v3

    add-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 35
    .end local v1    # "deviceTsFloat":Ljava/lang/Double;
    :cond_0
    return-object v0
.end method
