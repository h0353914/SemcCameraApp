.class public Lcom/google/android/gms/internal/zzmi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    sget-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    sget-object p1, Lcom/google/android/gms/internal/zzmf;->EMPTY_INTS:[I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    sget-object p1, Lcom/google/android/gms/internal/zzmf;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    goto :goto_11

    :cond_e
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzmi;->zzbO(I)V

    :goto_11
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    return-void
.end method

.method private static zza([I[Ljava/lang/Object;I)V
    .registers 10

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2e

    const-class v0, Lcom/google/android/gms/internal/zzme;

    monitor-enter v0

    :try_start_e
    sget v6, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCacheSize:I

    if-ge v6, v4, :cond_29

    sget-object v4, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    aput-object p0, p1, v5

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v5

    :goto_1b
    if-lt p0, v2, :cond_22

    aput-object v1, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1b

    :cond_22
    sput-object p1, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCache:[Ljava/lang/Object;

    sget p0, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCacheSize:I

    add-int/2addr p0, v5

    sput p0, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCacheSize:I

    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    throw p0

    :cond_2e
    array-length v0, p0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_55

    const-class v0, Lcom/google/android/gms/internal/zzme;

    monitor-enter v0

    :try_start_35
    sget v6, Lcom/google/android/gms/internal/zzmi;->mBaseCacheSize:I

    if-ge v6, v4, :cond_50

    sget-object v4, Lcom/google/android/gms/internal/zzmi;->mBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    aput-object p0, p1, v5

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v5

    :goto_42
    if-lt p0, v2, :cond_49

    aput-object v1, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_42

    :cond_49
    sput-object p1, Lcom/google/android/gms/internal/zzmi;->mBaseCache:[Ljava/lang/Object;

    sget p0, Lcom/google/android/gms/internal/zzmi;->mBaseCacheSize:I

    add-int/2addr p0, v5

    sput p0, Lcom/google/android/gms/internal/zzmi;->mBaseCacheSize:I

    :cond_50
    monitor-exit v0

    return-void

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_35 .. :try_end_54} :catchall_52

    throw p0

    :cond_55
    return-void
.end method

.method private zzbO(I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_2e

    const-class v3, Lcom/google/android/gms/internal/zzme;

    monitor-enter v3

    :try_start_a
    sget-object v4, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_29

    sget-object p1, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCache:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCache:[Ljava/lang/Object;

    aget-object v4, p1, v2

    check-cast v4, [I

    iput-object v4, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    aput-object v0, p1, v2

    aput-object v0, p1, v1

    sget p0, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCacheSize:I

    sub-int/2addr p0, v2

    sput p0, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCacheSize:I

    monitor-exit v3

    return-void

    :cond_29
    monitor-exit v3

    goto :goto_58

    :catchall_2b
    move-exception p0

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2b

    throw p0

    :cond_2e
    const/4 v3, 0x4

    if-ne p1, v3, :cond_58

    const-class v3, Lcom/google/android/gms/internal/zzme;

    monitor-enter v3

    :try_start_34
    sget-object v4, Lcom/google/android/gms/internal/zzmi;->mBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_53

    sget-object p1, Lcom/google/android/gms/internal/zzmi;->mBaseCache:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lcom/google/android/gms/internal/zzmi;->mBaseCache:[Ljava/lang/Object;

    aget-object v4, p1, v2

    check-cast v4, [I

    iput-object v4, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    aput-object v0, p1, v2

    aput-object v0, p1, v1

    sget p0, Lcom/google/android/gms/internal/zzmi;->mBaseCacheSize:I

    sub-int/2addr p0, v2

    sput p0, Lcom/google/android/gms/internal/zzmi;->mBaseCacheSize:I

    monitor-exit v3

    return-void

    :cond_53
    monitor-exit v3

    goto :goto_58

    :catchall_55
    move-exception p0

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_34 .. :try_end_57} :catchall_55

    throw p0

    :cond_58
    :goto_58
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    shl-int/2addr p1, v2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzmi;->zza([I[Ljava/lang/Object;I)V

    sget-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    sget-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    :cond_18
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi;->indexOfNull()I

    move-result p0

    if-ltz p0, :cond_17

    :goto_a
    move v0, v1

    return v0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/zzmi;->indexOf(Ljava/lang/Object;I)I

    move-result p0

    if-ltz p0, :cond_17

    goto :goto_a

    :cond_17
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmi;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public ensureCapacity(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    array-length v0, v0

    if-ge v0, p1, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzmi;->zzbO(I)V

    iget p1, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-lez p1, :cond_21

    iget-object p1, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_21
    iget p0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/zzmi;->zza([I[Ljava/lang/Object;I)V

    :cond_26
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    move v1, v2

    :goto_17
    :try_start_17
    iget v3, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-ge v1, v3, :cond_3c

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzmi;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzmi;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_32

    if-nez v5, :cond_31

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    :cond_31
    return v2

    :cond_32
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_36
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_36} :catch_3d
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_36} :catch_3d

    if-nez v3, :cond_39

    return v2

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_3c
    return v0

    :catch_3d
    :cond_3d
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi;->indexOfNull()I

    move-result p1

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzmi;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    :goto_f
    if-ltz p1, :cond_1a

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    move v5, v2

    :goto_b
    if-ge v2, p0, :cond_20

    aget-object v6, v1, v4

    aget v7, v0, v2

    if-nez v6, :cond_15

    move v6, v3

    goto :goto_19

    :cond_15
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_19
    xor-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_b

    :cond_20
    return v5
.end method

.method indexOf(Ljava/lang/Object;I)I
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    invoke-static {v1, v0, p2}, Lcom/google/android/gms/internal/zzmf;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_f

    return v1

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v2, v1, 0x1

    :goto_1e
    if-ge v2, v0, :cond_36

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_36

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    return v2

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_36
    add-int/lit8 v1, v1, -0x1

    :goto_38
    if-ltz v1, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    return v1

    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    :cond_50
    not-int p0, v2

    return p0
.end method

.method indexOfNull()I
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzmf;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_10

    return v1

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v2, v1, 0x1

    :goto_1b
    if-ge v2, v0, :cond_2f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_2f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2c

    return v2

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    :goto_31
    if-ltz v1, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    aget v0, v0, v1

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_42

    return v1

    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    :cond_45
    not-int p0, v2

    return p0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez p1, :cond_16

    move p1, v1

    :goto_a
    if-ge p1, v0, :cond_27

    aget-object v2, p0, p1

    if-nez v2, :cond_13

    shr-int/lit8 p0, p1, 0x1

    return p0

    :cond_13
    add-int/lit8 p1, p1, 0x2

    goto :goto_a

    :cond_16
    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_27

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    shr-int/lit8 p0, v2, 0x1

    return p0

    :cond_24
    add-int/lit8 v2, v2, 0x2

    goto :goto_17

    :cond_27
    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-gtz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi;->indexOfNull()I

    move-result v1

    move v2, v0

    goto :goto_14

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/zzmi;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_14
    if-ltz v1, :cond_23

    shl-int/lit8 p1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    aput-object p2, p0, p1

    return-object v0

    :cond_23
    not-int v1, v1

    iget v3, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    array-length v4, v4

    if-lt v3, v4, :cond_5c

    iget v3, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-lt v3, v5, :cond_3a

    iget v3, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    iget v4, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v3

    goto :goto_3f

    :cond_3a
    iget v3, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-lt v3, v4, :cond_3f

    move v4, v5

    :cond_3f
    :goto_3f
    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget-object v5, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzmi;->zzbO(I)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    array-length v4, v4

    if-lez v4, :cond_57

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    array-length v6, v3

    invoke-static {v3, v0, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v0, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_57
    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    invoke-static {v3, v5, v0}, Lcom/google/android/gms/internal/zzmi;->zza([I[Ljava/lang/Object;I)V

    :cond_5c
    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-ge v1, v0, :cond_7c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    sub-int/2addr v5, v1

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    iget-object v5, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v4, 0x1

    iget v6, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    sub-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v0, v3, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, v1, 0x1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    aput-object p2, p1, v1

    iget p1, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi;->indexOfNull()I

    move-result p1

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzmi;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    :goto_f
    if-ltz p1, :cond_16

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmi;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v0, v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_22

    iget-object p1, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzmi;->zza([I[Ljava/lang/Object;I)V

    sget-object p1, Lcom/google/android/gms/internal/zzmf;->EMPTY_INTS:[I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    sget-object p1, Lcom/google/android/gms/internal/zzmf;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iput v3, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    return-object v0

    :cond_22
    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    array-length v2, v2

    const/16 v5, 0x8

    if-le v2, v5, :cond_6e

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    iget-object v6, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v2, v6, :cond_6e

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-le v2, v5, :cond_3c

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    iget v5, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    shr-int/2addr v5, v4

    add-int/2addr v5, v2

    :cond_3c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget-object v6, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/zzmi;->zzbO(I)V

    iget v5, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-lez p1, :cond_54

    iget-object v5, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    invoke-static {v2, v3, v5, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    invoke-static {v6, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_54
    iget v3, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-ge p1, v3, :cond_a0

    add-int/lit8 v3, p1, 0x1

    iget-object v5, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget v7, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v2, v3, v5, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v2, v3, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    sub-int/2addr p0, p1

    shl-int/2addr p0, v4

    invoke-static {v6, v2, v3, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_6e
    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-ge p1, v2, :cond_90

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    add-int/lit8 v3, p1, 0x1

    iget-object v5, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget v6, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v3, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/2addr v3, v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iget v6, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    sub-int/2addr v6, p1

    shl-int/lit8 p1, v6, 0x1

    invoke-static {v2, v3, v5, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_90
    iget-object p1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    shl-int/2addr v1, v4

    const/4 v2, 0x0

    aput-object v2, p1, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    shl-int/2addr p0, v4

    add-int/2addr p0, v4

    aput-object v2, p1, p0

    :cond_a0
    return-object v0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    aput-object p2, p0, p1

    return-object v0
.end method

.method public size()I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "{}"

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_18
    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-ge v1, v2, :cond_49

    if-lez v1, :cond_23

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzmi;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_2d
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzmi;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_41

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_46

    :cond_41
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_49
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0
.end method
