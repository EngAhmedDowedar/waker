.class public Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
.super Ljava/lang/Object;
.source "CustomTrackerNode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "isDebug"    # Z

    .prologue
    .line 10
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 38
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 42
    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 30
    return-void
.end method

.method public trackInstall()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public trackLogin(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 34
    return-void
.end method

.method public trackOpen(Ljava/lang/String;)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 18
    return-void
.end method

.method public trackPurchase(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "cost"    # D
    .param p5, "currency"    # Ljava/lang/String;

    .prologue
    .line 26
    return-void
.end method

.method public trackRegistration(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 22
    return-void
.end method
