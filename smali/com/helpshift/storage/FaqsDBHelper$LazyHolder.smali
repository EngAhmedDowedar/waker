.class Lcom/helpshift/storage/FaqsDBHelper$LazyHolder;
.super Ljava/lang/Object;
.source "FaqsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/storage/FaqsDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/helpshift/storage/FaqsDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/helpshift/storage/FaqsDBHelper;

    invoke-static {}, Lcom/helpshift/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/helpshift/storage/FaqsDBHelper;-><init>(Landroid/content/Context;Lcom/helpshift/storage/FaqsDBHelper$1;)V

    sput-object v0, Lcom/helpshift/storage/FaqsDBHelper$LazyHolder;->INSTANCE:Lcom/helpshift/storage/FaqsDBHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/helpshift/storage/FaqsDBHelper;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/helpshift/storage/FaqsDBHelper$LazyHolder;->INSTANCE:Lcom/helpshift/storage/FaqsDBHelper;

    return-object v0
.end method
