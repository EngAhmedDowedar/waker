.class public Lcom/anansimobile/nge/SoftKeyboardStateHelper;
.super Ljava/lang/Object;
.source "SoftKeyboardStateHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;
    }
.end annotation


# instance fields
.field private final activityRootView:Landroid/view/View;

.field private isSoftKeyboardOpened:Z

.field private lastSoftKeyboardHeightInPx:I

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "activityRootView"    # Landroid/view/View;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anansimobile/nge/SoftKeyboardStateHelper;-><init>(Landroid/view/View;Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .param p1, "activityRootView"    # Landroid/view/View;
    .param p2, "isSoftKeyboardOpened"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->listeners:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->activityRootView:Landroid/view/View;

    .line 29
    iput-boolean p2, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->isSoftKeyboardOpened:Z

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 31
    return-void
.end method

.method private notifyOnSoftKeyboardClosed()V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;

    .line 85
    .local v0, "listener":Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;->onSoftKeyboardClosed()V

    goto :goto_0

    .line 89
    .end local v0    # "listener":Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;
    :cond_1
    return-void
.end method

.method private notifyOnSoftKeyboardOpened(I)V
    .locals 3
    .param p1, "keyboardHeightInPx"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->lastSoftKeyboardHeightInPx:I

    .line 76
    iget-object v1, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;

    .line 77
    .local v0, "listener":Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;
    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p1}, Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;->onSoftKeyboardOpened(I)V

    goto :goto_0

    .line 81
    .end local v0    # "listener":Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;
    :cond_1
    return-void
.end method


# virtual methods
.method public addSoftKeyboardStateListener(Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public getLastSoftKeyboardHeightInPx()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->lastSoftKeyboardHeightInPx:I

    return v0
.end method

.method public isSoftKeyboardOpened()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->isSoftKeyboardOpened:Z

    return v0
.end method

.method public onGlobalLayout()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 35
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->activityRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 39
    iget-object v2, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->activityRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 40
    .local v0, "heightDiff":I
    iget-boolean v2, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->isSoftKeyboardOpened:Z

    if-nez v2, :cond_1

    if-le v0, v5, :cond_1

    .line 41
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->isSoftKeyboardOpened:Z

    .line 42
    invoke-direct {p0, v0}, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->notifyOnSoftKeyboardOpened(I)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-boolean v2, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->isSoftKeyboardOpened:Z

    if-eqz v2, :cond_0

    if-ge v0, v5, :cond_0

    .line 44
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->isSoftKeyboardOpened:Z

    .line 45
    invoke-direct {p0}, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->notifyOnSoftKeyboardClosed()V

    goto :goto_0
.end method

.method public removeSoftKeyboardStateListener(Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public setIsSoftKeyboardOpened(Z)V
    .locals 0
    .param p1, "isSoftKeyboardOpened"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/anansimobile/nge/SoftKeyboardStateHelper;->isSoftKeyboardOpened:Z

    .line 51
    return-void
.end method
