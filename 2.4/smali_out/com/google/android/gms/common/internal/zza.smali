.class public Lcom/google/android/gms/common/internal/zza;
.super Lcom/google/android/gms/common/internal/zzp$zza;


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzQd:Landroid/accounts/Account;

.field zzaeG:I


# direct methods
.method public static zzb(Lcom/google/android/gms/common/internal/zzp;)Landroid/accounts/Account;
    .registers 4

    if-eqz p0, :cond_1f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_6
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/zzp;->getAccount()Landroid/accounts/Account;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_10
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    :catchall_e
    move-exception p0

    goto :goto_1b

    :catch_10
    :try_start_10
    const-string p0, "AccountAccessor"

    const-string v2, "Remote account accessor probably died"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    :goto_20
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/common/internal/zza;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zza;->zzQd:Landroid/accounts/Account;

    check-cast p1, Lcom/google/android/gms/common/internal/zza;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zza;->zzQd:Landroid/accounts/Account;

    invoke-virtual {v0, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/internal/zza;->zzaeG:I

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zza;->zzQd:Landroid/accounts/Account;

    return-object v0

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zza;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zze(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_18

    iput v0, p0, Lcom/google/android/gms/common/internal/zza;->zzaeG:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zza;->zzQd:Landroid/accounts/Account;

    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not GooglePlayServices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
