.class public Lcom/helpshift/ScreenshotPreviewActivity;
.super Lcom/helpshift/app/ActionBarActivity;
.source "ScreenshotPreviewActivity.java"

# interfaces
.implements Lcom/helpshift/view/ScreenshotPreviewView$ScreenshotPreviewInterface;


# static fields
.field public static final SCREENSHOT:Ljava/lang/String; = "SCREENSHOT"

.field public static final SCREENSHOT_ADD_TEXT:I = 0x1

.field public static final SCREENSHOT_POSITION:Ljava/lang/String; = "screenshot_position"

.field public static final SCREENSHOT_PREVIEW_REQUEST_CODE:I = 0x7fbc

.field public static final SCREENSHOT_REMOVE_TEXT:I = 0x2

.field public static final SCREENSHOT_TEXT_TYPE:Ljava/lang/String; = "screenshot_text_type"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private screenshotPreviewView:Lcom/helpshift/view/ScreenshotPreviewView;

.field private selectImage:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/helpshift/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/helpshift/app/ActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 70
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    const/16 v1, 0x7fbc

    if-ne p1, v1, :cond_0

    invoke-static {p0, p3}, Lcom/helpshift/util/AttachmentUtil;->isImageUri(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p0, p3}, Lcom/helpshift/util/AttachmentUtil;->getPath(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "screenshotPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/helpshift/ScreenshotPreviewActivity;->screenshotPreviewView:Lcom/helpshift/view/ScreenshotPreviewView;

    invoke-virtual {v1, v0}, Lcom/helpshift/view/ScreenshotPreviewView;->setScreenshotPreview(Ljava/lang/String;)V

    .line 77
    .end local v0    # "screenshotPath":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    .line 29
    invoke-super {p0, p1}, Lcom/helpshift/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/helpshift/ScreenshotPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/ScreenshotPreviewActivity;->bundle:Landroid/os/Bundle;

    .line 32
    iget-object v1, p0, Lcom/helpshift/ScreenshotPreviewActivity;->bundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/helpshift/ScreenshotPreviewActivity;->bundle:Landroid/os/Bundle;

    const-string/jumbo v2, "showInFullScreen"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 34
    .local v0, "isFullScreen":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/helpshift/ScreenshotPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 39
    :cond_0
    new-instance v1, Lcom/helpshift/view/ScreenshotPreviewView;

    invoke-direct {v1, p0}, Lcom/helpshift/view/ScreenshotPreviewView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/helpshift/ScreenshotPreviewActivity;->screenshotPreviewView:Lcom/helpshift/view/ScreenshotPreviewView;

    .line 40
    iget-object v1, p0, Lcom/helpshift/ScreenshotPreviewActivity;->screenshotPreviewView:Lcom/helpshift/view/ScreenshotPreviewView;

    invoke-virtual {p0, v1}, Lcom/helpshift/ScreenshotPreviewActivity;->setContentView(Landroid/view/View;)V

    .line 42
    iget-object v1, p0, Lcom/helpshift/ScreenshotPreviewActivity;->screenshotPreviewView:Lcom/helpshift/view/ScreenshotPreviewView;

    invoke-virtual {v1, p0}, Lcom/helpshift/view/ScreenshotPreviewView;->setScreenshotPreviewInterface(Lcom/helpshift/view/ScreenshotPreviewView$ScreenshotPreviewInterface;)V

    .line 43
    iget-object v1, p0, Lcom/helpshift/ScreenshotPreviewActivity;->screenshotPreviewView:Lcom/helpshift/view/ScreenshotPreviewView;

    iget-object v2, p0, Lcom/helpshift/ScreenshotPreviewActivity;->bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "SCREENSHOT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/view/ScreenshotPreviewView;->setScreenshotPreview(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/helpshift/ScreenshotPreviewActivity;->screenshotPreviewView:Lcom/helpshift/view/ScreenshotPreviewView;

    iget-object v2, p0, Lcom/helpshift/ScreenshotPreviewActivity;->bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "screenshot_text_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/helpshift/view/ScreenshotPreviewView;->setSendButtonText(I)V

    .line 48
    .end local v0    # "isFullScreen":Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/helpshift/ScreenshotPreviewActivity;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/helpshift/app/ActionBarActivity;->onResume()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->selectImage:Z

    .line 83
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/helpshift/app/ActionBarActivity;->onStart()V

    .line 88
    iget-boolean v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->selectImage:Z

    if-nez v0, :cond_0

    .line 89
    invoke-static {p0}, Lcom/helpshift/HSAnalytics;->onActivityStarted(Landroid/app/Activity;)V

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->selectImage:Z

    .line 92
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/helpshift/app/ActionBarActivity;->onStop()V

    .line 97
    iget-boolean v0, p0, Lcom/helpshift/ScreenshotPreviewActivity;->selectImage:Z

    if-nez v0, :cond_0

    .line 98
    invoke-static {p0}, Lcom/helpshift/HSAnalytics;->onActivityStopped(Landroid/app/Activity;)V

    .line 100
    :cond_0
    return-void
.end method

.method public selectImage()V
    .locals 3

    .prologue
    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/helpshift/ScreenshotPreviewActivity;->selectImage:Z

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 64
    .local v0, "i":Landroid/content/Intent;
    const/16 v1, 0x7fbc

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/ScreenshotPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    return-void
.end method

.method public sendScreenshotResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenshot"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v1, "SCREENSHOT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v1, "screenshot_position"

    iget-object v2, p0, Lcom/helpshift/ScreenshotPreviewActivity;->bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "screenshot_position"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/helpshift/ScreenshotPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lcom/helpshift/ScreenshotPreviewActivity;->finish()V

    .line 57
    return-void
.end method
