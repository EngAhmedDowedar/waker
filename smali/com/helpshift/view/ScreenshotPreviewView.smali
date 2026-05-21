.class public Lcom/helpshift/view/ScreenshotPreviewView;
.super Landroid/widget/RelativeLayout;
.source "ScreenshotPreviewView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/view/ScreenshotPreviewView$ScreenshotPreviewInterface;
    }
.end annotation


# instance fields
.field private currentScreenshot:Ljava/lang/String;

.field private currentText:I

.field private data:Lcom/helpshift/HSApiData;

.field private screenshotPreview:Landroid/widget/ImageView;

.field private screenshotPreviewInterface:Lcom/helpshift/view/ScreenshotPreviewView$ScreenshotPreviewInterface;

.field private send:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/helpshift/view/ScreenshotPreviewView;->currentText:I

    .line 37
    new-instance v0, Lcom/helpshift/HSApiData;

    invoke-direct {v0, p1}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/view/ScreenshotPreviewView;->data:Lcom/helpshift/HSApiData;

    .line 38
    invoke-direct {p0, p1}, Lcom/helpshift/view/ScreenshotPreviewView;->initView(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget v2, Lcom/helpshift/D$layout;->hs__screenshot_preview:I

    invoke-static {p1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget v2, Lcom/helpshift/D$id;->screenshotPreview:I

    invoke-virtual {p0, v2}, Lcom/helpshift/view/ScreenshotPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/helpshift/view/ScreenshotPreviewView;->screenshotPreview:Landroid/widget/ImageView;

    .line 45
    sget v2, Lcom/helpshift/D$id;->change:I

    invoke-virtual {p0, v2}, Lcom/helpshift/view/ScreenshotPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 46
    .local v0, "change":Landroid/widget/Button;
    sget v2, Lcom/helpshift/D$id;->send:I

    invoke-virtual {p0, v2}, Lcom/helpshift/view/ScreenshotPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/helpshift/view/ScreenshotPreviewView;->send:Landroid/widget/Button;

    .line 48
    iget-object v2, p0, Lcom/helpshift/view/ScreenshotPreviewView;->data:Lcom/helpshift/HSApiData;

    iget-object v2, v2, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/HSStorage;->isHelpshiftBrandingDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    sget v2, Lcom/helpshift/D$id;->hs__helpshiftActivityFooter:I

    invoke-virtual {p0, v2}, Lcom/helpshift/view/ScreenshotPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 50
    .local v1, "hsFooter":Landroid/widget/ImageView;
    sget-object v2, Lcom/helpshift/res/drawable/HSImages;->imagesMap:Ljava/util/Map;

    const-string/jumbo v3, "newHSLogo"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/helpshift/res/drawable/HSDraw;->getBitmapDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 54
    .end local v1    # "hsFooter":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v2, p0, Lcom/helpshift/view/ScreenshotPreviewView;->send:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 61
    .local v0, "id":I
    sget v1, Lcom/helpshift/D$id;->change:I

    if-ne v0, v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/helpshift/view/ScreenshotPreviewView;->screenshotPreviewInterface:Lcom/helpshift/view/ScreenshotPreviewView$ScreenshotPreviewInterface;

    invoke-interface {v1}, Lcom/helpshift/view/ScreenshotPreviewView$ScreenshotPreviewInterface;->selectImage()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    sget v1, Lcom/helpshift/D$id;->send:I

    if-ne v0, v1, :cond_0

    .line 64
    iget v1, p0, Lcom/helpshift/view/ScreenshotPreviewView;->currentText:I

    packed-switch v1, :pswitch_data_0

    .line 69
    iget-object v1, p0, Lcom/helpshift/view/ScreenshotPreviewView;->screenshotPreviewInterface:Lcom/helpshift/view/ScreenshotPreviewView$ScreenshotPreviewInterface;

    iget-object v2, p0, Lcom/helpshift/view/ScreenshotPreviewView;->currentScreenshot:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/helpshift/view/ScreenshotPreviewView$ScreenshotPreviewInterface;->sendScreenshotResult(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :pswitch_0
    iget-object v1, p0, Lcom/helpshift/view/ScreenshotPreviewView;->screenshotPreviewInterface:Lcom/helpshift/view/ScreenshotPreviewView$ScreenshotPreviewInterface;

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Lcom/helpshift/view/ScreenshotPreviewView$ScreenshotPreviewInterface;->sendScreenshotResult(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setScreenshotPreview(Ljava/lang/String;)V
    .locals 3
    .param p1, "screenshot"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/helpshift/view/ScreenshotPreviewView;->currentScreenshot:Ljava/lang/String;

    .line 81
    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/helpshift/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "screenshotImage":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/helpshift/view/ScreenshotPreviewView;->screenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    iget v1, p0, Lcom/helpshift/view/ScreenshotPreviewView;->currentText:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 85
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/helpshift/view/ScreenshotPreviewView;->setSendButtonText(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public setScreenshotPreviewInterface(Lcom/helpshift/view/ScreenshotPreviewView$ScreenshotPreviewInterface;)V
    .locals 0
    .param p1, "screenshotPreviewInterface"    # Lcom/helpshift/view/ScreenshotPreviewView$ScreenshotPreviewInterface;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/helpshift/view/ScreenshotPreviewView;->screenshotPreviewInterface:Lcom/helpshift/view/ScreenshotPreviewView$ScreenshotPreviewInterface;

    .line 77
    return-void
.end method

.method public setSendButtonText(I)V
    .locals 3
    .param p1, "textType"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/helpshift/view/ScreenshotPreviewView;->currentText:I

    .line 91
    packed-switch p1, :pswitch_data_0

    .line 99
    iget-object v0, p0, Lcom/helpshift/view/ScreenshotPreviewView;->send:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/helpshift/view/ScreenshotPreviewView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/helpshift/D$string;->hs__send_msg_btn:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v0, p0, Lcom/helpshift/view/ScreenshotPreviewView;->send:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/helpshift/view/ScreenshotPreviewView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/helpshift/D$string;->hs__screenshot_add:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/helpshift/view/ScreenshotPreviewView;->send:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/helpshift/view/ScreenshotPreviewView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/helpshift/D$string;->hs__screenshot_remove:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
