.class final Lfu;
.super Lft;
.source "PG"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lft;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;[BII)I
    .registers 12

    .line 21
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p4, p3

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x80

    if-ge v1, v0, :cond_1a

    add-int v3, v1, p3

    if-ge v3, p4, :cond_1a

    .line 22
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_1a

    int-to-byte v2, v4

    .line 23
    aput-byte v2, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    if-eq v1, v0, :cond_100

    add-int/2addr p3, v1

    :goto_1d
    if-ge v1, v0, :cond_ff

    .line 24
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_2f

    if-ge p3, p4, :cond_2f

    add-int/lit8 v4, p3, 0x1

    int-to-byte v3, v3

    .line 36
    aput-byte v3, p2, p3

    move p3, v4

    goto/16 :goto_b5

    :cond_2f
    const/16 v4, 0x800

    if-ge v3, v4, :cond_49

    add-int/lit8 v4, p4, -0x2

    if-gt p3, v4, :cond_49

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    .line 34
    aput-byte v5, p2, p3

    add-int/lit8 p3, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 35
    aput-byte v3, p2, v4

    goto :goto_b5

    :cond_49
    const v4, 0xdfff

    const v5, 0xd800

    if-ge v3, v5, :cond_52

    goto :goto_54

    :cond_52
    if-le v3, v4, :cond_75

    :goto_54
    add-int/lit8 v6, p4, -0x3

    if-gt p3, v6, :cond_75

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    .line 31
    aput-byte v5, p2, p3

    add-int/lit8 p3, v4, 0x1

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 32
    aput-byte v5, p2, v4

    add-int/lit8 v4, p3, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 33
    aput-byte v3, p2, p3

    move p3, v4

    goto :goto_b5

    :cond_75
    add-int/lit8 v6, p4, -0x4

    if-gt p3, v6, :cond_c2

    add-int/lit8 v4, v1, 0x1

    .line 25
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_ba

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 26
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 27
    aput-byte v5, p2, p3

    add-int/lit8 p3, v3, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 28
    aput-byte v5, p2, v3

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 29
    aput-byte v5, p2, p3

    add-int/lit8 p3, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 30
    aput-byte v1, p2, v3

    move v1, v4

    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1d

    :cond_b9
    move v1, v4

    .line 39
    :cond_ba
    new-instance p1, Lfv;

    add-int/lit8 v1, v1, -0x1

    .line 37
    invoke-direct {p1, v1, v0}, Lfv;-><init>(II)V

    throw p1

    :cond_c2
    if-lt v3, v5, :cond_de

    if-gt v3, v4, :cond_de

    add-int/lit8 p2, v1, 0x1

    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_d8

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_de

    :cond_d8
    new-instance p1, Lfv;

    .line 40
    invoke-direct {p1, v1, v0}, Lfv;-><init>(II)V

    throw p1

    .line 30
    :cond_de
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p4, 0x25

    .line 39
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Failed writing "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p4, " at index "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ff
    return p3

    :cond_100
    add-int/2addr p3, v0

    return p3
.end method

