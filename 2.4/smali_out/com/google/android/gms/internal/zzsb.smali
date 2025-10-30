.class Lcom/google/android/gms/internal/zzsb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private zzbir:Lcom/google/android/gms/internal/zzrz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrz<",
            "**>;"
        }
    .end annotation
.end field

.field private zzbis:Ljava/lang/Object;

.field private zzbit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    return-void
.end method

.method private toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsb;->zzB()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrx;->zzC([B)Lcom/google/android/gms/internal/zzrx;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzsb;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-object v0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsb;->zzFI()Lcom/google/android/gms/internal/zzsb;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/zzsb;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/zzsb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    if-eqz v0, :cond_93

    iget-object v0, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    if-eq v0, v2, :cond_1b

    return v1

    :cond_1b
    iget-object v0, v0, Lcom/google/android/gms/internal/zzrz;->zzbil:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_3d

    check-cast v0, [B

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_3d
    instance-of v1, v0, [I

    if-eqz v1, :cond_4c

    check-cast v0, [I

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    :cond_4c
    instance-of v1, v0, [J

    if-eqz v1, :cond_5b

    check-cast v0, [J

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    :cond_5b
    instance-of v1, v0, [F

    if-eqz v1, :cond_6a

    check-cast v0, [F

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    :cond_6a
    instance-of v1, v0, [D

    if-eqz v1, :cond_79

    check-cast v0, [D

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    return p1

    :cond_79
    instance-of v1, v0, [Z

    if-eqz v1, :cond_88

    check-cast v0, [Z

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    return p1

    :cond_88
    check-cast v0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_93
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    if-eqz v0, :cond_a0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    if-eqz v1, :cond_a0

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a0
    :try_start_a0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsb;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzsb;->toByteArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_ac} :catch_ad

    return p1

    :catch_ad
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x20f

    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsb;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_c

    add-int/2addr v0, v1

    return v0

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method zzB()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzrz;->zzX(Ljava/lang/Object;)I

    move-result v0

    goto :goto_25

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzsg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsg;->zzB()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_12

    :cond_24
    move v0, v1

    :goto_25
    return v0
.end method

.method public final zzFI()Lcom/google/android/gms/internal/zzsb;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzsb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsb;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    goto :goto_18

    :cond_11
    iget-object v1, v0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_18
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    if-nez v1, :cond_1e

    goto/16 :goto_d8

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/zzse;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/zzse;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzse;->zzFG()Lcom/google/android/gms/internal/zzse;

    move-result-object v1

    :goto_2c
    iput-object v1, v0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    goto/16 :goto_d8

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2c

    :cond_41
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast v1, [[B

    check-cast v1, [[B

    array-length v3, v1

    new-array v3, v3, [[B

    iput-object v3, v0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    :goto_53
    array-length v4, v1

    if-ge v2, v4, :cond_d8

    aget-object v4, v1, v2

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_63
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast v1, [Z

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2c

    :cond_74
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2c

    :cond_85
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2c

    :cond_96
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast v1, [F

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2c

    :cond_a7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_b9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast v1, [D

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2c

    :cond_b9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/google/android/gms/internal/zzse;

    if-eqz v1, :cond_d8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/zzse;

    check-cast v1, [Lcom/google/android/gms/internal/zzse;

    array-length v3, v1

    new-array v3, v3, [Lcom/google/android/gms/internal/zzse;

    iput-object v3, v0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    :goto_ca
    array-length v4, v1

    if-ge v2, v4, :cond_d8

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzse;->zzFG()Lcom/google/android/gms/internal/zzse;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_d5
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_d5} :catch_d9

    add-int/lit8 v2, v2, 0x1

    goto :goto_ca

    :cond_d8
    :goto_d8
    return-object v0

    :catch_d9
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method zza(Lcom/google/android/gms/internal/zzrx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/zzrz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzrx;)V

    goto :goto_20

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzsg;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzsg;->zza(Lcom/google/android/gms/internal/zzrx;)V

    goto :goto_10

    :cond_20
    :goto_20
    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzsg;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzrz;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzrz<",
            "*TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    if-ne v0, p1, :cond_9

    goto :goto_1e

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Tried to getExtension with a differernt Extension."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    iput-object p1, p0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrz;->zzE(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    :goto_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    return-object p1
.end method
