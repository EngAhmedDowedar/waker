.class public Lcom/anansimobile/nge/ResourceProvider;
.super Ljava/lang/Object;
.source "ResourceProvider.java"


# static fields
.field public static final INVALID_ID:I = -0x1


# instance fields
.field private mClassR:Ljava/lang/Class;

.field private mDrawable:Ljava/lang/Class;

.field private mId:Ljava/lang/Class;

.field private mLayout:Ljava/lang/Class;

.field private mString:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/anansimobile/nge/RootActivity;)V
    .locals 8
    .param p1, "activity"    # Lcom/anansimobile/nge/RootActivity;

    .prologue
    const/4 v4, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v4, p0, Lcom/anansimobile/nge/ResourceProvider;->mClassR:Ljava/lang/Class;

    .line 14
    iput-object v4, p0, Lcom/anansimobile/nge/ResourceProvider;->mLayout:Ljava/lang/Class;

    .line 15
    iput-object v4, p0, Lcom/anansimobile/nge/ResourceProvider;->mDrawable:Ljava/lang/Class;

    .line 16
    iput-object v4, p0, Lcom/anansimobile/nge/ResourceProvider;->mId:Ljava/lang/Class;

    .line 17
    iput-object v4, p0, Lcom/anansimobile/nge/ResourceProvider;->mString:Ljava/lang/Class;

    .line 25
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anansimobile/nge/RootActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/anansimobile/nge/ResourceProvider;->mClassR:Ljava/lang/Class;

    .line 26
    iget-object v4, p0, Lcom/anansimobile/nge/ResourceProvider;->mClassR:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v3

    .line 27
    .local v3, "subs":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 28
    aget-object v2, v3, v1

    .line 29
    .local v2, "sub":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/anansimobile/nge/ResourceProvider;->mClassR:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".drawable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    iput-object v2, p0, Lcom/anansimobile/nge/ResourceProvider;->mDrawable:Ljava/lang/Class;

    .line 27
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/anansimobile/nge/ResourceProvider;->mClassR:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".layout"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 32
    iput-object v2, p0, Lcom/anansimobile/nge/ResourceProvider;->mLayout:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 39
    .end local v1    # "i":I
    .end local v2    # "sub":Ljava/lang/Class;
    .end local v3    # "subs":[Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "init resource provider failed, msg: \"%s\"!~"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    return-void

    .line 33
    .restart local v1    # "i":I
    .restart local v2    # "sub":Ljava/lang/Class;
    .restart local v3    # "subs":[Ljava/lang/Class;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/anansimobile/nge/ResourceProvider;->mClassR:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 34
    iput-object v2, p0, Lcom/anansimobile/nge/ResourceProvider;->mId:Ljava/lang/Class;

    goto :goto_1

    .line 35
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/anansimobile/nge/ResourceProvider;->mClassR:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".string"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    iput-object v2, p0, Lcom/anansimobile/nge/ResourceProvider;->mString:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private getIntValueFrom(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 6
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 78
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 79
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 88
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v2, "get resource id failed, msg: \"%s\"!~"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "get resource id failed, msg: \"%s\"!~"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 84
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "get resource id failed, msg: \"%s\"!~"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public getDrawableIdByName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/anansimobile/nge/ResourceProvider;->mDrawable:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, -0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/anansimobile/nge/ResourceProvider;->mDrawable:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/anansimobile/nge/ResourceProvider;->getIntValueFrom(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getIdByName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/anansimobile/nge/ResourceProvider;->mId:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, -0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/anansimobile/nge/ResourceProvider;->mId:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/anansimobile/nge/ResourceProvider;->getIntValueFrom(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLayoutIdByName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/anansimobile/nge/ResourceProvider;->mLayout:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 54
    const/4 v0, -0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/anansimobile/nge/ResourceProvider;->mLayout:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/anansimobile/nge/ResourceProvider;->getIntValueFrom(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getStringIdByName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/anansimobile/nge/ResourceProvider;->mString:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, -0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/anansimobile/nge/ResourceProvider;->mString:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/anansimobile/nge/ResourceProvider;->getIntValueFrom(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
