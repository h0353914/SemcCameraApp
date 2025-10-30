.class public Lcom/google/android/gms/playlog/internal/zzf;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj<",
        "Lcom/google/android/gms/playlog/internal/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzQe:Ljava/lang/String;

.field private final zzaRZ:Lcom/google/android/gms/playlog/internal/zzd;

.field private final zzaSa:Lcom/google/android/gms/playlog/internal/zzb;

.field private zzaSb:Z

.field private final zzpd:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/playlog/internal/zzd;Lcom/google/android/gms/common/internal/zzf;)V
    .registers 12

    const/16 v3, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzQe:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/playlog/internal/zzd;

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaRZ:Lcom/google/android/gms/playlog/internal/zzd;

    iget-object p1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaRZ:Lcom/google/android/gms/playlog/internal/zzd;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/playlog/internal/zzd;->zza(Lcom/google/android/gms/playlog/internal/zzf;)V

    new-instance p1, Lcom/google/android/gms/playlog/internal/zzb;

    invoke-direct {p1}, Lcom/google/android/gms/playlog/internal/zzb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaSa:Lcom/google/android/gms/playlog/internal/zzb;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzpd:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaSb:Z

    return-void
.end method

.method private zzBv()V
    .registers 8

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaSb:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzZ(Z)V

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaSa:Lcom/google/android/gms/playlog/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/zzb;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_86

    const/4 v0, 0x0

    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaSa:Lcom/google/android/gms/playlog/internal/zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/playlog/internal/zzb;->zzBt()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/playlog/internal/zzb$zza;

    iget-object v4, v3, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzaRO:Lcom/google/android/gms/internal/zzsi$zzd;

    if-eqz v4, :cond_43

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzf;->zzpc()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/playlog/internal/zza;

    iget-object v5, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzQe:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzaRM:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v3, v3, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzaRO:Lcom/google/android/gms/internal/zzsi$zzd;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzse;->zzf(Lcom/google/android/gms/internal/zzse;)[B

    move-result-object v3

    invoke-interface {v4, v5, v6, v3}, Lcom/google/android/gms/playlog/internal/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;[B)V

    goto :goto_1f

    :cond_43
    iget-object v4, v3, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzaRM:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    :goto_4b
    iget-object v3, v3, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzaRN:Lcom/google/android/gms/playlog/internal/LogEvent;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_51
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_65

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzf;->zzpc()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/playlog/internal/zza;

    iget-object v5, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzQe:Ljava/lang/String;

    invoke-interface {v4, v5, v0, v1}, Lcom/google/android/gms/playlog/internal/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_65
    iget-object v0, v3, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzaRM:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    goto :goto_4b

    :cond_68
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_79

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzf;->zzpc()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/playlog/internal/zza;

    iget-object v3, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzQe:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/playlog/internal/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Ljava/util/List;)V

    :cond_79
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaSa:Lcom/google/android/gms/playlog/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/zzb;->clear()V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_7e} :catch_7f

    goto :goto_86

    :catch_7f
    const-string v0, "PlayLoggerImpl"

    const-string v1, "Couldn\'t send cached log events to AndroidLog service.  Retaining in memory cache."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    return-void
.end method

.method private zzc(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaSa:Lcom/google/android/gms/playlog/internal/zzb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/playlog/internal/zzb;->zza(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    return-void
.end method

.method private zzd(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/playlog/internal/zzf;->zzBv()V

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzf;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/zza;

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzQe:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/playlog/internal/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_1e

    :catch_f
    const-string v0, "PlayLoggerImpl"

    const-string v1, "Service was disconnected.  Will try caching."

    goto :goto_18

    :catch_14
    const-string v0, "PlayLoggerImpl"

    const-string v1, "Couldn\'t send log event.  Will try caching."

    :goto_18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/playlog/internal/zzf;->zzc(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    :goto_1e
    return-void
.end method


# virtual methods
.method public start()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzpd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzf;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzf;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_1b

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaRZ:Lcom/google/android/gms/playlog/internal/zzd;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/playlog/internal/zzd;->zzao(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzf;->zzoZ()V

    monitor-exit v0

    return-void

    :cond_1b
    :goto_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public stop()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzpd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaRZ:Lcom/google/android/gms/playlog/internal/zzd;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/playlog/internal/zzd;->zzao(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzf;->disconnect()V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/playlog/internal/zzf;->zzdA(Landroid/os/IBinder;)Lcom/google/android/gms/playlog/internal/zza;

    move-result-object p1

    return-object p1
.end method

.method zzap(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzpd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaSb:Z

    iput-boolean p1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaSb:Z

    if-eqz v1, :cond_10

    iget-boolean p1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaSb:Z

    if-nez p1, :cond_10

    invoke-direct {p0}, Lcom/google/android/gms/playlog/internal/zzf;->zzBv()V

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public zzb(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzpd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/playlog/internal/zzf;->zzaSb:Z

    if-eqz v1, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/playlog/internal/zzf;->zzc(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    goto :goto_e

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/playlog/internal/zzf;->zzd(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    :goto_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method protected zzdA(Landroid/os/IBinder;)Lcom/google/android/gms/playlog/internal/zza;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/playlog/internal/zza$zza;->zzdz(Landroid/os/IBinder;)Lcom/google/android/gms/playlog/internal/zza;

    move-result-object p1

    return-object p1
.end method

.method protected zzfK()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.playlog.service.START"

    return-object v0
.end method

.method protected zzfL()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    return-object v0
.end method
