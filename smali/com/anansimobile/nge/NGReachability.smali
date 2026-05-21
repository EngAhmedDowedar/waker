.class public Lcom/anansimobile/nge/NGReachability;
.super Ljava/lang/Object;
.source "NGReachability.java"


# static fields
.field private static connMng:Landroid/net/ConnectivityManager;

.field private static mStatus:I

.field private static mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/anansimobile/nge/NGReachability;->connMng:Landroid/net/ConnectivityManager;

    .line 13
    sput-object v0, Lcom/anansimobile/nge/NGReachability;->mTimer:Ljava/util/Timer;

    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/anansimobile/nge/NGReachability;->mStatus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lcom/anansimobile/nge/NGReachability;->updateStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 10
    sget v0, Lcom/anansimobile/nge/NGReachability;->mStatus:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 10
    sput p0, Lcom/anansimobile/nge/NGReachability;->mStatus:I

    return p0
.end method

.method static synthetic access$200(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 10
    invoke-static {p0}, Lcom/anansimobile/nge/NGReachability;->onNetworkStatusChange(I)V

    return-void
.end method

.method private static native onNetworkStatusChange(I)V
.end method

.method private static startCheck()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x7530

    .line 18
    invoke-static {}, Lcom/anansimobile/nge/NGReachability;->updateStatus()I

    move-result v0

    sput v0, Lcom/anansimobile/nge/NGReachability;->mStatus:I

    .line 20
    sget-object v0, Lcom/anansimobile/nge/NGReachability;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/anansimobile/nge/NGReachability;->mTimer:Ljava/util/Timer;

    .line 24
    :cond_0
    sget-object v0, Lcom/anansimobile/nge/NGReachability;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/anansimobile/nge/NGReachability$1;

    invoke-direct {v1}, Lcom/anansimobile/nge/NGReachability$1;-><init>()V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 36
    return-void
.end method

.method private static stopCheck()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/anansimobile/nge/NGReachability;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/anansimobile/nge/NGReachability;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/NGReachability;->mTimer:Ljava/util/Timer;

    .line 43
    :cond_0
    return-void
.end method

.method private static updateStatus()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 46
    sget-object v1, Lcom/anansimobile/nge/NGReachability;->connMng:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 47
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v1, v3}, Lcom/anansimobile/nge/RootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lcom/anansimobile/nge/NGReachability;->connMng:Landroid/net/ConnectivityManager;

    .line 50
    :cond_0
    sget-object v1, Lcom/anansimobile/nge/NGReachability;->connMng:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 51
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    .line 58
    :goto_0
    return v1

    .line 55
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 58
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
