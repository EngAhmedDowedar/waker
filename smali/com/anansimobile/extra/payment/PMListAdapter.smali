.class public Lcom/anansimobile/extra/payment/PMListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PMListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anansimobile/extra/payment/PMListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final PM_ICON_PARTH:Ljava/lang/String; = "payssion/pm/icon"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPMItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anansimobile/extra/payment/PMItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anansimobile/extra/payment/PMListAdapter;->mPMItemList:Ljava/util/List;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/anansimobile/extra/payment/PMListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object p1, p0, Lcom/anansimobile/extra/payment/PMListAdapter;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "image":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v3, p0, Lcom/anansimobile/extra/payment/PMListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 96
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 98
    :try_start_0
    iget-object v3, p0, Lcom/anansimobile/extra/payment/PMListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "payssion/pm/icon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    :goto_0
    if-nez v1, :cond_0

    .line 105
    :try_start_1
    iget-object v3, p0, Lcom/anansimobile/extra/payment/PMListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "payssion/pm/icon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "default.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 110
    :cond_0
    :goto_1
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 108
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PMListAdapter;->mPMItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PMListAdapter;->mPMItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/anansimobile/extra/payment/PMListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anansimobile/extra/payment/PMItem;

    .line 49
    .local v0, "pmItem":Lcom/anansimobile/extra/payment/PMItem;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/anansimobile/extra/payment/PMItem;->getItemId()I

    move-result v1

    int-to-long v2, v1

    .line 53
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    if-nez p2, :cond_1

    .line 60
    iget-object v3, p0, Lcom/anansimobile/extra/payment/PMListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/anansimobile/extra/payment/R$layout;->pmitem:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v2, Lcom/anansimobile/extra/payment/PMListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/anansimobile/extra/payment/PMListAdapter$ViewHolder;-><init>(Lcom/anansimobile/extra/payment/PMListAdapter;)V

    .line 64
    .local v2, "viewHolder":Lcom/anansimobile/extra/payment/PMListAdapter$ViewHolder;
    sget v3, Lcom/anansimobile/extra/payment/R$id;->pm_logo:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/anansimobile/extra/payment/PMListAdapter$ViewHolder;->pmLogo:Landroid/widget/ImageView;

    .line 65
    sget v3, Lcom/anansimobile/extra/payment/R$id;->pm_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/anansimobile/extra/payment/PMListAdapter$ViewHolder;->pmName:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    invoke-virtual {p0, p1}, Lcom/anansimobile/extra/payment/PMListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anansimobile/extra/payment/PMItem;

    .line 71
    .local v0, "item":Lcom/anansimobile/extra/payment/PMItem;
    invoke-virtual {v0}, Lcom/anansimobile/extra/payment/PMItem;->getPMId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/anansimobile/extra/payment/PMListAdapter;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 72
    .local v1, "logo":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 73
    iget-object v3, v2, Lcom/anansimobile/extra/payment/PMListAdapter$ViewHolder;->pmLogo:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    :cond_0
    iget-object v3, v2, Lcom/anansimobile/extra/payment/PMListAdapter$ViewHolder;->pmName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/anansimobile/extra/payment/PMItem;->getPMName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-object p2

    .line 68
    .end local v0    # "item":Lcom/anansimobile/extra/payment/PMItem;
    .end local v1    # "logo":Landroid/graphics/Bitmap;
    .end local v2    # "viewHolder":Lcom/anansimobile/extra/payment/PMListAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anansimobile/extra/payment/PMListAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/anansimobile/extra/payment/PMListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setDataForRefresh(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anansimobile/extra/payment/PMItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "pmList":Ljava/util/List;, "Ljava/util/List<Lcom/anansimobile/extra/payment/PMItem;>;"
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PMListAdapter;->mPMItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Lcom/anansimobile/extra/payment/PMListAdapter;->mPMItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-virtual {p0}, Lcom/anansimobile/extra/payment/PMListAdapter;->notifyDataSetChanged()V

    .line 90
    return-void
.end method
