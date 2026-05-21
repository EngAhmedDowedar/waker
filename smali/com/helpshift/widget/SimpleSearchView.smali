.class public Lcom/helpshift/widget/SimpleSearchView;
.super Landroid/widget/LinearLayout;
.source "SimpleSearchView.java"


# instance fields
.field private clearButton:Landroid/widget/ImageButton;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mContext:Landroid/content/Context;

.field private mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

.field private mQueryTextListener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

.field private searchButton:Landroid/widget/ImageButton;

.field private searchQuery:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/helpshift/widget/SimpleSearchView;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object p1, p0, Lcom/helpshift/widget/SimpleSearchView;->mContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/widget/SimpleSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/widget/SimpleSearchView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/helpshift/widget/SimpleSearchView;->menuItemExpanded()V

    return-void
.end method

.method static synthetic access$100(Lcom/helpshift/widget/SimpleSearchView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/widget/SimpleSearchView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->clearButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/widget/SimpleSearchView;)Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/widget/SimpleSearchView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->mQueryTextListener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    return-object v0
.end method

.method static synthetic access$300(Lcom/helpshift/widget/SimpleSearchView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/widget/SimpleSearchView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchQuery:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/helpshift/widget/SimpleSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/widget/SimpleSearchView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/helpshift/widget/SimpleSearchView;->showKeyBoard()V

    return-void
.end method

.method static synthetic access$500(Lcom/helpshift/widget/SimpleSearchView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/widget/SimpleSearchView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchQuery:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 103
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/helpshift/widget/SimpleSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 104
    return-void
.end method

.method private menuItemExpanded()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/helpshift/widget/SimpleSearchView;->showKeyBoard()V

    .line 84
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchQuery:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchQuery:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 87
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    .line 88
    return-void
.end method

.method private showKeyBoard()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchQuery:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 93
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchQuery:Landroid/widget/EditText;

    new-instance v1, Lcom/helpshift/widget/SimpleSearchView$4;

    invoke-direct {v1, p0}, Lcom/helpshift/widget/SimpleSearchView$4;-><init>(Lcom/helpshift/widget/SimpleSearchView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/helpshift/widget/SimpleSearchView;->hideKeyboard()V

    .line 129
    return-void
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 115
    invoke-direct {p0}, Lcom/helpshift/widget/SimpleSearchView;->hideKeyboard()V

    .line 116
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchQuery:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->clearButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchQuery:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    .line 121
    return-void
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchQuery:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 42
    sget v0, Lcom/helpshift/D$id;->hs__search_query:I

    invoke-virtual {p0, v0}, Lcom/helpshift/widget/SimpleSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchQuery:Landroid/widget/EditText;

    .line 43
    sget v0, Lcom/helpshift/D$id;->hs__search_button:I

    invoke-virtual {p0, v0}, Lcom/helpshift/widget/SimpleSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchButton:Landroid/widget/ImageButton;

    .line 44
    sget v0, Lcom/helpshift/D$id;->hs__search_query_clear:I

    invoke-virtual {p0, v0}, Lcom/helpshift/widget/SimpleSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->clearButton:Landroid/widget/ImageButton;

    .line 46
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/widget/SimpleSearchView$1;

    invoke-direct {v1, p0}, Lcom/helpshift/widget/SimpleSearchView$1;-><init>(Lcom/helpshift/widget/SimpleSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->searchQuery:Landroid/widget/EditText;

    new-instance v1, Lcom/helpshift/widget/SimpleSearchView$2;

    invoke-direct {v1, p0}, Lcom/helpshift/widget/SimpleSearchView$2;-><init>(Lcom/helpshift/widget/SimpleSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 73
    iget-object v0, p0, Lcom/helpshift/widget/SimpleSearchView;->clearButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/widget/SimpleSearchView$3;

    invoke-direct {v1, p0}, Lcom/helpshift/widget/SimpleSearchView$3;-><init>(Lcom/helpshift/widget/SimpleSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public setOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)V
    .locals 0
    .param p1, "onActionExpandListener"    # Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/helpshift/widget/SimpleSearchView;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 112
    return-void
.end method

.method public setQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V
    .locals 0
    .param p1, "queryTextListener"    # Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/helpshift/widget/SimpleSearchView;->mQueryTextListener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    .line 108
    return-void
.end method
