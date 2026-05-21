.class public Lcom/helpshift/app/ActionBarHelperBase;
.super Lcom/helpshift/app/ActionBarHelper;
.source "ActionBarHelperBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/app/ActionBarHelperBase$HomeView;,
        Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;
    }
.end annotation


# static fields
.field private static final MENU_ATTR_ACTION_LAYOUT:Ljava/lang/String; = "actionLayout"

.field private static final MENU_ATTR_ACTION_VIEW_CLASS:Ljava/lang/String; = "actionViewClass"

.field private static final MENU_ATTR_ID:Ljava/lang/String; = "id"

.field private static final MENU_ATTR_SHOW_AS_ACTION:Ljava/lang/String; = "showAsAction"

.field private static final MENU_RES_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actionBarInitialised:Z

.field private actionItemIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private actionItemIdsToActionLayoutLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private actionItemIdsToActionViewClassLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private menuItemActionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;",
            ">;"
        }
    .end annotation
.end field

.field private progressVisible:Z

.field private queryTextActionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;",
            ">;"
        }
    .end annotation
.end field

.field protected viewExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/helpshift/app/ActionBarHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/app/ActionBarHelperBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/helpshift/app/ActionBarHelper;-><init>(Landroid/app/Activity;)V

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->actionItemIds:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->actionItemIdsToActionViewClassLookup:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->actionItemIdsToActionLayoutLookup:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->queryTextActionsMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->menuItemActionsMap:Ljava/util/Map;

    .line 59
    iput-boolean v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->actionBarInitialised:Z

    .line 60
    iput-boolean v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->progressVisible:Z

    .line 61
    iput-boolean v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->viewExpanded:Z

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/app/ActionBarHelperBase;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->actionItemIdsToActionViewClassLookup:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/app/ActionBarHelperBase;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/app/ActionBarHelperBase;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/app/ActionBarHelperBase;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->actionItemIdsToActionLayoutLookup:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/helpshift/app/ActionBarHelperBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/app/ActionBarHelperBase;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->actionItemIds:Ljava/util/Set;

    return-object v0
.end method

.method private addActionItem(Landroid/view/ViewGroup;Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "actionBarCompat"    # Landroid/view/ViewGroup;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 184
    iget-object v2, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/D$dimen;->hs__actionbar_compat_button_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 186
    .local v1, "actionButtonWidth":I
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    sget v4, Lcom/helpshift/D$attr;->hs__actionbarCompatItemBaseStyle:I

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    .local v0, "actionButton":Landroid/widget/ImageButton;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 191
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    new-instance v2, Lcom/helpshift/app/ActionBarHelperBase$2;

    invoke-direct {v2, p0, p2}, Lcom/helpshift/app/ActionBarHelperBase$2;-><init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 200
    check-cast p2, Lcom/helpshift/app/SimpleMenuItem;

    .end local p2    # "item":Landroid/view/MenuItem;
    new-instance v2, Lcom/helpshift/app/ActionBarHelperBase$3;

    invoke-direct {v2, p0, v0}, Lcom/helpshift/app/ActionBarHelperBase$3;-><init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/widget/ImageButton;)V

    invoke-virtual {p2, v2}, Lcom/helpshift/app/SimpleMenuItem;->setOnMenuItemChangedListener(Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemChangedListener;)Landroid/view/MenuItem;

    .line 210
    return-void
.end method

