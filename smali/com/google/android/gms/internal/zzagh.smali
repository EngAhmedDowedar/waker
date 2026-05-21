.class final Lcom/google/android/gms/internal/zzagh;
.super Lcom/google/android/gms/internal/zzagy;


# instance fields
.field private synthetic zzanz:Landroid/content/Context;

.field private synthetic zzdbl:Ljava/lang/String;

.field private synthetic zzdbm:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzagh;->zzanz:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzagh;->zzdbl:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzagh;->zzdbm:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzagy;-><init>(Lcom/google/android/gms/internal/zzagb;)V

    return-void
.end method


# virtual methods
.method public final zzdc()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzagh;->zzanz:Landroid/content/Context;

    const-string/jumbo v1, "admob"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "app_settings_json"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzagh;->zzdbl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "app_settings_last_update_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzagh;->zzdbm:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
