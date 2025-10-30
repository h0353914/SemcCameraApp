.class public Lcom/google/android/gms/signin/internal/zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/signin/internal/AuthAccountResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/signin/internal/AuthAccountResult;Landroid/os/Parcel;I)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaq(Landroid/os/Parcel;)I

    move-result p2

    iget p0, p0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->mVersionCode:I

    const/4 v0, 0x1

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/signin/internal/zza;->zzgB(Landroid/os/Parcel;)Lcom/google/android/gms/signin/internal/AuthAccountResult;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/signin/internal/zza;->zzjo(I)[Lcom/google/android/gms/signin/internal/AuthAccountResult;

    move-result-object p1

    return-object p1
.end method

.method public zzgB(Landroid/os/Parcel;)Lcom/google/android/gms/signin/internal/AuthAccountResult;
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzap(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1f

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzao(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzbM(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1a

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_1a
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_5

    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ne v2, v0, :cond_2b

    new-instance p1, Lcom/google/android/gms/signin/internal/AuthAccountResult;

    invoke-direct {p1, v1}, Lcom/google/android/gms/signin/internal/AuthAccountResult;-><init>(I)V

    return-object p1

    :cond_2b
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1
.end method

.method public zzjo(I)[Lcom/google/android/gms/signin/internal/AuthAccountResult;
    .registers 2

    new-array p1, p1, [Lcom/google/android/gms/signin/internal/AuthAccountResult;

    return-object p1
.end method
