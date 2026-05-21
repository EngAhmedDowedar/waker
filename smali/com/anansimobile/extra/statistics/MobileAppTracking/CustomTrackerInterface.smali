.class public Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;
.super Ljava/lang/Object;
.source "CustomTrackerInterface.java"


# static fields
.field static m_customTrackers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddCustomTracker(Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;)V
    .locals 1
    .param p0, "newTracker"    # Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;

    .prologue
    .line 12
    sget-object v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "isDebug"    # Z

    .prologue
    .line 16
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 17
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;

    .line 18
    .local v0, "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, p0, p1}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;->init(Landroid/content/Context;Z)V

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    .end local v0    # "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    :cond_1
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 3
    .param p0, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 79
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 80
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;

    .line 81
    .local v0, "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;->onPause(Landroid/app/Activity;)V

    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    :cond_1
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 3
    .param p0, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 89
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;

    .line 90
    .local v0, "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;->onResume(Landroid/app/Activity;)V

    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    :cond_1
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 3
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 62
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;

    .line 63
    .local v0, "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;->trackEvent(Ljava/lang/String;)V

    .line 61
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    :cond_1
    return-void
.end method

.method public static trackInstall()V
    .locals 3

    .prologue
    .line 25
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 26
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;

    .line 27
    .local v0, "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;->trackInstall()V

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    :cond_1
    return-void
.end method

.method public static trackLogin(Ljava/lang/String;)V
    .locals 3
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 71
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;

    .line 72
    .local v0, "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;->trackLogin(Ljava/lang/String;)V

    .line 70
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    :cond_1
    return-void
.end method

.method public static trackOpen(Ljava/lang/String;)V
    .locals 3
    .param p0, "ref"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 35
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;

    .line 36
    .local v0, "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;->trackOpen(Ljava/lang/String;)V

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    :cond_1
    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 8
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "cost"    # D
    .param p4, "currency"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 53
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;

    .line 54
    .local v1, "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    if-eqz v1, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    .line 55
    invoke-virtual/range {v1 .. v6}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;->trackPurchase(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    :cond_1
    return-void
.end method

.method public static trackRegistration(Ljava/lang/String;)V
    .locals 3
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 44
    sget-object v2, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerInterface;->m_customTrackers:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;

    .line 45
    .local v0, "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p0}, Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;->trackRegistration(Ljava/lang/String;)V

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "cellTracker":Lcom/anansimobile/extra/statistics/MobileAppTracking/CustomTrackerNode;
    :cond_1
    return-void
.end method
