.class public abstract Lcom/google/android/gms/auth/api/signin/internal/zze$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/internal/zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/internal/zze$zza$zza;
    }
.end annotation


# direct methods
.method public static zzaz(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zze;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/auth/api/signin/internal/zze;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/zze;

    return-object v0

    :cond_13
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zze$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/signin/internal/zze$zza$zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_c0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :sswitch_a
    const-string p0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_10
    const-string p1, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzd$zza;->zzay(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zzd;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2c

    sget-object p4, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    :cond_2c
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/auth/api/signin/internal/zze$zza;->zzc(Lcom/google/android/gms/auth/api/signin/internal/zzd;Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_33
    const-string p1, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzd$zza;->zzay(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zzd;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4f

    sget-object p4, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    :cond_4f
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/auth/api/signin/internal/zze$zza;->zzb(Lcom/google/android/gms/auth/api/signin/internal/zzd;Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_56
    const-string p1, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzd$zza;->zzay(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zzd;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_72

    sget-object p4, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    :cond_72
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/auth/api/signin/internal/zze$zza;->zza(Lcom/google/android/gms/auth/api/signin/internal/zzd;Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_79
    const-string p1, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzd$zza;->zzay(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zzd;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_95

    sget-object p4, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    :cond_95
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/auth/api/signin/internal/zze$zza;->zzb(Lcom/google/android/gms/auth/api/signin/internal/zzd;Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :sswitch_9c
    const-string p1, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzd$zza;->zzay(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zzd;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b8

    sget-object p4, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    :cond_b8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/auth/api/signin/internal/zze$zza;->zza(Lcom/google/android/gms/auth/api/signin/internal/zzd;Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    nop

    :sswitch_data_c0
    .sparse-switch
        0x1 -> :sswitch_9c
        0x2 -> :sswitch_79
        0x65 -> :sswitch_56
        0x66 -> :sswitch_33
        0x67 -> :sswitch_10
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
