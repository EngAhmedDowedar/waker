.class public Lcom/anansimobile/nge/NGTypefacePool;
.super Ljava/lang/Object;
.source "NGTypefacePool.java"


# static fields
.field private static sTypefaceInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/anansimobile/nge/TypefaceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/anansimobile/nge/NGTypefacePool;->sTypefaceInfos:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllTypeface()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public static getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v2, 0x0

    .line 23
    .local v2, "tfInfo":Lcom/anansimobile/nge/TypefaceInfo;
    sget-object v3, Lcom/anansimobile/nge/NGTypefacePool;->sTypefaceInfos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 24
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/anansimobile/nge/TypefaceInfo;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anansimobile/nge/TypefaceInfo;

    .line 26
    .local v1, "nodeTypefaceInfo":Lcom/anansimobile/nge/TypefaceInfo;
    invoke-virtual {v1}, Lcom/anansimobile/nge/TypefaceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    move-object v2, v1

    .line 32
    .end local v1    # "nodeTypefaceInfo":Lcom/anansimobile/nge/TypefaceInfo;
    :cond_1
    if-nez v2, :cond_2

    .line 33
    new-instance v2, Lcom/anansimobile/nge/TypefaceInfo;

    .end local v2    # "tfInfo":Lcom/anansimobile/nge/TypefaceInfo;
    invoke-direct {v2, p0}, Lcom/anansimobile/nge/TypefaceInfo;-><init>(Ljava/lang/String;)V

    .line 34
    .restart local v2    # "tfInfo":Lcom/anansimobile/nge/TypefaceInfo;
    sget-object v3, Lcom/anansimobile/nge/NGTypefacePool;->sTypefaceInfos:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_2
    invoke-virtual {v2}, Lcom/anansimobile/nge/TypefaceInfo;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3
.end method
