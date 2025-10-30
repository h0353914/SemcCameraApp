.class public abstract Lcom/google/android/gms/internal/zzkk$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzkk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzkk$zza$zza;
    }
.end annotation


# direct methods
.method public static zzaw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzkk;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/zzkk;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/zzkk;

    return-object v0

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/zzkk$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkk$zza$zza;-><init>(Landroid/os/IBinder;)V

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_55

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_5c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_f
    const-string p1, "com.google.android.gms.auth.api.internal.IAuthService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkj$zza;->zzav(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzkj;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2b

    sget-object p4, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;

    :cond_2b
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzkk$zza;->zza(Lcom/google/android/gms/internal/zzkj;Lcom/google/android/gms/auth/api/proxy/ProxyGrpcRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_32
    const-string p1, "com.google.android.gms.auth.api.internal.IAuthService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkj$zza;->zzav(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzkj;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4e

    sget-object p4, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    :cond_4e
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzkk$zza;->zza(Lcom/google/android/gms/internal/zzkj;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_55
    const-string p1, "com.google.android.gms.auth.api.internal.IAuthService"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_32
        :pswitch_f
    .end packed-switch
.end method
