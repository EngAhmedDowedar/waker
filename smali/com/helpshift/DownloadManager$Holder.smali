.class Lcom/helpshift/DownloadManager$Holder;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/helpshift/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/helpshift/DownloadManager;

    invoke-static {}, Lcom/helpshift/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/DownloadManager$Holder;->INSTANCE:Lcom/helpshift/DownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/helpshift/DownloadManager;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/helpshift/DownloadManager$Holder;->INSTANCE:Lcom/helpshift/DownloadManager;

    return-object v0
.end method
