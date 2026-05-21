.class public Lcom/helpshift/ProfilesManager;
.super Ljava/lang/Object;
.source "ProfilesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/ProfilesManager$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private storage:Lcom/helpshift/storage/ProfilesDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/helpshift/storage/ProfilesDataSource;

    invoke-direct {v0, p1}, Lcom/helpshift/storage/ProfilesDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/ProfilesManager;->storage:Lcom/helpshift/storage/ProfilesDataSource;

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/helpshift/ProfilesManager;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/helpshift/ProfilesManager$Holder;->access$000()Lcom/helpshift/ProfilesManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/helpshift/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/model/Profile;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/helpshift/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/model/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfile(Ljava/lang/String;)Lcom/helpshift/model/Profile;
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/helpshift/ProfilesManager;->storage:Lcom/helpshift/storage/ProfilesDataSource;

    invoke-virtual {v1, p1}, Lcom/helpshift/storage/ProfilesDataSource;->getProfile(Ljava/lang/String;)Lcom/helpshift/model/Profile;

    move-result-object v0

    .line 29
    .local v0, "profile":Lcom/helpshift/model/Profile;
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/helpshift/model/Profile;

    .end local v0    # "profile":Lcom/helpshift/model/Profile;
    invoke-direct {v0, p1}, Lcom/helpshift/model/Profile;-><init>(Ljava/lang/String;)V

    .line 31
    .restart local v0    # "profile":Lcom/helpshift/model/Profile;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/model/Profile;->setSalt(Ljava/lang/String;)V

    .line 33
    :cond_0
    return-object v0
.end method

.method public getProfileId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/helpshift/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/model/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/model/Profile;->getProfileId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/helpshift/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/model/Profile;

    move-result-object v0

    .line 58
    .local v0, "profile":Lcom/helpshift/model/Profile;
    invoke-virtual {v0, p2}, Lcom/helpshift/model/Profile;->setEmail(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/helpshift/ProfilesManager;->storage:Lcom/helpshift/storage/ProfilesDataSource;

    invoke-virtual {v1, v0}, Lcom/helpshift/storage/ProfilesDataSource;->addProfile(Lcom/helpshift/model/Profile;)V

    .line 60
    return-void
.end method

.method public setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/helpshift/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/model/Profile;

    move-result-object v0

    .line 48
    .local v0, "profile":Lcom/helpshift/model/Profile;
    invoke-virtual {v0, p2}, Lcom/helpshift/model/Profile;->setName(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/helpshift/ProfilesManager;->storage:Lcom/helpshift/storage/ProfilesDataSource;

    invoke-virtual {v1, v0}, Lcom/helpshift/storage/ProfilesDataSource;->addProfile(Lcom/helpshift/model/Profile;)V

    .line 50
    return-void
.end method

.method public setProfileId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/helpshift/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/model/Profile;

    move-result-object v0

    .line 42
    .local v0, "profile":Lcom/helpshift/model/Profile;
    invoke-virtual {v0, p2}, Lcom/helpshift/model/Profile;->setProfileId(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/helpshift/ProfilesManager;->storage:Lcom/helpshift/storage/ProfilesDataSource;

    invoke-virtual {v1, v0}, Lcom/helpshift/storage/ProfilesDataSource;->addProfile(Lcom/helpshift/model/Profile;)V

    .line 44
    return-void
.end method
