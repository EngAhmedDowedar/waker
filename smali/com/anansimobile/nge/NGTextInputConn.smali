.class Lcom/anansimobile/nge/NGTextInputConn;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "NGTextInput.java"

# interfaces
.implements Lcom/anansimobile/nge/SoftKeyboardStateHelper$SoftKeyboardStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/anansimobile/nge/NGTextInputConn;


# instance fields
.field private curInputType:I

.field private mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mInputMethodActive:Z

.field private mKeyboardActive:Z

.field private mKeyboardResultReceiver:Landroid/os/ResultReceiver;

.field private mNGEditText:Lcom/anansimobile/nge/NGEditText;

.field private final mNumChecker:Ljava/lang/String;

.field private mResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

.field private mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

.field private mTargetView:Landroid/view/View;

.field private sSaveCtx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/NGTextInputConn;->sInstance:Lcom/anansimobile/nge/NGTextInputConn;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZLandroid/content/Context;)V
    .locals 3
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "fullEditor"    # Z
    .param p3, "contx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 323
    iput-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mTargetView:Landroid/view/View;

    .line 324
    iput-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    .line 325
    iput-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->sSaveCtx:Landroid/content/Context;

    .line 366
    iput-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 367
    iput-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 368
    iput-boolean v1, p0, Lcom/anansimobile/nge/NGTextInputConn;->mKeyboardActive:Z

    .line 369
    iput v1, p0, Lcom/anansimobile/nge/NGTextInputConn;->curInputType:I

    .line 395
    iput-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 410
    const-string/jumbo v0, "0123456789"

    iput-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNumChecker:Ljava/lang/String;

    .line 492
    iput-boolean v1, p0, Lcom/anansimobile/nge/NGTextInputConn;->mInputMethodActive:Z

    .line 673
    new-instance v0, Lcom/anansimobile/nge/NGTextInputConn$3;

    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v1}, Lcom/anansimobile/nge/RootActivity;->MsgHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anansimobile/nge/NGTextInputConn$3;-><init>(Lcom/anansimobile/nge/NGTextInputConn;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mKeyboardResultReceiver:Landroid/os/ResultReceiver;

    .line 262
    iput-object p1, p0, Lcom/anansimobile/nge/NGTextInputConn;->mTargetView:Landroid/view/View;

    .line 263
    new-instance v0, Lcom/anansimobile/nge/NGEditText;

    invoke-direct {v0, p3}, Lcom/anansimobile/nge/NGEditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    .line 264
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {v0}, Lcom/anansimobile/nge/NGEditText;->NGSetMinmize()V

    .line 265
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {v0, v2}, Lcom/anansimobile/nge/NGEditText;->setFocusable(Z)V

    .line 266
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {v0, v2}, Lcom/anansimobile/nge/NGEditText;->setFocusableInTouchMode(Z)V

    .line 267
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    new-instance v1, Lcom/anansimobile/nge/NGTextInputConn$1;

    invoke-direct {v1, p0}, Lcom/anansimobile/nge/NGTextInputConn$1;-><init>(Lcom/anansimobile/nge/NGTextInputConn;)V

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/NGEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 296
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    new-instance v1, Lcom/anansimobile/nge/NGTextInputConn$2;

    invoke-direct {v1, p0}, Lcom/anansimobile/nge/NGTextInputConn$2;-><init>(Lcom/anansimobile/nge/NGTextInputConn;)V

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/NGEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 312
    iput-object p3, p0, Lcom/anansimobile/nge/NGTextInputConn;->sSaveCtx:Landroid/content/Context;

    .line 313
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    invoke-static {v0}, Lcom/anansimobile/nge/NGTextInput;->appendSubView(Landroid/view/View;)V

    .line 315
    return-void
.end method

.method static synthetic access$000(Lcom/anansimobile/nge/NGTextInputConn;)Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    .locals 1
    .param p0, "x0"    # Lcom/anansimobile/nge/NGTextInputConn;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/anansimobile/nge/NGTextInputConn;Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;)Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    .locals 0
    .param p0, "x0"    # Lcom/anansimobile/nge/NGTextInputConn;
    .param p1, "x1"    # Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/anansimobile/nge/NGTextInputConn;JLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/anansimobile/nge/NGTextInputConn;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/anansimobile/nge/NGTextInputConn;->nativeCommitAllText(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/anansimobile/nge/NGTextInputConn;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/anansimobile/nge/NGTextInputConn;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/anansimobile/nge/NGTextInputConn;->nativeSendKeyEvent(JI)V

    return-void
.end method

.method static synthetic access$300(Lcom/anansimobile/nge/NGTextInputConn;)Lcom/anansimobile/nge/NGEditText;
    .locals 1
    .param p0, "x0"    # Lcom/anansimobile/nge/NGTextInputConn;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    return-object v0
.end method

.method static synthetic access$402(Lcom/anansimobile/nge/NGTextInputConn;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/anansimobile/nge/NGTextInputConn;
    .param p1, "x1"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/anansimobile/nge/NGTextInputConn;->mKeyboardActive:Z

    return p1
.end method

.method public static createInstance(Landroid/view/View;ZLandroid/content/Context;)Lcom/anansimobile/nge/NGTextInputConn;
    .locals 1
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "fullEditor"    # Z
    .param p2, "contx"    # Landroid/content/Context;

    .prologue
    .line 249
    sget-object v0, Lcom/anansimobile/nge/NGTextInputConn;->sInstance:Lcom/anansimobile/nge/NGTextInputConn;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcom/anansimobile/nge/NGTextInputConn;

    invoke-direct {v0, p0, p1, p2}, Lcom/anansimobile/nge/NGTextInputConn;-><init>(Landroid/view/View;ZLandroid/content/Context;)V

    sput-object v0, Lcom/anansimobile/nge/NGTextInputConn;->sInstance:Lcom/anansimobile/nge/NGTextInputConn;

    .line 253
    :cond_0
    sget-object v0, Lcom/anansimobile/nge/NGTextInputConn;->sInstance:Lcom/anansimobile/nge/NGTextInputConn;

    return-object v0
.end method

.method public static getInstance()Lcom/anansimobile/nge/NGTextInputConn;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/anansimobile/nge/NGTextInputConn;->sInstance:Lcom/anansimobile/nge/NGTextInputConn;

    return-object v0
.end method

.method private native nativeCommitAllText(JLjava/lang/String;)V
.end method

.method private native nativeCommitText(JLjava/lang/String;I)V
.end method

.method private native nativeSendKeyEvent(JI)V
.end method

.method private saveResponder()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    iput-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 389
    return-void
.end method


# virtual methods
.method public ClearSaveResponder()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 393
    return-void
.end method

.method public __OnKeyboardShow()V
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mKeyboardActive:Z

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    if-nez v0, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/anansimobile/nge/NGTextInputConn;->saveResponder()V

    .line 524
    :cond_0
    return-void
.end method

.method public __UserPressBackEvent()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    invoke-virtual {v0}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->getPtr()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/anansimobile/nge/NGTextInputConn;->nativeSendKeyEvent(JI)V

    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mKeyboardActive:Z

    .line 516
    :cond_0
    return-void
.end method

.method public appendResponder(J)V
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 373
    new-instance v0, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;-><init>(Lcom/anansimobile/nge/NGTextInputConn;J)V

    iput-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 374
    return-void
.end method

.method public checkInputMethod()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 528
    iget-boolean v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mKeyboardActive:Z

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    invoke-virtual {v0}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->getPtr()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/anansimobile/nge/NGTextInputConn;->nativeSendKeyEvent(JI)V

    .line 531
    iput-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mKeyboardActive:Z

    .line 548
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/anansimobile/nge/NGTextInputConn;->saveResponder()V

    goto :goto_0

    .line 539
    :cond_1
    iput-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    goto :goto_0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v4, 0x1

    .line 414
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 415
    .local v0, "ri":Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string/jumbo v1, "0123456789"

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v1

    .line 423
    :goto_0
    return v1

    .line 419
    :cond_1
    if-eqz v0, :cond_2

    .line 420
    const-string/jumbo v1, "[input] commitText: %s, new pos: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    invoke-virtual {v0}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->getPtr()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v3, v1, p2}, Lcom/anansimobile/nge/NGTextInputConn;->nativeCommitText(JLjava/lang/String;I)V

    .line 423
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v1

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 7
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/4 v6, 0x1

    .line 470
    iget-object v1, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 471
    .local v1, "ri":Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    if-eqz v1, :cond_0

    .line 472
    if-lt p1, v6, :cond_0

    .line 473
    const-string/jumbo v2, "[input] delete: before %d, after: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "inputEvent":I
    invoke-virtual {v1}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->getPtr()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/anansimobile/nge/NGTextInputConn;->nativeSendKeyEvent(JI)V

    .line 485
    .end local v0    # "inputEvent":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v2

    return v2
.end method

.method public onFocus(ZZ)V
    .locals 8
    .param p1, "numOnly"    # Z
    .param p2, "secureMode"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 615
    iget-object v2, p0, Lcom/anansimobile/nge/NGTextInputConn;->mResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 617
    .local v2, "ri":Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    sget-object v3, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 619
    invoke-virtual {v3}, Lcom/anansimobile/nge/RootActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 620
    .local v1, "input":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_6

    .line 635
    sget-object v3, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v3}, Lcom/anansimobile/nge/RootActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "curBoardId":Ljava/lang/String;
    const-string/jumbo v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v6

    .line 637
    const-string/jumbo v3, "google"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 638
    if-eqz p1, :cond_1

    .line 639
    iput v7, p0, Lcom/anansimobile/nge/NGTextInputConn;->curInputType:I

    .line 645
    :goto_0
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 655
    :goto_1
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    if-nez v3, :cond_5

    .line 656
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mTargetView:Landroid/view/View;

    iget-object v4, p0, Lcom/anansimobile/nge/NGTextInputConn;->mKeyboardResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v1, v3, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 671
    .end local v0    # "curBoardId":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 640
    .restart local v0    # "curBoardId":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 641
    const/16 v3, 0x81

    iput v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->curInputType:I

    goto :goto_0

    .line 643
    :cond_2
    const v3, 0x80001

    iput v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->curInputType:I

    goto :goto_0

    .line 647
    :cond_3
    if-eqz p1, :cond_4

    .line 648
    iput v7, p0, Lcom/anansimobile/nge/NGTextInputConn;->curInputType:I

    .line 652
    :goto_3
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto :goto_1

    .line 650
    :cond_4
    iput v6, p0, Lcom/anansimobile/nge/NGTextInputConn;->curInputType:I

    goto :goto_3

    .line 659
    :cond_5
    invoke-direct {p0}, Lcom/anansimobile/nge/NGTextInputConn;->saveResponder()V

    goto :goto_2

    .line 664
    .end local v0    # "curBoardId":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    if-eqz v3, :cond_0

    .line 667
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 668
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/anansimobile/nge/NGTextInputConn;->mKeyboardResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v1, v3, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    goto :goto_2
.end method

.method public onFocusV2(Ljava/lang/String;ZZZ)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "numOnly"    # Z
    .param p3, "secureMode"    # Z
    .param p4, "isMultiple"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 569
    iget-object v1, p0, Lcom/anansimobile/nge/NGTextInputConn;->mResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 571
    .local v1, "ri":Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    sget-object v3, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 573
    invoke-virtual {v3}, Lcom/anansimobile/nge/RootActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 574
    .local v0, "input":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    .line 576
    iget-object v2, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 577
    .local v2, "tmpSaved":Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    iput-object v6, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 578
    if-eqz p2, :cond_1

    .line 579
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/anansimobile/nge/NGEditText;->setInputType(I)V

    .line 585
    :goto_0
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {v3, v5}, Lcom/anansimobile/nge/NGEditText;->setVisibility(I)V

    .line 586
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {v3, p4}, Lcom/anansimobile/nge/NGEditText;->SetIsTextView(Z)V

    .line 587
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {v3}, Lcom/anansimobile/nge/NGEditText;->requestFocus()Z

    .line 589
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    iget-object v4, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {v4}, Lcom/anansimobile/nge/NGEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/anansimobile/nge/NGEditText;->setSelection(I)V

    .line 590
    iput-object v2, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 592
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    if-nez v3, :cond_3

    .line 593
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    iget-object v4, p0, Lcom/anansimobile/nge/NGTextInputConn;->mKeyboardResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 598
    :goto_1
    invoke-virtual {v1}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->getPtr()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Lcom/anansimobile/nge/NGTextInput;->setTextFromNative(JLjava/lang/String;)V

    .line 611
    .end local v2    # "tmpSaved":Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    :cond_0
    :goto_2
    return-void

    .line 580
    .restart local v2    # "tmpSaved":Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    :cond_1
    if-eqz p3, :cond_2

    .line 581
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Lcom/anansimobile/nge/NGEditText;->setInputType(I)V

    goto :goto_0

    .line 583
    :cond_2
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/anansimobile/nge/NGEditText;->setInputType(I)V

    goto :goto_0

    .line 596
    :cond_3
    invoke-direct {p0}, Lcom/anansimobile/nge/NGTextInputConn;->saveResponder()V

    goto :goto_1

    .line 601
    .end local v2    # "tmpSaved":Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    :cond_4
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    if-eqz v3, :cond_0

    .line 604
    iput-object v6, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 605
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/anansimobile/nge/NGEditText;->setVisibility(I)V

    .line 606
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {v3}, Lcom/anansimobile/nge/NGEditText;->clearFocus()V

    .line 607
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/anansimobile/nge/NGEditText;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {v3}, Lcom/anansimobile/nge/NGEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/anansimobile/nge/NGTextInputConn;->mKeyboardResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    goto :goto_2
.end method

.method public onSoftKeyboardClosed()V
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mKeyboardActive:Z

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    invoke-virtual {v0}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->getPtr()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/anansimobile/nge/NGTextInputConn;->nativeSendKeyEvent(JI)V

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mKeyboardActive:Z

    .line 508
    :cond_0
    return-void
.end method

.method public onSoftKeyboardOpened(I)V
    .locals 0
    .param p1, "keyboardHeightInPx"    # I

    .prologue
    .line 498
    return-void
.end method

.method public onTargetViewClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/anansimobile/nge/NGTextInputConn;->mTargetView:Landroid/view/View;

    .line 490
    return-void
.end method

.method public removeResponder(J)V
    .locals 3
    .param p1, "ptr"    # J

    .prologue
    .line 378
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    if-nez v0, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    invoke-virtual {v0}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->getPtr()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn;->mResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    goto :goto_0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 428
    iget-object v1, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 429
    .local v1, "ri":Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    if-eqz v1, :cond_1

    .line 430
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 432
    const-string/jumbo v2, "[input] key event: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    const/4 v0, -0x1

    .line 434
    .local v0, "inputEvent":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 456
    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 457
    invoke-virtual {v1}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->getPtr()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/anansimobile/nge/NGTextInputConn;->nativeSendKeyEvent(JI)V

    .line 464
    .end local v0    # "inputEvent":I
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 436
    .restart local v0    # "inputEvent":I
    :sswitch_0
    const/4 v0, 0x0

    .line 437
    goto :goto_0

    .line 439
    :sswitch_1
    const/4 v0, 0x1

    .line 440
    goto :goto_0

    .line 451
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    if-nez v2, :cond_0

    .line 452
    invoke-virtual {v1}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->getPtr()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/anansimobile/nge/NGTextInputConn;->nativeCommitText(JLjava/lang/String;I)V

    goto :goto_0

    .line 459
    .end local v0    # "inputEvent":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 460
    const-string/jumbo v2, "[input] key multiple text: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    invoke-virtual {v1}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->getPtr()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/anansimobile/nge/NGTextInputConn;->nativeCommitText(JLjava/lang/String;I)V

    goto :goto_1

    .line 434
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public setEditInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/anansimobile/nge/NGTextInputConn;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 401
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v1}, Lcom/anansimobile/nge/RootActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "curBoardId":Ljava/lang/String;
    const-string/jumbo v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 403
    const-string/jumbo v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/anansimobile/nge/NGTextInputConn;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, p0, Lcom/anansimobile/nge/NGTextInputConn;->curInputType:I

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/anansimobile/nge/NGTextInputConn;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, p0, Lcom/anansimobile/nge/NGTextInputConn;->curInputType:I

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0
.end method

.method public setTextFromNative(JLjava/lang/String;)V
    .locals 7
    .param p1, "ptr"    # J
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 551
    iget-object v1, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 552
    .local v1, "ri":Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    if-nez v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/anansimobile/nge/NGTextInputConn;->mResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 555
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->getPtr()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    .line 556
    iget-object v2, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 557
    .local v2, "tmpSaved":Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 558
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {v3}, Lcom/anansimobile/nge/NGEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "oldText":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 560
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {v3, p3}, Lcom/anansimobile/nge/NGEditText;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v3, p0, Lcom/anansimobile/nge/NGTextInputConn;->mNGEditText:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/anansimobile/nge/NGEditText;->setSelection(I)V

    .line 563
    :cond_1
    iput-object v2, p0, Lcom/anansimobile/nge/NGTextInputConn;->mSavedResponder:Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 565
    .end local v0    # "oldText":Ljava/lang/String;
    .end local v2    # "tmpSaved":Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    :cond_2
    return-void
.end method
