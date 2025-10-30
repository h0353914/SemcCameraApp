.class final Lcom/google/android/gms/common/internal/zzj$zzb;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzafK:Lcom/google/android/gms/common/internal/zzj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzj;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private zza(Landroid/os/Message;)V
    .registers 2

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/zzj$zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj$zzc;->zzpg()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj$zzc;->unregister()V

    return-void
.end method

.method private zzb(Landroid/os/Message;)Z
    .registers 4

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_16

    iget p0, p1, Landroid/os/Message;->what:I

    if-eq p0, v0, :cond_16

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq p0, v1, :cond_16

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, 0x6

    if-ne p0, p1, :cond_15

    return v0

    :cond_15
    const/4 v0, 0x0

    :cond_16
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzj;->zzafH:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_16

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzj$zzb;->zzb(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzj$zzb;->zza(Landroid/os/Message;)V

    :cond_15
    return-void

    :cond_16
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_25

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_31

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzj;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzj$zzb;->zza(Landroid/os/Message;)V

    return-void

    :cond_31
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4d

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v0, p1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$zza;->zza(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzj;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_4d
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_77

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zzb(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zzb(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v4}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnectionSuspended(I)V

    :cond_6a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzj;->onConnectionSuspended(I)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {p0, v2, v1, v3}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;IILandroid/os/IInterface;)Z

    return-void

    :cond_77
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_88

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzb;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzj;->isConnected()Z

    move-result v0

    if-nez v0, :cond_88

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzj$zzb;->zza(Landroid/os/Message;)V

    return-void

    :cond_88
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzj$zzb;->zzb(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_96

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/zzj$zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj$zzc;->zzph()V

    return-void

    :cond_96
    const-string p0, "GmsClient"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t know how to handle message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
