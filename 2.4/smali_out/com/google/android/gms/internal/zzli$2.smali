.class Lcom/google/android/gms/internal/zzli$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzacr:Lcom/google/android/gms/internal/zzli;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzli;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli$2;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$2;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzli;->zzb(Lcom/google/android/gms/internal/zzli;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$2;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzli;->zzc(Lcom/google/android/gms/internal/zzli;)Lcom/google/android/gms/internal/zzlj;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzlj;->onConnected(Landroid/os/Bundle;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1c

    iget-object p1, p0, Lcom/google/android/gms/internal/zzli$2;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzli;->zzb(Lcom/google/android/gms/internal/zzli;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1c
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$2;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzli;->zzb(Lcom/google/android/gms/internal/zzli;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public onConnectionSuspended(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$2;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzli;->zzb(Lcom/google/android/gms/internal/zzli;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$2;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzli;->zzc(Lcom/google/android/gms/internal/zzli;)Lcom/google/android/gms/internal/zzlj;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzlj;->onConnectionSuspended(I)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1c

    iget-object p1, p0, Lcom/google/android/gms/internal/zzli$2;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzli;->zzb(Lcom/google/android/gms/internal/zzli;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1c
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$2;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzli;->zzb(Lcom/google/android/gms/internal/zzli;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
