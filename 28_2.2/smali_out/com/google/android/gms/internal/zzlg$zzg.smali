.class Lcom/google/android/gms/internal/zzlg$zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzg"
.end annotation


# instance fields
.field final synthetic zzabL:Lcom/google/android/gms/internal/zzlg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzlg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg$zzg;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlg;->zzf(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzqw;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzlg$zzb;

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzlg$zzb;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzqw;->zza(Lcom/google/android/gms/common/internal/zzt;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzlg;->zzb(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlg;->zzi(Lcom/google/android/gms/internal/zzlg;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlg;->zzj(Lcom/google/android/gms/internal/zzlg;)V

    goto :goto_21

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzlg;->zza(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_2b

    :goto_21
    iget-object p0, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_2b
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public onConnectionSuspended(I)V
    .registers 2

    return-void
.end method
