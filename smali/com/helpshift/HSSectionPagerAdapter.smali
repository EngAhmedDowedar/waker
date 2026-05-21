.class public final Lcom/helpshift/HSSectionPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "HSSectionPagerAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static sectionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/Section;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentPosition:I

.field private data:Lcom/helpshift/HSApiData;

.field private storage:Lcom/helpshift/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/helpshift/HSSectionPagerAdapter;->sectionsList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "sectionPubId"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 43
    new-instance v2, Lcom/helpshift/HSApiData;

    invoke-direct {v2, p2}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/helpshift/HSSectionPagerAdapter;->data:Lcom/helpshift/HSApiData;

    .line 44
    iget-object v2, p0, Lcom/helpshift/HSSectionPagerAdapter;->data:Lcom/helpshift/HSApiData;

    iget-object v2, v2, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iput-object v2, p0, Lcom/helpshift/HSSectionPagerAdapter;->storage:Lcom/helpshift/HSStorage;

    .line 45
    sget-object v2, Lcom/helpshift/HSSectionPagerAdapter;->sectionsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 46
    const/4 v2, -0x1

    iput v2, p0, Lcom/helpshift/HSSectionPagerAdapter;->currentPosition:I

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/helpshift/HSSectionPagerAdapter;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v2}, Lcom/helpshift/HSApiData;->getPopulatedSections()Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/helpshift/HSSectionPagerAdapter;->sectionsList:Ljava/util/ArrayList;

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/helpshift/HSSectionPagerAdapter;->sectionsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 51
    sget-object v2, Lcom/helpshift/HSSectionPagerAdapter;->sectionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/Section;

    invoke-virtual {v2}, Lcom/helpshift/Section;->getPublishId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    iput v1, p0, Lcom/helpshift/HSSectionPagerAdapter;->currentPosition:I

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/HSSectionPagerAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 50
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v2, "HelpShiftDebug"

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/helpshift/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private appendHashMap(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "type"    # Ljava/lang/Object;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string/jumbo v1, "obj"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/helpshift/HSSectionPagerAdapter;->sectionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/helpshift/HSSectionPagerAdapter;->currentPosition:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 78
    sget-object v4, Lcom/helpshift/HSSectionPagerAdapter;->sectionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/Section;

    .line 80
    .local v1, "item":Lcom/helpshift/Section;
    new-instance v2, Lcom/helpshift/HSSectionFragment;

    invoke-direct {v2}, Lcom/helpshift/HSSectionFragment;-><init>()V

    .line 82
    .local v2, "newFragment":Lcom/helpshift/HSSectionFragment;
    invoke-virtual {v1}, Lcom/helpshift/Section;->getPublishId()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "publishId":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "fragmentData":Landroid/os/Bundle;
    const-string/jumbo v4, "sectionPublishId"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2, v0}, Lcom/helpshift/HSSectionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 87
    return-object v2
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 67
    sget-object v1, Lcom/helpshift/HSSectionPagerAdapter;->sectionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/Section;

    .line 68
    .local v0, "item":Lcom/helpshift/Section;
    invoke-virtual {v0}, Lcom/helpshift/Section;->getTitle()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/helpshift/HSSectionPagerAdapter;->currentPosition:I

    .line 33
    return-void
.end method
