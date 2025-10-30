.class public final Lcom/google/android/gms/internal/zzsi$zza;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry<",
        "Lcom/google/android/gms/internal/zzsi$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbiF:[Ljava/lang/String;

.field public zzbiG:[Ljava/lang/String;

.field public zzbiH:[I

.field public zzbiI:[J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsi$zza;->zzFS()Lcom/google/android/gms/internal/zzsi$zza;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/zzsi$zza;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/zzsi$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_4e

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4e
    :goto_4e
    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_5c

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5b

    goto :goto_5c

    :cond_5b
    move v0, v2

    :cond_5c
    :goto_5c
    return v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsc;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsc;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsc;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsc;->hashCode([J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_49

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v0

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 v0, 0x0

    :goto_4a
    add-int/2addr v1, v0

    return v1
.end method

.method protected zzB()I
    .registers 8

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    array-length v1, v1

    if-lez v1, :cond_26

    move v1, v2

    move v3, v1

    move v4, v3

    :goto_f
    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_22

    aget-object v5, v5, v1

    if-eqz v5, :cond_1f

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzrx;->zzfA(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_22
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    if-eqz v1, :cond_47

    array-length v1, v1

    if-lez v1, :cond_47

    move v1, v2

    move v3, v1

    move v4, v3

    :goto_30
    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_43

    aget-object v5, v5, v1

    if-eqz v5, :cond_40

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzrx;->zzfA(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_43
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_47
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    if-eqz v1, :cond_64

    array-length v1, v1

    if-lez v1, :cond_64

    move v1, v2

    move v3, v1

    :goto_50
    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v5, v4

    if-ge v1, v5, :cond_5f

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzrx;->zzlJ(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_5f
    add-int/2addr v0, v3

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_64
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    if-eqz v1, :cond_80

    array-length v1, v1

    if-lez v1, :cond_80

    move v1, v2

    :goto_6c
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v4, v3

    if-ge v2, v4, :cond_7b

    aget-wide v3, v3, v2

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzrx;->zzaa(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_7b
    add-int/2addr v0, v1

    array-length v1, v3

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_80
    return v0
.end method

.method public zzFS()Lcom/google/android/gms/internal/zzsi$zza;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiC:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiC:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbix:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiy:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiv:I

    return-object p0
.end method

.method public zzG(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zza;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    if-eqz v0, :cond_163

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_133

    const/16 v1, 0x12

    if-eq v0, v1, :cond_103

    const/16 v1, 0x18

    if-eq v0, v1, :cond_d3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_93

    const/16 v1, 0x20

    if-eq v0, v1, :cond_63

    const/16 v1, 0x22

    if-eq v0, v1, :cond_26

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsi$zza;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlC(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v1

    move v3, v2

    :goto_33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFA()I

    move-result v4

    if-lez v4, :cond_3f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_3f
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrw;->zzlE(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    if-nez v1, :cond_48

    move v1, v2

    goto :goto_49

    :cond_48
    array-length v1, v1

    :goto_49
    add-int/2addr v3, v1

    new-array v3, v3, [J

    if-eqz v1, :cond_53

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_53
    :goto_53
    array-length v2, v3

    if-ge v1, v2, :cond_5f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_5f
    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    goto/16 :goto_ce

    :cond_63
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    if-nez v1, :cond_6d

    move v1, v2

    goto :goto_6e

    :cond_6d
    array-length v1, v1

    :goto_6e
    add-int/2addr v0, v1

    new-array v0, v0, [J

    if-eqz v1, :cond_78

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_78
    :goto_78
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_89

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_89
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    goto/16 :goto_0

    :cond_93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlC(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v1

    move v3, v2

    :goto_a0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFA()I

    move-result v4

    if-lez v4, :cond_ac

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    :cond_ac
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrw;->zzlE(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    if-nez v1, :cond_b5

    move v1, v2

    goto :goto_b6

    :cond_b5
    array-length v1, v1

    :goto_b6
    add-int/2addr v3, v1

    new-array v3, v3, [I

    if-eqz v1, :cond_c0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c0
    :goto_c0
    array-length v2, v3

    if-ge v1, v2, :cond_cc

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    :cond_cc
    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    :goto_ce
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlD(I)V

    goto/16 :goto_0

    :cond_d3
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    if-nez v1, :cond_dd

    move v1, v2

    goto :goto_de

    :cond_dd
    array-length v1, v1

    :goto_de
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_e8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e8
    :goto_e8
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_f9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    :cond_f9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    goto/16 :goto_0

    :cond_103
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    if-nez v1, :cond_10d

    move v1, v2

    goto :goto_10e

    :cond_10d
    array-length v1, v1

    :goto_10e
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_118

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_118
    :goto_118
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_129

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    :cond_129
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_133
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    if-nez v1, :cond_13d

    move v1, v2

    goto :goto_13e

    :cond_13d
    array-length v1, v1

    :goto_13e
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_148

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_148
    :goto_148
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_159

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_148

    :cond_159
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_163
    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    array-length v0, v0

    if-lez v0, :cond_19

    move v0, v1

    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_19

    aget-object v2, v2, v0

    if-eqz v2, :cond_16

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    if-eqz v0, :cond_31

    array-length v0, v0

    if-lez v0, :cond_31

    move v0, v1

    :goto_21
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_31

    aget-object v2, v2, v0

    if-eqz v2, :cond_2e

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    if-eqz v0, :cond_47

    array-length v0, v0

    if-lez v0, :cond_47

    move v0, v1

    :goto_39
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v3, v2

    if-ge v0, v3, :cond_47

    const/4 v3, 0x3

    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_47
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    if-eqz v0, :cond_5c

    array-length v0, v0

    if-lez v0, :cond_5c

    :goto_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v2, v0

    if-ge v1, v2, :cond_5c

    const/4 v2, 0x4

    aget-wide v3, v0, v1

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_5c
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$zza;->zzG(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zza;

    move-result-object p1

    return-object p1
.end method
