.class public Lcom/google/android/gms/common/internal/zzm$zzb$zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzm$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzagh:Lcom/google/android/gms/common/internal/zzm$zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzm$zzb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb$zza;->zzagh:Lcom/google/android/gms/common/internal/zzm$zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb$zza;->zzagh:Lcom/google/android/gms/common/internal/zzm$zzb;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagg:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->zza(Lcom/google/android/gms/common/internal/zzm;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb$zza;->zzagh:Lcom/google/android/gms/common/internal/zzm$zzb;

    invoke-static {v1, p2}, Lcom/google/android/gms/common/internal/zzm$zzb;->zza(Lcom/google/android/gms/common/internal/zzm$zzb;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb$zza;->zzagh:Lcom/google/android/gms/common/internal/zzm$zzb;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/zzm$zzb;->zza(Lcom/google/android/gms/common/internal/zzm$zzb;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb$zza;->zzagh:Lcom/google/android/gms/common/internal/zzm$zzb;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzm$zzb;->zzb(Lcom/google/android/gms/common/internal/zzm$zzb;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_1d

    :cond_2d
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzm$zzb$zza;->zzagh:Lcom/google/android/gms/common/internal/zzm$zzb;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zzm$zzb;->zza(Lcom/google/android/gms/common/internal/zzm$zzb;I)I

    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb$zza;->zzagh:Lcom/google/android/gms/common/internal/zzm$zzb;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagg:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->zza(Lcom/google/android/gms/common/internal/zzm;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb$zza;->zzagh:Lcom/google/android/gms/common/internal/zzm$zzb;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzm$zzb;->zza(Lcom/google/android/gms/common/internal/zzm$zzb;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb$zza;->zzagh:Lcom/google/android/gms/common/internal/zzm$zzb;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/zzm$zzb;->zza(Lcom/google/android/gms/common/internal/zzm$zzb;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb$zza;->zzagh:Lcom/google/android/gms/common/internal/zzm$zzb;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzm$zzb;->zzb(Lcom/google/android/gms/common/internal/zzm$zzb;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_1e

    :cond_2e
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzm$zzb$zza;->zzagh:Lcom/google/android/gms/common/internal/zzm$zzb;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zzm$zzb;->zza(Lcom/google/android/gms/common/internal/zzm$zzb;I)I

    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_36

    throw p0
.end method
