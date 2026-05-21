.class public final enum Lcom/helpshift/ContactUsFilter$LOCATION;
.super Ljava/lang/Enum;
.source "ContactUsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/ContactUsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "LOCATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/helpshift/ContactUsFilter$LOCATION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/ContactUsFilter$LOCATION;

.field public static final enum ACTION_BAR:Lcom/helpshift/ContactUsFilter$LOCATION;

.field public static final enum QUESTION_ACTION_BAR:Lcom/helpshift/ContactUsFilter$LOCATION;

.field public static final enum QUESTION_FOOTER:Lcom/helpshift/ContactUsFilter$LOCATION;

.field public static final enum SEARCH_FOOTER:Lcom/helpshift/ContactUsFilter$LOCATION;

.field public static final enum SEARCH_RESULT_ACTIVITY_HEADER:Lcom/helpshift/ContactUsFilter$LOCATION;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/helpshift/ContactUsFilter$LOCATION;

    const-string/jumbo v1, "ACTION_BAR"

    invoke-direct {v0, v1, v2}, Lcom/helpshift/ContactUsFilter$LOCATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/ContactUsFilter$LOCATION;->ACTION_BAR:Lcom/helpshift/ContactUsFilter$LOCATION;

    .line 18
    new-instance v0, Lcom/helpshift/ContactUsFilter$LOCATION;

    const-string/jumbo v1, "SEARCH_FOOTER"

    invoke-direct {v0, v1, v3}, Lcom/helpshift/ContactUsFilter$LOCATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/ContactUsFilter$LOCATION;->SEARCH_FOOTER:Lcom/helpshift/ContactUsFilter$LOCATION;

    .line 19
    new-instance v0, Lcom/helpshift/ContactUsFilter$LOCATION;

    const-string/jumbo v1, "QUESTION_FOOTER"

    invoke-direct {v0, v1, v4}, Lcom/helpshift/ContactUsFilter$LOCATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/ContactUsFilter$LOCATION;->QUESTION_FOOTER:Lcom/helpshift/ContactUsFilter$LOCATION;

    .line 20
    new-instance v0, Lcom/helpshift/ContactUsFilter$LOCATION;

    const-string/jumbo v1, "QUESTION_ACTION_BAR"

    invoke-direct {v0, v1, v5}, Lcom/helpshift/ContactUsFilter$LOCATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/ContactUsFilter$LOCATION;->QUESTION_ACTION_BAR:Lcom/helpshift/ContactUsFilter$LOCATION;

    .line 21
    new-instance v0, Lcom/helpshift/ContactUsFilter$LOCATION;

    const-string/jumbo v1, "SEARCH_RESULT_ACTIVITY_HEADER"

    invoke-direct {v0, v1, v6}, Lcom/helpshift/ContactUsFilter$LOCATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/ContactUsFilter$LOCATION;->SEARCH_RESULT_ACTIVITY_HEADER:Lcom/helpshift/ContactUsFilter$LOCATION;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/helpshift/ContactUsFilter$LOCATION;

    sget-object v1, Lcom/helpshift/ContactUsFilter$LOCATION;->ACTION_BAR:Lcom/helpshift/ContactUsFilter$LOCATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/ContactUsFilter$LOCATION;->SEARCH_FOOTER:Lcom/helpshift/ContactUsFilter$LOCATION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/ContactUsFilter$LOCATION;->QUESTION_FOOTER:Lcom/helpshift/ContactUsFilter$LOCATION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/helpshift/ContactUsFilter$LOCATION;->QUESTION_ACTION_BAR:Lcom/helpshift/ContactUsFilter$LOCATION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/helpshift/ContactUsFilter$LOCATION;->SEARCH_RESULT_ACTIVITY_HEADER:Lcom/helpshift/ContactUsFilter$LOCATION;

    aput-object v1, v0, v6

    sput-object v0, Lcom/helpshift/ContactUsFilter$LOCATION;->$VALUES:[Lcom/helpshift/ContactUsFilter$LOCATION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/ContactUsFilter$LOCATION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/helpshift/ContactUsFilter$LOCATION;

    return-object v0
.end method

.method public static values()[Lcom/helpshift/ContactUsFilter$LOCATION;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/helpshift/ContactUsFilter$LOCATION;->$VALUES:[Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-virtual {v0}, [Lcom/helpshift/ContactUsFilter$LOCATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/ContactUsFilter$LOCATION;

    return-object v0
.end method
