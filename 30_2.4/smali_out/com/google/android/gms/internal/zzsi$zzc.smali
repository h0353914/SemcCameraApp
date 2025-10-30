.class public final Lcom/google/android/gms/internal/zzsi$zzc;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry<",
        "Lcom/google/android/gms/internal/zzsi$zzc;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbiL:[B

.field public zzbiM:[[B

.field public zzbiN:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsi$zzc;->zzFU()Lcom/google/android/gms/internal/zzsi$zzc;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/zzsi$zzc;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/zzsi$zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->zza([[B[[B)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_3f

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3f
    :goto_3f
    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_4d

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v2

    :cond_4d
    :goto_4d
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsc;->zza([[B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    if-eqz v0, :cond_2a

    const/16 v0, 0x4cf

    goto :goto_2c

    :cond_2a
    const/16 v0, 0x4d5

    :goto_2c
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_43

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v0, 0x0

    :goto_44
    add-int/2addr v1, v0

    return v1
.end method

.method protected zzB()I
    .registers 8

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    if-eqz v1, :cond_36

    array-length v1, v1

    if-lez v1, :cond_36

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_20
    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    array-length v6, v5

    if-ge v1, v6, :cond_33

    aget-object v5, v5, v1

    if-eqz v5, :cond_30

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzrx;->zzE([B)I

    move-result v5

    add-int/2addr v3, v5

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_33
    add-int/2addr v0, v3

    mul-int/2addr v4, v2

    add-int/2addr v0, v4

    :cond_36
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    if-eqz v1, :cond_40

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzrx;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_40
    return v0
.end method

.method public zzFU()Lcom/google/android/gms/internal/zzsi$zzc;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiD:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiv:I

    return-object p0
.end method

.method public zzI(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzc;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    if-eqz v0, :cond_57

    const/16 v1, 0xa

    if-eq v0, v1, :cond_50

    const/16 v1, 0x12

    if-eq v0, v1, :cond_20

    const/16 v1, 0x18

    if-eq v0, v1, :cond_19

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsi$zzc;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    goto :goto_0

    :cond_20
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    const/4 v2, 0x0

    if-nez v1, :cond_2b

    move v1, v2

    goto :goto_2c

    :cond_2b
    array-length v1, v1

    :goto_2c
    add-int/2addr v0, v1

    new-array v0, v0, [[B

    if-eqz v1, :cond_36

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    :goto_36
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_47

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    goto :goto_0

    :cond_50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    goto :goto_0

    :cond_57
    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    sget-object v1, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    if-eqz v0, :cond_28

    array-length v0, v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    :goto_18
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_28

    aget-object v1, v1, v0

    if-eqz v1, :cond_25

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    if-eqz v0, :cond_30

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzrx;->zzb(IZ)V

    :cond_30
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$zzc;->zzI(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzc;

    move-result-object p1

    return-object p1
.end method
