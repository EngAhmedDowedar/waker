.class Lcom/anansimobile/nge/NGRootActivityLayout;
.super Landroid/widget/RelativeLayout;
.source "RootActivity.java"


# instance fields
.field private mFullHeight:I

.field private mFullWidth:I

.field private mIsKeyboardShown:Z

.field private mNavigationgBarHeight:I

.field private mVisibleFrame:Landroid/graphics/Rect;

.field private preCurBoardId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 923
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 988
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anansimobile/nge/NGRootActivityLayout;->mVisibleFrame:Landroid/graphics/Rect;

    .line 989
    iput v1, p0, Lcom/anansimobile/nge/NGRootActivityLayout;->mFullWidth:I

    .line 990
    iput v1, p0, Lcom/anansimobile/nge/NGRootActivityLayout;->mFullHeight:I

    .line 991
    iput v1, p0, Lcom/anansimobile/nge/NGRootActivityLayout;->mNavigationgBarHeight:I

    .line 993
    iput-boolean v1, p0, Lcom/anansimobile/nge/NGRootActivityLayout;->mIsKeyboardShown:Z

    .line 994
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/anansimobile/nge/NGRootActivityLayout;->preCurBoardId:Ljava/lang/String;

    .line 924
    return-void
.end method

.method private getNavigationBarHeight(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 979
    const/4 v0, 0x0

    .line 980
    .local v0, "resourceId":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "config_showNavigationBar"

    const-string/jumbo v4, "bool"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 981
    .local v1, "rid":I
    if-eqz v1, :cond_0

    .line 982
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 983
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 985
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public SetPreCurBoardId()V
    .locals 2

    .prologue
    .line 997
    sget-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v0}, Lcom/anansimobile/nge/RootActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anansimobile/nge/NGRootActivityLayout;->preCurBoardId:Ljava/lang/String;

    .line 998
    return-void
.end method

.method public getGlobalNavigationBarHeight()I
    .locals 1

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/anansimobile/nge/NGRootActivityLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anansimobile/nge/NGRootActivityLayout;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/anansimobile/nge/NGRootActivityLayout;->mNavigationgBarHeight:I

    .line 975
    iget v0, p0, Lcom/anansimobile/nge/NGRootActivityLayout;->mNavigationgBarHeight:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 970
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 971
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 928
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 932
    iget v0, p0, Lcom/anansimobile/nge/NGRootActivityLayout;->mFullWidth:I

    if-ne p3, v0, :cond_0

    .line 933
    iput p1, p0, Lcom/anansimobile/nge/NGRootActivityLayout;->mFullWidth:I

    .line 935
    :cond_0
    iget v0, p0, Lcom/anansimobile/nge/NGRootActivityLayout;->mFullHeight:I

    if-ne p4, v0, :cond_1

    .line 936
    iput p2, p0, Lcom/anansimobile/nge/NGRootActivityLayout;->mFullHeight:I

    .line 939
    :cond_1
    return-void
.end method
