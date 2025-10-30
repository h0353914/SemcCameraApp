.class public final Lcom/google/android/gms/internal/zzsc;
.super Ljava/lang/Object;


# static fields
.field public static final zzbiu:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzsc;->zzbiu:Ljava/lang/Object;

    return-void
.end method

.method public static equals([F[F)Z
    .registers 3

    if-eqz p0, :cond_b

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0

    :cond_b
    :goto_b
    if-eqz p1, :cond_13

    array-length p0, p1

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static equals([I[I)Z
    .registers 3

    if-eqz p0, :cond_b

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    :cond_b
    :goto_b
    if-eqz p1, :cond_13

    array-length p0, p1

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static equals([J[J)Z
    .registers 3

    if-eqz p0, :cond_b

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    :cond_b
    :goto_b
    if-eqz p1, :cond_13

    array-length p0, p1

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    array-length v1, p0

    :goto_6
    if-nez p1, :cond_a

    move v2, v0

    goto :goto_b

    :cond_a
    array-length v2, p1

    :goto_b
    move v3, v0

    move v4, v3

    :goto_d
    if-ge v3, v1, :cond_16

    aget-object v5, p0, v3

    if-nez v5, :cond_16

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_16
    :goto_16
    if-ge v4, v2, :cond_1f

    aget-object v5, p1, v4

    if-nez v5, :cond_1f

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_1f
    const/4 v5, 0x1

    if-lt v3, v1, :cond_24

    move v6, v5

    goto :goto_25

    :cond_24
    move v6, v0

    :goto_25
    if-lt v4, v2, :cond_29

    move v7, v5

    goto :goto_2a

    :cond_29
    move v7, v0

    :goto_2a
    if-eqz v6, :cond_2f

    if-eqz v7, :cond_2f

    return v5

    :cond_2f
    if-eq v6, v7, :cond_32

    return v0

    :cond_32
    aget-object v5, p0, v3

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    return v0

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_d
.end method

.method public static hashCode([F)I
    .registers 2

    if-eqz p0, :cond_b

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode([I)I
    .registers 2

    if-eqz p0, :cond_b

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode([J)I
    .registers 2

    if-eqz p0, :cond_b

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result p0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    array-length v1, p0

    :goto_6
    move v2, v0

    :goto_7
    if-ge v0, v1, :cond_19

    aget-object v3, p0, v0

    if-eqz v3, :cond_16

    const/16 v4, 0x1f

    mul-int/2addr v4, v2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v4, v2

    move v2, v4

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_19
    return v2
.end method

.method public static zza([[B)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    array-length v1, p0

    :goto_6
    move v2, v0

    :goto_7
    if-ge v0, v1, :cond_19

    aget-object v3, p0, v0

    if-eqz v3, :cond_16

    const/16 v4, 0x1f

    mul-int/2addr v4, v2

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v4, v2

    move v2, v4

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_19
    return v2
.end method

.method public static zza(Lcom/google/android/gms/internal/zzry;Lcom/google/android/gms/internal/zzry;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa;->zzFH()Lcom/google/android/gms/internal/zzsa;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gms/internal/zzry;->zzbik:Lcom/google/android/gms/internal/zzsa;

    :cond_c
    return-void
.end method

.method public static zza([[B[[B)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    array-length v1, p0

    :goto_6
    if-nez p1, :cond_a

    move v2, v0

    goto :goto_b

    :cond_a
    array-length v2, p1

    :goto_b
    move v3, v0

    move v4, v3

    :goto_d
    if-ge v3, v1, :cond_16

    aget-object v5, p0, v3

    if-nez v5, :cond_16

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_16
    :goto_16
    if-ge v4, v2, :cond_1f

    aget-object v5, p1, v4

    if-nez v5, :cond_1f

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_1f
    const/4 v5, 0x1

    if-lt v3, v1, :cond_24

    move v6, v5

    goto :goto_25

    :cond_24
    move v6, v0

    :goto_25
    if-lt v4, v2, :cond_29

    move v7, v5

    goto :goto_2a

    :cond_29
    move v7, v0

    :goto_2a
    if-eqz v6, :cond_2f

    if-eqz v7, :cond_2f

    return v5

    :cond_2f
    if-eq v6, v7, :cond_32

    return v0

    :cond_32
    aget-object v5, p0, v3

    aget-object v6, p1, v4

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_3d

    return v0

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_d
.end method
