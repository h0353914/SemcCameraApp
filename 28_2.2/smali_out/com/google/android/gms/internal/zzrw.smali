.class public final Lcom/google/android/gms/internal/zzrw;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private zzbia:I

.field private zzbib:I

.field private zzbic:I

.field private zzbid:I

.field private zzbie:I

.field private zzbif:I

.field private zzbig:I

.field private zzbih:I

.field private zzbii:I


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbif:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbih:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbii:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrw;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/zzrw;->zzbia:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/zzrw;->zzbib:I

    iput p2, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    return-void
.end method

.method public static zzB([B)Lcom/google/android/gms/internal/zzrw;
    .registers 3

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/zzrw;->zza([BII)Lcom/google/android/gms/internal/zzrw;

    move-result-object p0

    return-object p0
.end method

.method private zzFz()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbib:I

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbic:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbib:I

    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbib:I

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbif:I

    if-le v0, v1, :cond_1a

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbif:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbic:I

    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbib:I

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbic:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbib:I

    return-void

    :cond_1a
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbic:I

    return-void
.end method

.method public static zzX(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zza([BII)Lcom/google/android/gms/internal/zzrw;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzrw;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzrw;-><init>([BII)V

    return-object v0
.end method

.method public static zzlB(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public getPosition()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    iget p0, p0, Lcom/google/android/gms/internal/zzrw;->zzbia:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public readBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbib:I

    iget v2, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1d

    if-lez v0, :cond_1d

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrw;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    return-object v1

    :cond_1d
    if-nez v0, :cond_22

    sget-object p0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    return-object p0

    :cond_22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrw;->zzlF(I)[B

    move-result-object p0

    return-object p0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFy()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFx()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbib:I

    iget v2, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    if-lez v0, :cond_1e

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrw;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    return-object v1

    :cond_1e
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrw;->zzlF(I)[B

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public zzFA()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbif:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 p0, -0x1

    return p0

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    iget p0, p0, Lcom/google/android/gms/internal/zzrw;->zzbif:I

    sub-int/2addr p0, v0

    return p0
.end method

.method public zzFB()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    iget p0, p0, Lcom/google/android/gms/internal/zzrw;->zzbib:I

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public zzFC()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbib:I

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFJ()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    aget-byte p0, v0, v1

    return p0
.end method

.method public zzFo()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFB()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbie:I

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbie:I

    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbie:I

    if-nez v0, :cond_19

    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFM()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0

    :cond_19
    iget p0, p0, Lcom/google/android/gms/internal/zzrw;->zzbie:I

    return p0
.end method

.method public zzFp()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrw;->zzlA(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public zzFq()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFw()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzFr()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result p0

    return p0
.end method

.method public zzFs()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public zzFt()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrw;->zzlB(I)I

    move-result p0

    return p0
.end method

.method public zzFu()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFw()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrw;->zzX(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzFv()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v0

    if-ltz v0, :cond_7

    return v0

    :cond_7
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v1

    if-ltz v1, :cond_13

    shl-int/lit8 p0, v1, 0x7

    :goto_11
    or-int/2addr p0, v0

    return p0

    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v1

    if-ltz v1, :cond_21

    shl-int/lit8 p0, v1, 0xe

    goto :goto_11

    :cond_21
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v1

    if-ltz v1, :cond_2f

    shl-int/lit8 p0, v1, 0x15

    goto :goto_11

    :cond_2f
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_50

    const/4 v1, 0x0

    :goto_3e
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v2

    if-ltz v2, :cond_48

    return v0

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_4b
    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFL()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0

    :cond_50
    move p0, v0

    return p0
.end method

.method public zzFw()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v0, v3, :cond_18

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v1

    :cond_15
    add-int/lit8 v0, v0, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFL()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0
.end method

.method public zzFx()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result p0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public zzFy()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFC()B

    move-result p0

    int-to-long v7, v0

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    int-to-long v0, v1

    and-long/2addr v0, v9

    const/16 v11, 0x8

    shl-long/2addr v0, v11

    or-long/2addr v0, v7

    int-to-long v7, v2

    and-long/2addr v7, v9

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v0, v7

    int-to-long v2, v3

    and-long/2addr v2, v9

    const/16 v7, 0x18

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v9

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v9

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v9

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p0

    and-long/2addr v2, v9

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbig:I

    iget v2, p0, Lcom/google/android/gms/internal/zzrw;->zzbih:I

    if-lt v1, v2, :cond_f

    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFP()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0

    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrw;->zzlC(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbig:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbig:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzse;->zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrw;->zzlz(I)V

    iget p1, p0, Lcom/google/android/gms/internal/zzrw;->zzbig:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzrw;->zzbig:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrw;->zzlD(I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzse;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbig:I

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbih:I

    if-lt v0, v1, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFP()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0

    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbig:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbig:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzse;->zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;

    const/4 p1, 0x4

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzsh;->zzD(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrw;->zzlz(I)V

    iget p1, p0, Lcom/google/android/gms/internal/zzrw;->zzbig:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzrw;->zzbig:I

    return-void
.end method

.method public zzlA(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzsh;->zzlU(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_34

    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFO()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFx()I

    return v1

    :pswitch_11
    const/4 p0, 0x0

    return p0

    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFp()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzsh;->zzlV(I)I

    move-result p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzD(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrw;->zzlz(I)V

    return v1

    :pswitch_23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrw;->zzlG(I)V

    return v1

    :pswitch_2b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFy()J

    return v1

    :pswitch_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    return v1

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2b
        :pswitch_23
        :pswitch_13
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method

.method public zzlC(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzsd;
        }
    .end annotation

    if-gez p1, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFK()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbif:I

    if-le p1, v0, :cond_13

    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFJ()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0

    :cond_13
    iput p1, p0, Lcom/google/android/gms/internal/zzrw;->zzbif:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrw;->zzFz()V

    return v0
.end method

.method public zzlD(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzrw;->zzbif:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrw;->zzFz()V

    return-void
.end method

.method public zzlE(I)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbia:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    iget p0, p0, Lcom/google/android/gms/internal/zzrw;->zzbia:I

    sub-int/2addr p1, p0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    if-gez p1, :cond_44

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbia:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    return-void
.end method

.method public zzlF(I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFK()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbif:I

    if-le v0, v1, :cond_1b

    iget p1, p0, Lcom/google/android/gms/internal/zzrw;->zzbif:I

    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrw;->zzlG(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFJ()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbib:I

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_32

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrw;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    return-object v0

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFJ()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0
.end method

.method public zzlG(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFK()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbif:I

    if-le v0, v1, :cond_1b

    iget p1, p0, Lcom/google/android/gms/internal/zzrw;->zzbif:I

    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrw;->zzlG(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFJ()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbib:I

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_28

    iget v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzrw;->zzbid:I

    return-void

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFJ()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0
.end method

.method public zzlz(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzsd;
        }
    .end annotation

    iget p0, p0, Lcom/google/android/gms/internal/zzrw;->zzbie:I

    if-eq p0, p1, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/zzsd;->zzFN()Lcom/google/android/gms/internal/zzsd;

    move-result-object p0

    throw p0

    :cond_9
    return-void
.end method

.method public zzx(II)[B
    .registers 5

    if-nez p2, :cond_5

    sget-object p0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    return-object p0

    :cond_5
    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/zzrw;->zzbia:I

    add-int/2addr v1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzrw;->buffer:[B

    const/4 p1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
