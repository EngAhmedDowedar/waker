.class public Lcom/helpshift/view/SimpleMenuItemCompat;
.super Ljava/lang/Object;
.source "SimpleMenuItemCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemActions;,
        Lcom/helpshift/view/SimpleMenuItemCompat$QueryTextActions;,
        Lcom/helpshift/view/SimpleMenuItemCompat$MenuItemChangedListener;
    }
.end annotation


# static fields
.field private static isAboveICS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/helpshift/view/SimpleMenuItemCompat;->isAboveICS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 20
    instance-of v0, p0, Lcom/helpshift/app/SimpleMenuItem;

    if-eqz v0, :cond_0

    .line 21
    check-cast p0, Lcom/helpshift/app/SimpleMenuItem;

    .end local p0    # "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/helpshift/app/SimpleMenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local p0    # "menuItem":Landroid/view/MenuItem;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
