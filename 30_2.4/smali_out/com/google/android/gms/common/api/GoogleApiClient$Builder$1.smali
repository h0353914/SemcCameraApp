.class Lcom/google/android/gms/common/api/GoogleApiClient$Builder$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zznC()Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzWT:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic zzaaU:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient$Builder;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder$1;->zzaaU:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder$1;->zzWT:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder$1;->zzaaU:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zza(Lcom/google/android/gms/common/api/GoogleApiClient$Builder;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder$1;->zzaaU:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zza(Lcom/google/android/gms/common/api/GoogleApiClient$Builder;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_2c

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder$1;->zzaaU:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zza(Lcom/google/android/gms/common/api/GoogleApiClient$Builder;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlp;->zzb(Landroidx/fragment/app/FragmentActivity;)Lcom/google/android/gms/internal/zzlp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder$1;->zzWT:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zza(Lcom/google/android/gms/common/api/GoogleApiClient$Builder;Lcom/google/android/gms/internal/zzlp;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    :cond_2c
    :goto_2c
    return-void
.end method
