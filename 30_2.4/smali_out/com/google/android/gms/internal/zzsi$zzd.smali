.class public final Lcom/google/android/gms/internal/zzsi$zzd;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry<",
        "Lcom/google/android/gms/internal/zzsi$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public tag:Ljava/lang/String;

.field public zzbiO:J

.field public zzbiP:J

.field public zzbiQ:I

.field public zzbiR:I

.field public zzbiS:Z

.field public zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

.field public zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

.field public zzbiV:[B

.field public zzbiW:[B

.field public zzbiX:[B

.field public zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

.field public zzbiZ:Ljava/lang/String;

.field public zzbja:J

.field public zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

.field public zzbjc:[B

.field public zzbjd:I

.field public zzbje:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsi$zzd;->zzFV()Lcom/google/android/gms/internal/zzsi$zzd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/zzsi$zzd;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    if-nez v1, :cond_27

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    if-eqz v1, :cond_30

    return v2

    :cond_27
    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-eq v1, v3, :cond_37

    return v2

    :cond_37
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-eq v1, v3, :cond_3e

    return v2

    :cond_3e
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eq v1, v3, :cond_45

    return v2

    :cond_45
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v2

    :cond_50
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v1, :cond_59

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-eqz v1, :cond_62

    return v2

    :cond_59
    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzsi$zzb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    return v2

    :cond_62
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_6d

    return v2

    :cond_6d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_78

    return v2

    :cond_78
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_83

    return v2

    :cond_83
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v1, :cond_8c

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-eqz v1, :cond_95

    return v2

    :cond_8c
    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzsi$zza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    return v2

    :cond_95
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-nez v1, :cond_9e

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-eqz v1, :cond_a7

    return v2

    :cond_9e
    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a7

    return v2

    :cond_a7
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b0

    return v2

    :cond_b0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v1, :cond_b9

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-eqz v1, :cond_c2

    return v2

    :cond_b9
    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzsi$zzc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c2

    return v2

    :cond_c2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_cd

    return v2

    :cond_cd
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-eq v1, v3, :cond_d4

    return v2

    :cond_d4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_df

    return v2

    :cond_df
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_f5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ec

    goto :goto_f5

    :cond_ec
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f5
    :goto_f5
    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_103

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_102

    goto :goto_103

    :cond_102
    move v0, v2

    :cond_103
    :goto_103
    return v0
.end method

.method public hashCode()I
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_2c

    move v2, v3

    goto :goto_30

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_30
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v2, :cond_44

    const/16 v2, 0x4cf

    goto :goto_46

    :cond_44
    const/16 v2, 0x4d5

    :goto_46
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v2, :cond_58

    move v2, v3

    goto :goto_5c

    :cond_58
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsi$zzb;->hashCode()I

    move-result v2

    :goto_5c
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v2, :cond_80

    move v2, v3

    goto :goto_84

    :cond_80
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsi$zza;->hashCode()I

    move-result v2

    :goto_84
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-nez v2, :cond_8d

    move v2, v3

    goto :goto_91

    :cond_8d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_91
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    ushr-long v6, v4, v0

    xor-long/2addr v4, v6

    long-to-int v0, v4

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v0, :cond_a3

    move v0, v3

    goto :goto_a7

    :cond_a3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi$zzc;->hashCode()I

    move-result v0

    :goto_a7
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsc;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ce

    goto :goto_d4

    :cond_ce
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v3

    :cond_d4
    :goto_d4
    add-int/2addr v1, v3

    return v1
.end method

.method protected zzB()I
    .registers 11

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    const/4 v5, 0x0

    if-eqz v1, :cond_41

    array-length v1, v1

    if-lez v1, :cond_41

    move v1, v0

    move v0, v5

    :goto_2e
    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v7, v6

    if-ge v0, v7, :cond_40

    aget-object v6, v6, v0

    if-eqz v6, :cond_3d

    const/4 v7, 0x3

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v6

    add-int/2addr v1, v6

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_40
    move v0, v1

    :cond_41
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    sget-object v6, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_53

    const/4 v1, 0x6

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-eqz v1, :cond_5d

    const/4 v6, 0x7

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    sget-object v6, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_70

    const/16 v1, 0x8

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_70
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-eqz v1, :cond_7b

    const/16 v6, 0x9

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7b
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v1, :cond_86

    const/16 v6, 0xa

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/zzrx;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_86
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-eqz v1, :cond_91

    const/16 v6, 0xb

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_91
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-eqz v1, :cond_9c

    const/16 v6, 0xc

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    sget-object v6, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_af

    const/16 v1, 0xd

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_af
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c2

    const/16 v1, 0xe

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c2
    iget-wide v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    const-wide/32 v8, 0x2bf20

    cmp-long v1, v6, v8

    if-eqz v1, :cond_d2

    const/16 v1, 0xf

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/zzrx;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-eqz v1, :cond_dd

    const/16 v6, 0x10

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_dd
    iget-wide v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    cmp-long v1, v6, v3

    if-eqz v1, :cond_ea

    const/16 v1, 0x11

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/zzrx;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_ea
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_fd

    const/16 v1, 0x12

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_fd
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-eqz v1, :cond_108

    const/16 v3, 0x13

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_108
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-eqz v1, :cond_123

    array-length v1, v1

    if-lez v1, :cond_123

    move v1, v5

    :goto_110
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v4, v3

    if-ge v5, v4, :cond_11f

    aget v3, v3, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/zzrx;->zzlJ(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_110

    :cond_11f
    add-int/2addr v0, v1

    array-length v1, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_123
    return v0
.end method

.method public zzFV()Lcom/google/android/gms/internal/zzsi$zzd;
    .registers 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzsi$zze;->zzFW()[Lcom/google/android/gms/internal/zzsi$zze;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    const-wide/32 v2, 0x2bf20

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbix:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiv:I

    return-object p0
.end method

.method public zzJ(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzd;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_15a

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsi$zzd;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlC(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v2

    move v3, v1

    :goto_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFA()I

    move-result v4

    if-lez v4, :cond_28

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_28
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrw;->zzlE(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-nez v2, :cond_31

    move v2, v1

    goto :goto_32

    :cond_31
    array-length v2, v2

    :goto_32
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_3c

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3c
    :goto_3c
    array-length v1, v3

    if-ge v2, v1, :cond_48

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_48
    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlD(I)V

    goto :goto_0

    :sswitch_4e
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-nez v2, :cond_5a

    move v2, v1

    goto :goto_5b

    :cond_5a
    array-length v2, v2

    :goto_5b
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_65

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_65
    :goto_65
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_76

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :cond_76
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    goto :goto_0

    :sswitch_7f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    packed-switch v0, :pswitch_data_1ac

    goto/16 :goto_0

    :pswitch_88
    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    goto/16 :goto_0

    :sswitch_8c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    goto/16 :goto_0

    :sswitch_94
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    goto/16 :goto_0

    :sswitch_9c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v0, :cond_a7

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    :cond_a7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    goto :goto_fd

    :sswitch_aa
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFu()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    goto/16 :goto_0

    :sswitch_b2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_ba
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    goto/16 :goto_0

    :sswitch_c2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    goto/16 :goto_0

    :sswitch_ca
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    goto/16 :goto_0

    :sswitch_d2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    goto/16 :goto_0

    :sswitch_da
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v0, :cond_e5

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    :cond_e5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    goto :goto_fd

    :sswitch_e8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    goto/16 :goto_0

    :sswitch_f0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v0, :cond_fb

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    :cond_fb
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    :goto_fd
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    goto/16 :goto_0

    :sswitch_102
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    goto/16 :goto_0

    :sswitch_10a
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    if-nez v2, :cond_116

    move v2, v1

    goto :goto_117

    :cond_116
    array-length v2, v2

    :goto_117
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzsi$zze;

    if-eqz v2, :cond_121

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_121
    :goto_121
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_138

    new-instance v1, Lcom/google/android/gms/internal/zzsi$zze;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzsi$zze;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_121

    :cond_138
    new-instance v1, Lcom/google/android/gms/internal/zzsi$zze;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzsi$zze;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    goto/16 :goto_0

    :sswitch_148
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_150
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    goto/16 :goto_0

    :sswitch_158
    return-object p0

    nop

    :sswitch_data_15a
    .sparse-switch
        0x0 -> :sswitch_158
        0x8 -> :sswitch_150
        0x12 -> :sswitch_148
        0x1a -> :sswitch_10a
        0x32 -> :sswitch_102
        0x3a -> :sswitch_f0
        0x42 -> :sswitch_e8
        0x4a -> :sswitch_da
        0x50 -> :sswitch_d2
        0x58 -> :sswitch_ca
        0x60 -> :sswitch_c2
        0x6a -> :sswitch_ba
        0x72 -> :sswitch_b2
        0x78 -> :sswitch_aa
        0x82 -> :sswitch_9c
        0x88 -> :sswitch_94
        0x92 -> :sswitch_8c
        0x98 -> :sswitch_7f
        0xa0 -> :sswitch_4e
        0xa2 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_1ac
    .packed-switch 0x0
        :pswitch_88
        :pswitch_88
        :pswitch_88
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    array-length v0, v0

    if-lez v0, :cond_35

    move v0, v1

    :goto_25
    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v5, v4

    if-ge v0, v5, :cond_35

    aget-object v4, v4, v0

    if-eqz v4, :cond_32

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    sget-object v4, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_45

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-eqz v0, :cond_4d

    const/4 v4, 0x7

    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    sget-object v4, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5e

    const/16 v0, 0x8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_5e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-eqz v0, :cond_67

    const/16 v4, 0x9

    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_67
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v0, :cond_70

    const/16 v4, 0xa

    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/internal/zzrx;->zzb(IZ)V

    :cond_70
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-eqz v0, :cond_79

    const/16 v4, 0xb

    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_79
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-eqz v0, :cond_82

    const/16 v4, 0xc

    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_82
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    sget-object v4, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_93

    const/16 v0, 0xd

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_93
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    const/16 v0, 0xe

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_a4
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    const-wide/32 v6, 0x2bf20

    cmp-long v0, v4, v6

    if-eqz v0, :cond_b2

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzrx;->zzc(IJ)V

    :cond_b2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-eqz v0, :cond_bb

    const/16 v4, 0x10

    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_bb
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_c6

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    :cond_c6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_d7

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_d7
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-eqz v0, :cond_e0

    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_e0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-eqz v0, :cond_f6

    array-length v0, v0

    if-lez v0, :cond_f6

    :goto_e7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v2, v0

    if-ge v1, v2, :cond_f6

    const/16 v2, 0x14

    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e7

    :cond_f6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$zzd;->zzJ(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzd;

    move-result-object p1

    return-object p1
.end method
