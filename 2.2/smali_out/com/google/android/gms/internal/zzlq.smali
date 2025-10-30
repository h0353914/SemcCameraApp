.class public Lcom/google/android/gms/internal/zzlq;
.super Lcom/google/android/gms/common/api/zze;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/zze<",
        "TR;>;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final zzabh:Ljava/lang/Object;

.field private zzacY:Lcom/google/android/gms/common/api/zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzb<",
            "-TR;+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private zzacZ:Lcom/google/android/gms/internal/zzlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlq<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private zzada:Lcom/google/android/gms/common/api/ResultCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallbacks<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private zzadb:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method private zzd(Lcom/google/android/gms/common/api/Result;)V
    .registers 5

    instance-of p0, p1, Lcom/google/android/gms/common/api/Releasable;

    if-eqz p0, :cond_22

    :try_start_4
    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/common/api/Releasable;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    const-string v0, "TransformedResultImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to release "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    return-void
.end method

.method private zzon()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzadb:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzacY:Lcom/google/android/gms/common/api/zzb;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzada:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzadb:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzacY:Lcom/google/android/gms/common/api/zzb;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzacY:Lcom/google/android/gms/common/api/zzb;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/zzb;->zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    if-nez v1, :cond_26

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    const-string v3, "Transform returned null"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzlq;->zzx(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2b

    :cond_26
    iget-object v2, p0, Lcom/google/android/gms/internal/zzlq;->zzacZ:Lcom/google/android/gms/internal/zzlq;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzlq;->zza(Lcom/google/android/gms/common/api/PendingResult;)V

    :goto_2b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlq;->zzd(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_41

    :cond_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzada:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-eqz v1, :cond_41

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlq;->zzada:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onSuccess(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_41

    :cond_39
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzlq;->zzx(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2b

    :cond_41
    :goto_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public zza(Lcom/google/android/gms/common/api/PendingResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlq;->zzadb:Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlq;->zzon()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public zzx(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlq;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzacY:Lcom/google/android/gms/common/api/zzb;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzacY:Lcom/google/android/gms/common/api/zzb;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/zzb;->zzu(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    const-string v1, "onFailure must not return null"

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlq;->zzacZ:Lcom/google/android/gms/internal/zzlq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlq;->zzx(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_21

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlq;->zzada:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-eqz v1, :cond_21

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlq;->zzada:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onFailure(Lcom/google/android/gms/common/api/Status;)V

    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method
