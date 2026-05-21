.class final Lcom/anansimobile/nge/RootService$3;
.super Ljava/lang/Object;
.source "RootService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/nge/RootService;->StartService(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 196
    invoke-static {}, Lcom/anansimobile/nge/RootService;->access$000()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "nge_client_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 198
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "CALLBACK_ACTIVITY_PACKAGE_NAME"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anansimobile/nge/RootService;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/anansimobile/nge/RootService;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 200
    return-void
.end method
