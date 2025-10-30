.class public abstract Lcom/google/android/gms/dynamic/zzg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/zzg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzapA:Ljava/lang/String;

.field private zzapB:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zzg;->zzapA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zzas(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/zzg$zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzg;->zzapB:Ljava/lang/Object;

    if-nez v0, :cond_47

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_15

    new-instance p0, Lcom/google/android/gms/dynamic/zzg$zza;

    const-string p1, "Could not get remote context."

    invoke-direct {p0, p1}, Lcom/google/android/gms/dynamic/zzg$zza;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :try_start_19
    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzg;->zzapA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/zzg;->zzd(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zzg;->zzapB:Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_2b} :catch_3e
    .catch Ljava/lang/InstantiationException; {:try_start_19 .. :try_end_2b} :catch_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_2b} :catch_2c

    goto :goto_47

    :catch_2c
    move-exception p0

    new-instance p1, Lcom/google/android/gms/dynamic/zzg$zza;

    const-string v0, "Could not access creator."

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/dynamic/zzg$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_35
    move-exception p0

    new-instance p1, Lcom/google/android/gms/dynamic/zzg$zza;

    const-string v0, "Could not instantiate creator."

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/dynamic/zzg$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3e
    move-exception p0

    new-instance p1, Lcom/google/android/gms/dynamic/zzg$zza;

    const-string v0, "Could not load creator class."

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/dynamic/zzg$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_47
    :goto_47
    iget-object p0, p0, Lcom/google/android/gms/dynamic/zzg;->zzapB:Ljava/lang/Object;

    return-object p0
.end method

.method protected abstract zzd(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method
