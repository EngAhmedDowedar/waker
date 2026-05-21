.class Lcom/anansimobile/nge/TypefaceInfo;
.super Ljava/lang/Object;
.source "NGTypefacePool.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/anansimobile/nge/TypefaceInfo;->mName:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/TypefaceInfo;->mTypeface:Landroid/graphics/Typeface;

    .line 50
    iput-object p1, p0, Lcom/anansimobile/nge/TypefaceInfo;->mName:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/anansimobile/nge/TypefaceInfo;->initTypeface()V

    .line 55
    return-void
.end method

.method private initTypeface()V
    .locals 6

    .prologue
    .line 59
    sget-object v4, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v4}, Lcom/anansimobile/nge/RootActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 61
    .local v3, "mgr":Landroid/content/res/AssetManager;
    const/4 v0, 0x1

    .line 63
    .local v0, "customFontExist":Z
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anansimobile/nge/TypefaceInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".ttf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 64
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v0, :cond_0

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anansimobile/nge/TypefaceInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".ttf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/anansimobile/nge/TypefaceInfo;->mTypeface:Landroid/graphics/Typeface;

    .line 77
    :goto_1
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v4, p0, Lcom/anansimobile/nge/TypefaceInfo;->mName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/anansimobile/nge/TypefaceInfo;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 89
    if-ne p0, p1, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 98
    :goto_0
    return v1

    .line 93
    :cond_0
    instance-of v1, p1, Lcom/anansimobile/nge/TypefaceInfo;

    if-nez v1, :cond_1

    .line 94
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 97
    check-cast v0, Lcom/anansimobile/nge/TypefaceInfo;

    .line 98
    .local v0, "tfInfo":Lcom/anansimobile/nge/TypefaceInfo;
    iget-object v1, p0, Lcom/anansimobile/nge/TypefaceInfo;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/anansimobile/nge/TypefaceInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/anansimobile/nge/TypefaceInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/anansimobile/nge/TypefaceInfo;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/anansimobile/nge/TypefaceInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    const-string/jumbo v0, "TypefaceInfo, name: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/anansimobile/nge/TypefaceInfo;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
