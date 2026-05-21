.class public Lcom/helpshift/util/Styles;
.super Ljava/lang/Object;
.source "Styles.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attribute"    # I

    .prologue
    const/4 v4, 0x0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 14
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 15
    .local v0, "color":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    return v0
.end method

.method public static setAcceptButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acceptButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 40
    sget v0, Lcom/helpshift/D$attr;->hs__acceptButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 41
    return-void
.end method

.method public static setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 20
    sget v0, Lcom/helpshift/D$attr;->hs__actionButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 21
    return-void
.end method

.method public static setActionButtonNotificationIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionButtonNotificationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 24
    sget v0, Lcom/helpshift/D$attr;->hs__actionButtonNotificationIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 25
    return-void
.end method

.method public static setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adminChatBubbleNinePatch"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 56
    sget v0, Lcom/helpshift/D$attr;->hs__adminChatBubbleColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 57
    return-void
.end method

.method public static setAttachScreenshotButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachScreenshotButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 48
    sget v0, Lcom/helpshift/D$attr;->hs__attachScreenshotButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 49
    return-void
.end method

.method public static setButtonCompoundDrawableIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buttonCompoundDrawableIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 28
    sget v0, Lcom/helpshift/D$attr;->hs__buttonCompoundDrawableIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 29
    return-void
.end method

.method private static setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "attr"    # I

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-static {p0, p2}, Lcom/helpshift/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 75
    :cond_0
    return-void
.end method

.method public static setDownloadAttachmentButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadAttachmentButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 64
    sget v0, Lcom/helpshift/D$attr;->hs__downloadAttachmentButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 65
    return-void
.end method

.method public static setLaunchAttachmentButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "launchAttachmentButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 68
    sget v0, Lcom/helpshift/D$attr;->hs__launchAttachmentButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 69
    return-void
.end method

.method public static setRejectButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rejectButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 44
    sget v0, Lcom/helpshift/D$attr;->hs__rejectButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 45
    return-void
.end method

.method public static setReviewButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reviewButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 52
    sget v0, Lcom/helpshift/D$attr;->hs__reviewButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 53
    return-void
.end method

.method public static setSendMessageButtonActiveIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sendMessageButtonActiveIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 36
    sget v0, Lcom/helpshift/D$attr;->hs__sendMessageButtonActiveIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 37
    return-void
.end method

.method public static setSendMessageButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sendMessageButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 32
    sget v0, Lcom/helpshift/D$attr;->hs__sendMessageButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 33
    return-void
.end method

.method public static setUserChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userChatBubbleNinePatch"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 60
    sget v0, Lcom/helpshift/D$attr;->hs__userChatBubbleColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 61
    return-void
.end method
