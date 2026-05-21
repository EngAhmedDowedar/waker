.class public Lcom/helpshift/HelpshiftContext;
.super Ljava/lang/Object;
.source "HelpshiftContext.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static viewState:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/helpshift/HelpshiftContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getViewState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/helpshift/HelpshiftContext;->viewState:Ljava/lang/String;

    return-object v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 13
    sput-object p0, Lcom/helpshift/HelpshiftContext;->context:Landroid/content/Context;

    .line 14
    return-void
.end method

.method public static setViewState(Ljava/lang/String;)V
    .locals 0
    .param p0, "viewState"    # Ljava/lang/String;

    .prologue
    .line 21
    sput-object p0, Lcom/helpshift/HelpshiftContext;->viewState:Ljava/lang/String;

    .line 22
    return-void
.end method
