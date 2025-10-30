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

    if-eqz v1, :cond_32

    return v2

    :cond_27
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-eq v1, v3, :cond_39

    return v2

    :cond_39
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-eq v1, v3, :cond_40

    return v2

    :cond_40
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eq v1, v3, :cond_47

    return v2

    :cond_47
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    return v2

    :cond_52
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v1, :cond_5b

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-eqz v1, :cond_66

    return v2

    :cond_5b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzsi$zzb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    return v2

    :cond_66
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_71

    return v2

    :cond_71
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_7c

    return v2

    :cond_7c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_87

    return v2

    :cond_87
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v1, :cond_90

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-eqz v1, :cond_9b

    return v2

    :cond_90
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzsi$zza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b

    return v2

    :cond_9b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-nez v1, :cond_a4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-eqz v1, :cond_af

    return v2

    :cond_a4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    return v2

    :cond_af
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b8

    return v2

    :cond_b8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v1, :cond_c1

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-eqz v1, :cond_cc

    return v2

    :cond_c1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzsi$zzc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cc

    return v2

    :cond_cc
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_d7

    return v2

    :cond_d7
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-eq v1, v3, :cond_de

    return v2

    :cond_de
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_e9

    return v2

    :cond_e9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_ff

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f6

    goto :goto_ff

    :cond_f6
    iget-object p0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_ff
    :goto_ff
    iget-object p0, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz p0, :cond_10d

    iget-object p0, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_10c

    return v0

    :cond_10c
    move v0, v2

    :cond_10d
    return v0
.end method

.method public hashCode()I
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    const/16 v0, 0x1f

    mul-int/2addr v1, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    move v2, v3

    goto :goto_33

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_33
    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v2, :cond_44

    const/16 v2, 0x4cf

    goto :goto_46

    :cond_44
    const/16 v2, 0x4d5

    :goto_46
    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v2, :cond_56

    move v2, v3

    goto :goto_5c

    :cond_56
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsi$zzb;->hashCode()I

    move-result v2

    :goto_5c
    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v2, :cond_7c

    move v2, v3

    goto :goto_82

    :cond_7c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsi$zza;->hashCode()I

    move-result v2

    :goto_82
    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-nez v2, :cond_8a

    move v2, v3

    goto :goto_90

    :cond_8a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_90
    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    ushr-long v6, v7, v6

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v2, :cond_a2

    move v2, v3

    goto :goto_a8

    :cond_a2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsi$zzc;->hashCode()I

    move-result v2

    :goto_a8
    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_d1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_cb

    goto :goto_d1

    :cond_cb
    iget-object p0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v3

    :cond_d1
    :goto_d1
    add-int/2addr v0, v3

    return v0
.end method

