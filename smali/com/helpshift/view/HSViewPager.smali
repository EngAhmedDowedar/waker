.class public final Lcom/helpshift/view/HSViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "HSViewPager.java"


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/view/HSViewPager;->enabled:Z

    .line 16
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/helpshift/view/HSViewPager;->enabled:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/helpshift/view/HSViewPager;->enabled:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPagingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/helpshift/view/HSViewPager;->enabled:Z

    .line 38
    return-void
.end method
