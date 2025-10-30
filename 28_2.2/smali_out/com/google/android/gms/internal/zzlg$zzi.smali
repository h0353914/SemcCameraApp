.class abstract Lcom/google/android/gms/internal/zzlg$zzi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "zzi"
.end annotation


# instance fields
.field final synthetic zzabL:Lcom/google/android/gms/internal/zzlg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzlg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$zzi;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg$zzi;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzi;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_d} :catch_28
    .catchall {:try_start_9 .. :try_end_d} :catchall_26

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlg$zzi;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlg$zzi;->zznO()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_28
    .catchall {:try_start_19 .. :try_end_1c} :catchall_26

    :goto_1c
    iget-object p0, p0, Lcom/google/android/gms/internal/zzlg$zzi;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_26
    move-exception v0

    goto :goto_34

    :catch_28
    move-exception v0

    :try_start_29
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zzi;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlg;->zzd(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzli;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/RuntimeException;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_26

    goto :goto_1c

    return-void

    :goto_34
    iget-object p0, p0, Lcom/google/android/gms/internal/zzlg$zzi;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract zznO()V
.end method
