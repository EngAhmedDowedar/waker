.class public Lcom/anansimobile/nge/NGLayoutHelper;
.super Ljava/lang/Object;
.source "NGLayoutHelper.java"


# static fields
.field private static frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private static mChildOfContent:Landroid/view/View;

.field private static usableHeightPrevious:I

.field private static useAutoAdjustRootView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/NGLayoutHelper;->mChildOfContent:Landroid/view/View;

    .line 28
    sput v1, Lcom/anansimobile/nge/NGLayoutHelper;->usableHeightPrevious:I

    .line 34
    sput-boolean v1, Lcom/anansimobile/nge/NGLayoutHelper;->useAutoAdjustRootView:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitLayoutHelper(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p0, "contentview"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/anansimobile/nge/NGLayoutHelper;->KeyboardWorkaround(Landroid/widget/RelativeLayout;)V

    .line 25
    return-void
.end method

.method private static KeyboardWorkaround(Landroid/widget/RelativeLayout;)V
    .locals 2
    .param p0, "contentview"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 39
    sput-object p0, Lcom/anansimobile/nge/NGLayoutHelper;->mChildOfContent:Landroid/view/View;

    .line 40
    sget-object v0, Lcom/anansimobile/nge/NGLayoutHelper;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/anansimobile/nge/NGLayoutHelper$1;

    invoke-direct {v1}, Lcom/anansimobile/nge/NGLayoutHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 46
    sget-object v0, Lcom/anansimobile/nge/NGLayoutHelper;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sput-object v0, Lcom/anansimobile/nge/NGLayoutHelper;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    return-void
.end method

.method private static native SetKeyboardHeight(I)V
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 16
    invoke-static {}, Lcom/anansimobile/nge/NGLayoutHelper;->possiblyResizeChildOfContent()V

    return-void
.end method

.method private static computeUsableHeight()I
    .locals 3

    .prologue
    .line 79
    sget-object v1, Lcom/anansimobile/nge/NGLayoutHelper;->mChildOfContent:Landroid/view/View;

    if-nez v1, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 84
    .local v0, "r":Landroid/graphics/Rect;
    :goto_0
    return v1

    .line 82
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 83
    .restart local v0    # "r":Landroid/graphics/Rect;
    sget-object v1, Lcom/anansimobile/nge/NGLayoutHelper;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 84
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private static possiblyResizeChildOfContent()V
    .locals 7

    .prologue
    .line 50
    sget-object v3, Lcom/anansimobile/nge/NGLayoutHelper;->mChildOfContent:Landroid/view/View;

    if-nez v3, :cond_1

    .line 76
    .local v1, "usableHeightNow":I
    :cond_0
    :goto_0
    return-void

    .line 53
    .end local v1    # "usableHeightNow":I
    :cond_1
    invoke-static {}, Lcom/anansimobile/nge/NGLayoutHelper;->computeUsableHeight()I

    move-result v1

    .line 54
    .restart local v1    # "usableHeightNow":I
    sget v3, Lcom/anansimobile/nge/NGLayoutHelper;->usableHeightPrevious:I

    if-eq v1, v3, :cond_0

    .line 55
    sget-object v3, Lcom/anansimobile/nge/NGLayoutHelper;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 56
    .local v2, "usableHeightSansKeyboard":I
    sub-int v0, v2, v1

    .line 57
    .local v0, "heightDifference":I
    if-lez v0, :cond_5

    .line 59
    sget-boolean v3, Lcom/anansimobile/nge/NGLayoutHelper;->useAutoAdjustRootView:Z

    if-eqz v3, :cond_2

    .line 60
    sget-object v3, Lcom/anansimobile/nge/NGLayoutHelper;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int v4, v2, v0

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 62
    :cond_2
    const-string/jumbo v3, "[NGLayoutHelper]Get Keyboard Size: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-static {v0}, Lcom/anansimobile/nge/NGLayoutHelper;->SetKeyboardHeight(I)V

    .line 71
    :cond_3
    :goto_1
    sget-boolean v3, Lcom/anansimobile/nge/NGLayoutHelper;->useAutoAdjustRootView:Z

    if-eqz v3, :cond_4

    .line 72
    sget-object v3, Lcom/anansimobile/nge/NGLayoutHelper;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 74
    :cond_4
    sput v1, Lcom/anansimobile/nge/NGLayoutHelper;->usableHeightPrevious:I

    goto :goto_0

    .line 67
    :cond_5
    sget-boolean v3, Lcom/anansimobile/nge/NGLayoutHelper;->useAutoAdjustRootView:Z

    if-eqz v3, :cond_3

    .line 68
    sget-object v3, Lcom/anansimobile/nge/NGLayoutHelper;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1
.end method