.method public final b([BII)Ljava/lang/String;
    .registers 14

    .line 2
    array-length v0, p1

    or-int v1, p2, p3

    sub-int v2, v0, p2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    const/4 v2, 0x0

    if-ltz v1, :cond_a8

    add-int v0, p2, p3

    .line 4
    new-array p3, p3, [C

    move v1, v2

    :goto_f
    if-ge p2, v0, :cond_22

    .line 5
    aget-byte v3, p1, p2

    .line 6
    invoke-static {v3}, Lfs;->a(B)Z

    move-result v4

    if-eqz v4, :cond_22

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, p3, v1}, Lfs;->a(B[CI)V

    move v1, v4

    goto :goto_f

    :cond_22
    :goto_22
    if-ge p2, v0, :cond_a2

    add-int/lit8 v3, p2, 0x1

    .line 7
    aget-byte p2, p1, p2

    .line 8
    invoke-static {p2}, Lfs;->a(B)Z

    move-result v4

    if-eqz v4, :cond_48

    add-int/lit8 v4, v1, 0x1

    invoke-static {p2, p3, v1}, Lfs;->a(B[CI)V

    move p2, v3

    move v1, v4

    :goto_35
    if-ge p2, v0, :cond_22

    .line 9
    aget-byte v3, p1, p2

    .line 10
    invoke-static {v3}, Lfs;->a(B)Z

    move-result v4

    if-eqz v4, :cond_22

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, p3, v1}, Lfs;->a(B[CI)V

    move v1, v4

    goto :goto_35

    :cond_48
    invoke-static {p2}, Lfs;->b(B)Z

    move-result v4

    if-nez v4, :cond_8f

    invoke-static {p2}, Lfs;->c(B)Z

    move-result v4

    if-nez v4, :cond_76

    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_71

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v9, v5, 0x1

    .line 13
    aget-byte v6, p1, v3

    aget-byte v7, p1, v4

    aget-byte v8, p1, v5

    move v3, p2

    move v4, v6

    move v5, v7

    move v6, v8

    move-object v7, p3

    move v8, v1

    .line 14
    invoke-static/range {v3 .. v8}, Lfs;->a(BBBB[CI)V

    add-int/lit8 v1, v1, 0x2

    move p2, v9

    goto :goto_22

    .line 18
    :cond_71
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p1

    throw p1

    :cond_76
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_8a

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v1, 0x1

    .line 11
    aget-byte v3, p1, v3

    aget-byte v4, p1, v4

    .line 12
    invoke-static {p2, v3, v4, p3, v1}, Lfs;->a(BBB[CI)V

    move p2, v5

    move v1, v6

    goto :goto_22

    .line 17
    :cond_8a
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p1

    throw p1

    :cond_8f
    if-ge v3, v0, :cond_9d

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v1, 0x1

    .line 15
    aget-byte v3, p1, v3

    .line 16
    invoke-static {p2, v3, p3, v1}, Lfs;->a(BB[CI)V

    move p2, v4

    move v1, v5

    goto :goto_22

    .line 19
    :cond_9d
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p1

    throw p1

    .line 16
    :cond_a2
    new-instance p1, Ljava/lang/String;

    .line 20
    invoke-direct {p1, p3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 2
    :cond_a8
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c([BII)I
    .registers 11

    :goto_0
    if-ge p2, p3, :cond_9

    .line 41
    aget-byte v0, p1, p2

    if-ltz v0, :cond_9

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ge p2, p3, :cond_7e

    :cond_d
    :goto_d
    if-ge p2, p3, :cond_7e

    add-int/lit8 v2, p2, 0x1

    .line 42
    aget-byte p2, p1, p2

    if-ltz p2, :cond_17

    move p2, v2

    goto :goto_d

    :cond_17
    const/16 v3, -0x20

    const/16 v4, -0x41

    if-lt p2, v3, :cond_6f

    const/16 v5, -0x10

    if-lt p2, v5, :cond_48

    add-int/lit8 v3, p3, -0x2

    if-ge v2, v3, :cond_42

    add-int/lit8 v3, v2, 0x1

    .line 45
    aget-byte v2, p1, v2

    if-gt v2, v4, :cond_7f

    shl-int/lit8 p2, p2, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr p2, v2

    shr-int/lit8 p2, p2, 0x1e

    if-nez p2, :cond_7f

    add-int/lit8 p2, v3, 0x1

    aget-byte v2, p1, v3

    if-gt v2, v4, :cond_7f

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    if-gt p2, v4, :cond_7f

    move p2, v2

    goto :goto_d

    .line 47
    :cond_42
    invoke-static {p1, v2, p3}, Lfx;->b([BII)I

    move-result v0

    move v1, v0

    goto :goto_7f

    :cond_48
    add-int/lit8 v5, p3, -0x1

    if-ge v2, v5, :cond_69

    add-int/lit8 v5, v2, 0x1

    .line 44
    aget-byte v2, p1, v2

    if-le v2, v4, :cond_53

    goto :goto_7f

    :cond_53
    const/16 v6, -0x60

    if-ne p2, v3, :cond_5a

    if-ge v2, v6, :cond_5a

    goto :goto_7f

    :cond_5a
    const/16 v3, -0x13

    if-eq p2, v3, :cond_5f

    goto :goto_62

    :cond_5f
    if-lt v2, v6, :cond_62

    goto :goto_7f

    :cond_62
    :goto_62
    add-int/lit8 p2, v5, 0x1

    aget-byte v2, p1, v5

    if-le v2, v4, :cond_d

    goto :goto_7f

    .line 46
    :cond_69
    invoke-static {p1, v2, p3}, Lfx;->b([BII)I

    move-result v0

    move v1, v0

    goto :goto_7f

    :cond_6f
    if-ge v2, p3, :cond_7c

    const/16 v3, -0x3e

    if-lt p2, v3, :cond_7f

    add-int/lit8 p2, v2, 0x1

    .line 43
    aget-byte v2, p1, v2

    if-le v2, v4, :cond_d

    goto :goto_7f

    :cond_7c
    move v1, p2

    goto :goto_7f

    :cond_7e
    move v1, v0

    :cond_7f
    :goto_7f
    return v1
.end method
