.class public abstract Lcom/google/android/gms/internal/zzlc;
.super Lcom/google/android/gms/common/api/PendingResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzlc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/PendingResult<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private zzL:Z

.field private volatile zzaaX:Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final zzabh:Ljava/lang/Object;

.field protected final zzabi:Lcom/google/android/gms/internal/zzlc$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlc$zza<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final zzabj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/PendingResult$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzabk:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private volatile zzabl:Z

.field private zzabm:Z

.field private zzabn:Lcom/google/android/gms/common/internal/zzq;

.field private zzabo:Ljava/lang/Integer;

.field private volatile zzabp:Lcom/google/android/gms/internal/zzlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlq<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final zzoS:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabh:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzoS:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabj:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/internal/zzlc$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzlc$zza;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabi:Lcom/google/android/gms/internal/zzlc$zza;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabh:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzoS:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabj:Ljava/util/ArrayList;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_24

    :cond_20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_24
    new-instance v0, Lcom/google/android/gms/internal/zzlc$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzlc$zza;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabi:Lcom/google/android/gms/internal/zzlc$zza;

    return-void
.end method

.method private get()Lcom/google/android/gms/common/api/Result;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzlc;->zzabl:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Result has already been consumed."

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlc;->isReady()Z

    move-result v1

    const-string v3, "Result is not ready."

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlc;->zzaaX:Lcom/google/android/gms/common/api/Result;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/zzlc;->zzaaX:Lcom/google/android/gms/common/api/Result;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzlc;->zzabk:Lcom/google/android/gms/common/api/ResultCallback;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzlc;->zzabl:Z

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_23

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlc;->zznL()V

    return-object v1

    :catchall_23
    move-exception p0

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method private zzc(Lcom/google/android/gms/common/api/Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlc;->zzaaX:Lcom/google/android/gms/common/api/Result;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlc;->zzabn:Lcom/google/android/gms/common/internal/zzq;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlc;->zzoS:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlc;->zzaaX:Lcom/google/android/gms/common/api/Result;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabk:Lcom/google/android/gms/common/api/ResultCallback;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabi:Lcom/google/android/gms/internal/zzlc$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlc$zza;->zznM()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlc;->zzL:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabi:Lcom/google/android/gms/internal/zzlc$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlc;->zzabk:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlc;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzlc$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/PendingResult$zza;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/PendingResult$zza;->zzt(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2e

    :cond_3e
    iget-object p0, p0, Lcom/google/android/gms/internal/zzlc;->zzabj:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/common/api/Result;)V
    .registers 5

    instance-of v0, p0, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v0, :cond_22

    :try_start_4
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/Releasable;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "BasePendingResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to release "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    return-void
.end method


# virtual methods
.method public final await()Lcom/google/android/gms/common/api/Result;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_e

    move v0, v3

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    const-string v1, "await must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabl:Z

    xor-int/2addr v0, v3

    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabp:Lcom/google/android/gms/internal/zzlq;

    if-nez v0, :cond_21

    move v2, v3

    :cond_21
    const-string v0, "Cannot await if then() has been called."

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    :try_start_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzoS:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_31

    :catch_2c
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzabc:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlc;->zzw(Lcom/google/android/gms/common/api/Status;)V

    :goto_31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlc;->isReady()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlc;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object p0

    return-object p0
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_15

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_13

    goto :goto_15

    :cond_13
    move v0, v1

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v2

    :goto_16
    const-string v3, "await must not be called on the UI thread when time is greater than zero."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabl:Z

    xor-int/2addr v0, v2

    const-string v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabp:Lcom/google/android/gms/internal/zzlq;

    if-nez v0, :cond_28

    move v1, v2

    :cond_28
    const-string v0, "Cannot await if then() has been called."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    :try_start_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzoS:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_40

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzabe:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlc;->zzw(Lcom/google/android/gms/common/api/Status;)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_3a} :catch_3b

    goto :goto_40

    :catch_3b
    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzabc:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlc;->zzw(Lcom/google/android/gms/common/api/Status;)V

    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlc;->isReady()Z

    move-result p1

    const-string p2, "Result is not ready."

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlc;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object p0

    return-object p0
.end method

.method public cancel()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzlc;->zzL:Z

    if-nez v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzlc;->zzabl:Z

    if-eqz v1, :cond_c

    goto :goto_2b

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlc;->zzabn:Lcom/google/android/gms/common/internal/zzq;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2d

    if-eqz v1, :cond_15

    :try_start_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlc;->zzabn:Lcom/google/android/gms/common/internal/zzq;

    invoke-interface {v1}, Lcom/google/android/gms/common/internal/zzq;->cancel()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_2d

    :catch_15
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlc;->zzaaX:Lcom/google/android/gms/common/api/Result;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlc;->zzd(Lcom/google/android/gms/common/api/Result;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzlc;->zzabk:Lcom/google/android/gms/common/api/ResultCallback;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzlc;->zzL:Z

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzabf:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzlc;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzlc;->zzc(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v0

    return-void

    :cond_2b
    :goto_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_15 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public isCanceled()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzlc;->zzL:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isReady()Z
    .registers 5

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlc;->zzoS:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-TR;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabl:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzlc;->zzabp:Lcom/google/android/gms/internal/zzlq;

    if-nez v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    const-string v2, "Cannot set callbacks if then() has been called."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlc;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1f

    monitor-exit v0

    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlc;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlc;->zzabi:Lcom/google/android/gms/internal/zzlc$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlc;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/google/android/gms/internal/zzlc$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_31

    :cond_2f
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlc;->zzabk:Lcom/google/android/gms/common/api/ResultCallback;

    :goto_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_33

    throw p0
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabl:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzlc;->zzabp:Lcom/google/android/gms/internal/zzlq;

    if-nez v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    const-string v2, "Cannot set callbacks if then() has been called."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlc;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1f

    monitor-exit v0

    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlc;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object p2, p0, Lcom/google/android/gms/internal/zzlc;->zzabi:Lcom/google/android/gms/internal/zzlc$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlc;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/google/android/gms/internal/zzlc$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_3a

    :cond_2f
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlc;->zzabk:Lcom/google/android/gms/common/api/ResultCallback;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlc;->zzabi:Lcom/google/android/gms/internal/zzlc$zza;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/gms/internal/zzlc$zza;->zza(Lcom/google/android/gms/internal/zzlc;J)V

    :goto_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabl:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-string v0, "Callback cannot be null."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlc;->isReady()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlc;->zzaaX:Lcom/google/android/gms/common/api/Result;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/PendingResult$zza;->zzt(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2a

    :cond_25
    iget-object p0, p0, Lcom/google/android/gms/internal/zzlc;->zzabj:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method protected final zza(Lcom/google/android/gms/common/internal/zzq;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlc;->zzabn:Lcom/google/android/gms/common/internal/zzq;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method protected abstract zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public final zzb(Lcom/google/android/gms/common/api/Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzlc;->zzabm:Z

    if-nez v1, :cond_25

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzlc;->zzL:Z

    if-eqz v1, :cond_c

    goto :goto_25

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlc;->isReady()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Results have already been set"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzlc;->zzabl:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Result has already been consumed"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlc;->zzc(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v0

    return-void

    :cond_25
    :goto_25
    invoke-static {p1}, Lcom/google/android/gms/internal/zzlc;->zzd(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public zznF()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlc;->zzabo:Ljava/lang/Integer;

    return-object p0
.end method

.method protected zznL()V
    .registers 1

    return-void
.end method

.method public final zzw(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlc;->zzabh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlc;->isReady()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlc;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlc;->zzabm:Z

    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method
