.class public Lcom/helpshift/HSService$HSBinder;
.super Landroid/os/Binder;
.source "HSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/HSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HSBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/HSService;


# direct methods
.method public constructor <init>(Lcom/helpshift/HSService;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/helpshift/HSService$HSBinder;->this$0:Lcom/helpshift/HSService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/helpshift/HSService;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/helpshift/HSService$HSBinder;->this$0:Lcom/helpshift/HSService;

    return-object v0
.end method
