.class public abstract Lcom/google/android/gms/signin/internal/zzf$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/signin/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/signin/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/signin/internal/zzf$zza$zza;
    }
.end annotation


# direct methods
.method public static zzdN(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zzf;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/signin/internal/zzf;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/signin/internal/zzf;

    return-object v0

    :cond_13
    new-instance v0, Lcom/google/android/gms/signin/internal/zzf$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/signin/internal/zzf$zza$zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_114

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_11a

    packed-switch p1, :pswitch_data_126

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_13
    const-string p1, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/signin/internal/zze$zza;->zzdM(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zze;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/signin/internal/zzf$zza;->zza(Lcom/google/android/gms/signin/internal/zze;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_27
    const-string p1, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3b

    sget-object p1, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/signin/internal/RecordConsentRequest;

    :cond_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/signin/internal/zze$zza;->zzdM(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zze;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/signin/internal/zzf$zza;->zza(Lcom/google/android/gms/signin/internal/RecordConsentRequest;Lcom/google/android/gms/signin/internal/zze;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4a
    const-string p1, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzp$zza;->zzaH(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_62

    move v0, v1

    :cond_62
    invoke-virtual {p0, p1, p4, v0}, Lcom/google/android/gms/signin/internal/zzf$zza;->zza(Lcom/google/android/gms/common/internal/zzp;IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_69
    const-string p1, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_81

    sget-object p4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Landroid/accounts/Account;

    :cond_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/signin/internal/zze$zza;->zzdM(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zze;

    move-result-object p2

    invoke-virtual {p0, p1, v2, p2}, Lcom/google/android/gms/signin/internal/zzf$zza;->zza(ILandroid/accounts/Account;Lcom/google/android/gms/signin/internal/zze;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_90
    const-string p1, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/signin/internal/zzf$zza;->zzjq(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_a0
    const-string p1, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b4

    sget-object p1, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    :cond_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzt$zza;->zzaL(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzt;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/signin/internal/zzf$zza;->zza(Lcom/google/android/gms/common/internal/ResolveAccountRequest;Lcom/google/android/gms/common/internal/zzt;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_c3
    const-string p1, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_cf

    move v0, v1

    :cond_cf
    invoke-virtual {p0, v0}, Lcom/google/android/gms/signin/internal/zzf$zza;->zzaq(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_d6
    const-string p1, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_ea

    sget-object p1, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;

    :cond_ea
    invoke-virtual {p0, v2}, Lcom/google/android/gms/signin/internal/zzf$zza;->zza(Lcom/google/android/gms/signin/internal/CheckServerAuthResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_f1
    const-string p1, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_105

    sget-object p1, Lcom/google/android/gms/common/internal/AuthAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/common/internal/AuthAccountRequest;

    :cond_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/signin/internal/zze$zza;->zzdM(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zze;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/signin/internal/zzf$zza;->zza(Lcom/google/android/gms/common/internal/AuthAccountRequest;Lcom/google/android/gms/signin/internal/zze;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_114
    const-string p0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_11a
    .packed-switch 0x2
        :pswitch_f1
        :pswitch_d6
        :pswitch_c3
        :pswitch_a0
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x7
        :pswitch_90
        :pswitch_69
        :pswitch_4a
        :pswitch_27
        :pswitch_13
    .end packed-switch
.end method
