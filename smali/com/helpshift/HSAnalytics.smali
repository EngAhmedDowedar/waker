.class final Lcom/helpshift/HSAnalytics;
.super Ljava/lang/Object;
.source "HSAnalytics.java"


# static fields
.field private static data:Lcom/helpshift/HSApiData;

.field protected static decomp:Z

.field private static isForeground:Z

.field private static started:I

.field private static stopped:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/HSAnalytics;->data:Lcom/helpshift/HSApiData;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appIsInForeground()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/helpshift/HSAnalytics;->isForeground:Z

    return v0
.end method

.method public static onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 19
    sget-object v1, Lcom/helpshift/HSAnalytics;->data:Lcom/helpshift/HSApiData;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/helpshift/HSApiData;

    invoke-direct {v1, p0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/helpshift/HSAnalytics;->data:Lcom/helpshift/HSApiData;

    .line 23
    :cond_0
    sget v1, Lcom/helpshift/HSAnalytics;->started:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/helpshift/HSAnalytics;->started:I

    .line 25
    sget-boolean v1, Lcom/helpshift/HSAnalytics;->isForeground:Z

    if-nez v1, :cond_1

    .line 26
    sget-boolean v1, Lcom/helpshift/HSAnalytics;->decomp:Z

    if-eqz v1, :cond_2

    .line 27
    const-string/jumbo v1, "d"

    invoke-static {v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 31
    :goto_0
    invoke-static {}, Lcom/helpshift/Helpshift;->getDelegate()Lcom/helpshift/Helpshift$HelpshiftDelegate;

    move-result-object v0

    .line 32
    .local v0, "delegate":Lcom/helpshift/Helpshift$HelpshiftDelegate;
    if-eqz v0, :cond_1

    .line 33
    invoke-interface {v0}, Lcom/helpshift/Helpshift$HelpshiftDelegate;->helpshiftSessionBegan()V

    .line 36
    .end local v0    # "delegate":Lcom/helpshift/Helpshift$HelpshiftDelegate;
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/helpshift/HSAnalytics;->isForeground:Z

    .line 37
    return-void

    .line 29
    :cond_2
    const-string/jumbo v1, "o"

    invoke-static {v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    sget v1, Lcom/helpshift/HSAnalytics;->stopped:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/helpshift/HSAnalytics;->stopped:I

    .line 41
    sget v1, Lcom/helpshift/HSAnalytics;->started:I

    sget v2, Lcom/helpshift/HSAnalytics;->stopped:I

    if-ne v1, v2, :cond_0

    .line 42
    const/4 v1, 0x0

    sput-boolean v1, Lcom/helpshift/HSAnalytics;->isForeground:Z

    .line 43
    const-string/jumbo v1, "q"

    invoke-static {v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 44
    sget-object v1, Lcom/helpshift/HSAnalytics;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/HSApiData;->reportActionEvents()V

    .line 45
    invoke-static {}, Lcom/helpshift/Helpshift;->getDelegate()Lcom/helpshift/Helpshift$HelpshiftDelegate;

    move-result-object v0

    .line 46
    .local v0, "delegate":Lcom/helpshift/Helpshift$HelpshiftDelegate;
    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lcom/helpshift/Helpshift$HelpshiftDelegate;->helpshiftSessionEnded()V

    .line 50
    .end local v0    # "delegate":Lcom/helpshift/Helpshift$HelpshiftDelegate;
    :cond_0
    return-void
.end method