.method private addActionItemCompatExpandListener(Landroid/view/MenuItem;)V
    .locals 7
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 298
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 299
    .local v2, "menuItemId":I
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v5

    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 300
    .local v4, "title":Landroid/view/View;
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v5

    sget v6, Lcom/helpshift/D$id;->hs__action_report_issue:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 302
    .local v0, "conversation":Landroid/view/View;
    iget-object v5, p0, Lcom/helpshift/app/ActionBarHelperBase;->menuItemActionsMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lcom/helpshift/D$id;->hs__action_search:I

    if-ne v2, v5, :cond_0

    .line 303
    iget-object v5, p0, Lcom/helpshift/app/ActionBarHelperBase;->menuItemActionsMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;

    .line 304
    .local v1, "itemActions":Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v5

    sget v6, Lcom/helpshift/D$id;->hs__action_search:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/helpshift/widget/SimpleSearchView;

    .line 305
    .local v3, "simpleSearchView":Lcom/helpshift/widget/SimpleSearchView;
    new-instance v5, Lcom/helpshift/app/ActionBarHelperBase$4;

    invoke-direct {v5, p0, v4, v0, v1}, Lcom/helpshift/app/ActionBarHelperBase$4;-><init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/view/View;Landroid/view/View;Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;)V

    invoke-virtual {v3, v5}, Lcom/helpshift/widget/SimpleSearchView;->setOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)V

    .line 327
    .end local v1    # "itemActions":Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;
    .end local v3    # "simpleSearchView":Lcom/helpshift/widget/SimpleSearchView;
    :cond_0
    return-void
.end method

