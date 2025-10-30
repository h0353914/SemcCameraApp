.class final Lfs;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p0, Lde;

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lde;->b(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(BBBB[CI)V
    .registers 8

    .line 3
    invoke-static {p1}, Lfs;->d(B)Z

    move-result v0

    if-nez v0, :cond_47

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_47

    .line 4
    invoke-static {p2}, Lfs;->d(B)Z

    move-result v0

    if-nez v0, :cond_47

    .line 5
    invoke-static {p3}, Lfs;->d(B)Z

    move-result v0

    if-nez v0, :cond_47

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x12

    .line 7
    invoke-static {p1}, Lfs;->e(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    .line 8
    invoke-static {p2}, Lfs;->e(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    .line 9
    invoke-static {p3}, Lfs;->e(B)I

    move-result p1

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xa

    const p2, 0xd7c0

    add-int/2addr p1, p2

    int-to-char p1, p1

    .line 10
    aput-char p1, p4, p5

    add-int/lit8 p5, p5, 0x1

    and-int/lit16 p0, p0, 0x3ff

    const p1, 0xdc00

    add-int/2addr p0, p1

    int-to-char p0, p0

    .line 11
    aput-char p0, p4, p5

    return-void

    .line 6
    :cond_47
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static a(BBB[CI)V
    .registers 7

    .line 13
    invoke-static {p1}, Lfs;->d(B)Z

    move-result v0

    if-nez v0, :cond_2f

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_e

    if-lt p1, v1, :cond_2f

    :cond_e
    const/16 v0, -0x13

    if-eq p0, v0, :cond_13

    goto :goto_15

    :cond_13
    if-ge p1, v1, :cond_2f

    .line 14
    :goto_15
    invoke-static {p2}, Lfs;->d(B)Z

    move-result v0

    if-nez v0, :cond_2f

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    .line 15
    invoke-static {p1}, Lfs;->e(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    invoke-static {p2}, Lfs;->e(B)I

    move-result p1

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p3, p4

    return-void

    .line 16
    :cond_2f
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static a(BB[CI)V
    .registers 5

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_17

    .line 17
    invoke-static {p1}, Lfs;->d(B)Z

    move-result v0

    if-nez v0, :cond_17

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    .line 19
    invoke-static {p1}, Lfs;->e(B)I

    move-result p1

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p2, p3

    return-void

    .line 18
    :cond_17
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static a(B[CI)V
    .registers 3

    int-to-char p0, p0

    .line 12
    aput-char p0, p1, p2

    return-void
.end method

.method public static a(B)Z
    .registers 1

    if-ltz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static b(B)Z
    .registers 2

    const/16 v0, -0x20

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static c(B)Z
    .registers 2

    const/16 v0, -0x10

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static d(B)Z
    .registers 2

    const/16 v0, -0x41

    if-le p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static e(B)I
    .registers 1

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method
