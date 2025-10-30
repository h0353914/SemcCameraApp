.class public Lcom/google/android/gms/common/server/converter/zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/common/server/converter/ConverterWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/common/server/converter/ConverterWrapper;Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaq(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->getVersionCode()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->zzpy()Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, p0, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/converter/zza;->zzas(Landroid/os/Parcel;)Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/converter/zza;->zzbQ(I)[Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    move-result-object p1

    return-object p1
.end method

.method public zzas(Landroid/os/Parcel;)Lcom/google/android/gms/common/server/converter/ConverterWrapper;
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzap(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_29

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzao(Landroid/os/Parcel;)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzbM(I)I

    move-result v4

    packed-switch v4, :pswitch_data_4c

    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_6

    :pswitch_1b
    sget-object v2, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->CREATOR:Lcom/google/android/gms/common/server/converter/zzb;

    invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    goto :goto_6

    :pswitch_24
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_6

    :cond_29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ne v3, v0, :cond_35

    new-instance p1, Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;-><init>(ILcom/google/android/gms/common/server/converter/StringToIntConverter;)V

    return-object p1

    :cond_35
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

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_1b
    .end packed-switch
.end method

.method public zzbQ(I)[Lcom/google/android/gms/common/server/converter/ConverterWrapper;
    .registers 2

    new-array p1, p1, [Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    return-object p1
.end method