.method protected zzB()I
    .registers 11

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_14

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    const/4 v5, 0x1

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    const/4 v5, 0x0

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v1, v1

    if-lez v1, :cond_47

    move v1, v0

    move v0, v5

    :goto_32
    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v6, v6

    if-ge v0, v6, :cond_46

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    aget-object v6, v6, v0

    if-eqz v6, :cond_43

    const/4 v7, 0x3

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v6

    add-int/2addr v1, v6

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_46
    move v0, v1

    :cond_47
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    sget-object v6, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_59

    const/4 v1, 0x6

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_59
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-eqz v1, :cond_65

    const/4 v1, 0x7

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_65
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    sget-object v6, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_78

    const/16 v1, 0x8

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_78
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-eqz v1, :cond_85

    const/16 v1, 0x9

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_85
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v1, :cond_92

    const/16 v1, 0xa

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_92
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-eqz v1, :cond_9f

    const/16 v1, 0xb

    iget v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9f
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-eqz v1, :cond_ac

    const/16 v1, 0xc

    iget v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_ac
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    sget-object v6, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_bf

    const/16 v1, 0xd

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_bf
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    const/16 v1, 0xe

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d2
    iget-wide v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    const-wide/32 v8, 0x2bf20

    cmp-long v1, v6, v8

    if-eqz v1, :cond_e4

    const/16 v1, 0xf

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/zzrx;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-eqz v1, :cond_f1

    const/16 v1, 0x10

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f1
    iget-wide v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    cmp-long v1, v6, v3

    if-eqz v1, :cond_100

    const/16 v1, 0x11

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/zzrx;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_100
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_113

    const/16 v1, 0x12

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_113
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-eqz v1, :cond_120

    const/16 v1, 0x13

    iget v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_120
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-eqz v1, :cond_141

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v1, v1

    if-lez v1, :cond_141

    move v1, v5

    :goto_12a
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v3, v3

    if-ge v5, v3, :cond_13b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    aget v3, v3, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/zzrx;->zzlJ(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_12a

    :cond_13b
    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length p0, p0

    mul-int/2addr v2, p0

    add-int/2addr v0, v2

    :cond_141
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

    sparse-switch v0, :sswitch_data_160

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

    goto :goto_34

    :cond_31
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v2, v2

    :goto_34
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_3e

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3e
    :goto_3e
    array-length v1, v3

    if-ge v2, v1, :cond_4a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_4a
    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlD(I)V

    goto :goto_0

    :sswitch_50
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-nez v2, :cond_5c

    move v2, v1

    goto :goto_5f

    :cond_5c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v2, v2

    :goto_5f
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_69

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_69
    :goto_69
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_7a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_7a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    goto/16 :goto_0

    :sswitch_84
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    packed-switch v0, :pswitch_data_1b2

    goto/16 :goto_0

    :pswitch_8d
    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    goto/16 :goto_0

    :sswitch_91
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    goto/16 :goto_0

    :sswitch_99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    goto/16 :goto_0

    :sswitch_a1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v0, :cond_ac

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    :cond_ac
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    goto :goto_102

    :sswitch_af
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFu()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    goto/16 :goto_0

    :sswitch_b7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_bf
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    goto/16 :goto_0

    :sswitch_c7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    goto/16 :goto_0

    :sswitch_cf
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    goto/16 :goto_0

    :sswitch_d7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    goto/16 :goto_0

    :sswitch_df
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v0, :cond_ea

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    :cond_ea
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    goto :goto_102

    :sswitch_ed
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    goto/16 :goto_0

    :sswitch_f5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v0, :cond_100

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    :cond_100
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    :goto_102
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    goto/16 :goto_0

    :sswitch_107
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    goto/16 :goto_0

    :sswitch_10f
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    if-nez v2, :cond_11b

    move v2, v1

    goto :goto_11e

    :cond_11b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v2, v2

    :goto_11e
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzsi$zze;

    if-eqz v2, :cond_128

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_128
    :goto_128
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_13f

    new-instance v1, Lcom/google/android/gms/internal/zzsi$zze;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzsi$zze;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_128

    :cond_13f
    new-instance v1, Lcom/google/android/gms/internal/zzsi$zze;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzsi$zze;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    goto/16 :goto_0

    :sswitch_14f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_157
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    goto/16 :goto_0

    :sswitch_15f
    return-object p0

    :sswitch_data_160
    .sparse-switch
        0x0 -> :sswitch_15f
        0x8 -> :sswitch_157
        0x12 -> :sswitch_14f
        0x1a -> :sswitch_10f
        0x32 -> :sswitch_107
        0x3a -> :sswitch_f5
        0x42 -> :sswitch_ed
        0x4a -> :sswitch_df
        0x50 -> :sswitch_d7
        0x58 -> :sswitch_cf
        0x60 -> :sswitch_c7
        0x6a -> :sswitch_bf
        0x72 -> :sswitch_b7
        0x78 -> :sswitch_af
        0x82 -> :sswitch_a1
        0x88 -> :sswitch_99
        0x92 -> :sswitch_91
        0x98 -> :sswitch_84
        0xa0 -> :sswitch_50
        0xa2 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
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

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v0, v0

    if-lez v0, :cond_3b

    move v0, v1

    :goto_29
    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v4, v4

    if-ge v0, v4, :cond_3b

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    aget-object v4, v4, v0

    if-eqz v4, :cond_38

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    sget-object v4, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4b

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-eqz v0, :cond_55

    const/4 v0, 0x7

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    sget-object v4, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_66

    const/16 v0, 0x8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_66
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-eqz v0, :cond_71

    const/16 v0, 0x9

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_71
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v0, :cond_7c

    const/16 v0, 0xa

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zzb(IZ)V

    :cond_7c
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-eqz v0, :cond_87

    const/16 v0, 0xb

    iget v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_87
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-eqz v0, :cond_92

    const/16 v0, 0xc

    iget v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_92
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    sget-object v4, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_a3

    const/16 v0, 0xd

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_a3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    const/16 v0, 0xe

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_b4
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    const-wide/32 v6, 0x2bf20

    cmp-long v0, v4, v6

    if-eqz v0, :cond_c4

    const/16 v0, 0xf

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzrx;->zzc(IJ)V

    :cond_c4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-eqz v0, :cond_cf

    const/16 v0, 0x10

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_cf
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_dc

    const/16 v0, 0x11

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    :cond_dc
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_ed

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_ed
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-eqz v0, :cond_f8

    const/16 v0, 0x13

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_f8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v0, v0

    if-lez v0, :cond_112

    :goto_101
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v0, v0

    if-ge v1, v0, :cond_112

    const/16 v0, 0x14

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_101

    :cond_112
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

    move-result-object p0

    return-object p0
.end method