.method private addActionItemCompatFromMenuItem(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v0

    .line 136
    .local v0, "actionBarCompat":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    :cond_0
    move-object v2, p1

    .line 140
    check-cast v2, Lcom/helpshift/app/SimpleMenuItem;

    invoke-virtual {v2}, Lcom/helpshift/app/SimpleMenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    .line 141
    .local v1, "actionView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 154
    invoke-direct {p0, v0, p1}, Lcom/helpshift/app/ActionBarHelperBase;->addActionItem(Landroid/view/ViewGroup;Landroid/view/MenuItem;)V

    goto :goto_0

    .line 148
    :sswitch_0
    invoke-direct {p0, v0, p1}, Lcom/helpshift/app/ActionBarHelperBase;->addHomeActionItem(Landroid/view/ViewGroup;Landroid/view/MenuItem;)V

    goto :goto_0

    .line 151
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/helpshift/app/ActionBarHelperBase;->addProgressActionItem(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x102000d -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method private addActionItemCompatOnTextListener(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 334
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 336
    .local v0, "menuItemId":I
    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperBase;->queryTextActionsMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/helpshift/D$id;->hs__action_search:I

    if-ne v0, v3, :cond_0

    .line 337
    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperBase;->queryTextActionsMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;

    .line 338
    .local v1, "queryTextActions":Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v3

    sget v4, Lcom/helpshift/D$id;->hs__action_search:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/helpshift/widget/SimpleSearchView;

    .line 339
    .local v2, "simpleSearchView":Lcom/helpshift/widget/SimpleSearchView;
    new-instance v3, Lcom/helpshift/app/ActionBarHelperBase$5;

    invoke-direct {v3, p0, v1}, Lcom/helpshift/app/ActionBarHelperBase$5;-><init>(Lcom/helpshift/app/ActionBarHelperBase;Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;)V

    invoke-virtual {v2, v3}, Lcom/helpshift/widget/SimpleSearchView;->setQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V

    .line 351
    .end local v1    # "queryTextActions":Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;
    .end local v2    # "simpleSearchView":Lcom/helpshift/widget/SimpleSearchView;
    :cond_0
    return-void
.end method

.method private addHomeActionItem(Landroid/view/ViewGroup;Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "actionBarCompat"    # Landroid/view/ViewGroup;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 160
    iget-object v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/helpshift/D$layout;->hs__actionbar_compat_home:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpshift/app/ActionBarHelperBase$HomeView;

    .line 163
    .local v0, "homeView":Lcom/helpshift/app/ActionBarHelperBase$HomeView;
    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v1, Lcom/helpshift/app/ActionBarHelperBase$1;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/app/ActionBarHelperBase$1;-><init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-virtual {v0, v4}, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->setClickable(Z)V

    .line 178
    invoke-virtual {v0, v4}, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->setFocusable(Z)V

    .line 179
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private addProgressActionItem(Landroid/view/ViewGroup;)V
    .locals 11
    .param p1, "actionBarCompat"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    .line 213
    sget v3, Lcom/helpshift/D$dimen;->hs__actionbar_compat_button_width:I

    .line 214
    .local v3, "buttonWidthId":I
    sget v1, Lcom/helpshift/D$dimen;->hs__actionbar_compat_height:I

    .line 216
    .local v1, "buttonHeightId":I
    new-instance v4, Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v8, 0x0

    sget v9, Lcom/helpshift/D$attr;->hs__actionbarCompatProgressIndicatorStyle:I

    invoke-direct {v4, v7, v8, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 218
    .local v4, "indicator":Landroid/widget/ProgressBar;
    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 219
    .local v2, "buttonWidth":I
    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 220
    .local v0, "buttonHeight":I
    div-int/lit8 v6, v2, 0x2

    .line 222
    .local v6, "progressIndicatorWidth":I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v5, "indicatorLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    sub-int v8, v0, v6

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v2, v6

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 229
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-boolean v7, p0, Lcom/helpshift/app/ActionBarHelperBase;->progressVisible:Z

    if-eqz v7, :cond_0

    .line 231
    invoke-virtual {v4, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    :goto_0
    sget v7, Lcom/helpshift/D$id;->hs__actionbar_compat_item_refresh_progress:I

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setId(I)V

    .line 236
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 237
    return-void

    .line 233
    :cond_0
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v0

    .line 104
    .local v0, "actionBarCompat":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 111
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v5, Lcom/helpshift/app/SimpleMenu;

    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v7}, Lcom/helpshift/app/SimpleMenu;-><init>(Landroid/content/Context;)V

    .line 112
    .local v5, "tempMenu":Lcom/helpshift/app/SimpleMenu;
    new-instance v2, Lcom/helpshift/app/SimpleMenuItem;

    const v7, 0x102002c

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v5, v7, v10, v8}, Lcom/helpshift/app/SimpleMenuItem;-><init>(Lcom/helpshift/app/SimpleMenu;IILjava/lang/CharSequence;)V

    .line 114
    .local v2, "homeItem":Lcom/helpshift/app/SimpleMenuItem;
    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/helpshift/util/Xml;->getLogoResourceValue(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/helpshift/app/SimpleMenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 115
    invoke-direct {p0, v2}, Lcom/helpshift/app/ActionBarHelperBase;->addActionItemCompatFromMenuItem(Landroid/view/MenuItem;)V

    .line 118
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v4, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v4, "springLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 121
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v8, 0x0

    sget v9, Lcom/helpshift/D$attr;->hs__actionbarCompatTitleStyle:I

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    .local v6, "titleView":Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    .line 125
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    new-instance v3, Lcom/helpshift/app/SimpleMenuItem;

    const v7, 0x102000d

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v7, v10, v8}, Lcom/helpshift/app/SimpleMenuItem;-><init>(Lcom/helpshift/app/SimpleMenu;IILjava/lang/CharSequence;)V

    .line 129
    .local v3, "progressItem":Lcom/helpshift/app/SimpleMenuItem;
    invoke-direct {p0, v3}, Lcom/helpshift/app/ActionBarHelperBase;->addActionItemCompatFromMenuItem(Landroid/view/MenuItem;)V

    .line 131
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/helpshift/app/ActionBarHelperBase;->actionBarInitialised:Z

    goto :goto_0
.end method


# virtual methods
.method public clearFocus(Landroid/view/MenuItem;)V
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 494
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 495
    .local v0, "menuItemId":I
    sget v2, Lcom/helpshift/D$id;->hs__action_search:I

    if-ne v0, v2, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/helpshift/D$id;->hs__action_search:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/helpshift/widget/SimpleSearchView;

    .line 497
    .local v1, "simpleSearchView":Lcom/helpshift/widget/SimpleSearchView;
    invoke-virtual {v1}, Lcom/helpshift/widget/SimpleSearchView;->clearFocus()V

    .line 499
    .end local v1    # "simpleSearchView":Lcom/helpshift/widget/SimpleSearchView;
    :cond_0
    return-void
.end method

.method public collapseActionView(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/helpshift/D$id;->hs__action_search:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpshift/widget/SimpleSearchView;

    .line 477
    .local v0, "simpleSearchView":Lcom/helpshift/widget/SimpleSearchView;
    invoke-virtual {v0}, Lcom/helpshift/widget/SimpleSearchView;->collapseActionView()V

    .line 478
    return-void
.end method

.method public getActionBarCompat()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/helpshift/D$id;->hs__actionbar_compat:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMenuInflater(Landroid/view/MenuInflater;)Landroid/view/MenuInflater;
    .locals 2
    .param p1, "superMenuInflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 245
    new-instance v0, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;

    iget-object v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1}, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;-><init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/content/Context;Landroid/view/MenuInflater;)V

    return-object v0
.end method

.method public getQuery(Landroid/view/MenuItem;)Ljava/lang/String;
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 482
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 483
    .local v0, "menuItemId":I
    const-string/jumbo v1, ""

    .line 484
    .local v1, "query":Ljava/lang/String;
    sget v3, Lcom/helpshift/D$id;->hs__action_search:I

    if-ne v0, v3, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v3

    sget v4, Lcom/helpshift/D$id;->hs__action_search:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/helpshift/widget/SimpleSearchView;

    .line 486
    .local v2, "simpleSearchView":Lcom/helpshift/widget/SimpleSearchView;
    invoke-virtual {v2}, Lcom/helpshift/widget/SimpleSearchView;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 489
    .end local v2    # "simpleSearchView":Lcom/helpshift/widget/SimpleSearchView;
    :cond_0
    return-object v1
.end method

.method protected isViewExpanded()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->viewExpanded:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 70
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/helpshift/app/ActionBarHelper;->onPostCreate(Landroid/os/Bundle;)V

    .line 76
    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x7

    sget v5, Lcom/helpshift/D$layout;->hs__actionbar_compat:I

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 78
    invoke-direct {p0}, Lcom/helpshift/app/ActionBarHelperBase;->setupActionBar()V

    .line 80
    new-instance v1, Lcom/helpshift/app/SimpleMenu;

    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/helpshift/app/SimpleMenu;-><init>(Landroid/content/Context;)V

    .line 81
    .local v1, "menu":Lcom/helpshift/app/SimpleMenu;
    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 82
    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/helpshift/app/SimpleMenu;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 86
    invoke-virtual {v1, v0}, Lcom/helpshift/app/SimpleMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 87
    .local v2, "menuItem":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperBase;->actionItemIds:Ljava/util/Set;

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    invoke-direct {p0, v2}, Lcom/helpshift/app/ActionBarHelperBase;->addActionItemCompatFromMenuItem(Landroid/view/MenuItem;)V

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/helpshift/app/SimpleMenu;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 94
    invoke-virtual {v1, v0}, Lcom/helpshift/app/SimpleMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 95
    .restart local v2    # "menuItem":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperBase;->actionItemIds:Ljava/util/Set;

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    invoke-direct {p0, v2}, Lcom/helpshift/app/ActionBarHelperBase;->addActionItemCompatOnTextListener(Landroid/view/MenuItem;)V

    .line 97
    invoke-direct {p0, v2}, Lcom/helpshift/app/ActionBarHelperBase;->addActionItemCompatExpandListener(Landroid/view/MenuItem;)V

    .line 93
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    .end local v2    # "menuItem":Landroid/view/MenuItem;
    :cond_3
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 251
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 0
    .param p1, "navigationMode"    # I

    .prologue
    .line 285
    return-void
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem;Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;)V
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "menuItemActions"    # Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->menuItemActionsMap:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void
.end method

.method public setOnQueryTextListener(Landroid/view/MenuItem;Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;)V
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "queryTextActions"    # Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->queryTextActionsMap:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 271
    iget-boolean v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->actionBarInitialised:Z

    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/helpshift/D$id;->hs__actionbar_compat_item_refresh_progress:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 273
    .local v0, "progress":Landroid/view/View;
    if-eqz p1, :cond_1

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .end local v0    # "progress":Landroid/view/View;
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/helpshift/app/ActionBarHelperBase;->progressVisible:Z

    .line 280
    return-void

    .line 276
    .restart local v0    # "progress":Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    iget-boolean v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->actionBarInitialised:Z

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 258
    .local v0, "titleText":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .end local v0    # "titleText":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public supportRequestWindowFeature(I)V
    .locals 0
    .param p1, "featureId"    # I

    .prologue
    .line 267
    return-void
.end method
