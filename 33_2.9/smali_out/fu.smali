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
    .registers 11

    .line 21
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/2addr p4, p3

    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x80

    if-ge v0, p0, :cond_1a

    add-int v2, v0, p3

    if-ge v2, p4, :cond_1a

    .line 22
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v1, :cond_1a

    int-to-byte v1, v3

    .line 23
    aput-byte v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    if-eq v0, p0, :cond_ff

    add-int/2addr p3, v0

    :goto_1d
    if-ge v0, p0, :cond_fe

    .line 24
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ge v2, v1, :cond_2f

    if-ge p3, p4, :cond_2f

    add-int/lit8 v3, p3, 0x1

    int-to-byte v2, v2

    .line 36
    aput-byte v2, p2, p3

    :goto_2c
    move p3, v3

    goto/16 :goto_b4

    :cond_2f
    const/16 v3, 0x800

    if-ge v2, v3, :cond_49

    add-int/lit8 v3, p4, -0x2

    if-gt p3, v3, :cond_49

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    .line 34
    aput-byte v4, p2, p3

    add-int/lit8 p3, v3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v1

    int-to-byte v2, v2

    .line 35
    aput-byte v2, p2, v3

    goto :goto_b4

    :cond_49
    const v3, 0xdfff

    const v4, 0xd800

    if-ge v2, v4, :cond_52

    goto :goto_54

    :cond_52
    if-le v2, v3, :cond_74

    :goto_54
    add-int/lit8 v5, p4, -0x3

    if-gt p3, v5, :cond_74

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    .line 31
    aput-byte v4, p2, p3

    add-int/lit8 p3, v3, 0x1

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v1

    int-to-byte v4, v4

    .line 32
    aput-byte v4, p2, v3

    add-int/lit8 v3, p3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v1

    int-to-byte v2, v2

    .line 33
    aput-byte v2, p2, p3

    goto :goto_2c

    :cond_74
    add-int/lit8 v5, p4, -0x4

    if-gt p3, v5, :cond_c1

    add-int/lit8 v3, v0, 0x1

    .line 25
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v3, v4, :cond_b9

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 26
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v4, v0, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    .line 27
    aput-byte v4, p2, p3

    add-int/lit8 p3, v2, 0x1

    ushr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v1

    int-to-byte v4, v4

    .line 28
    aput-byte v4, p2, v2

    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v1

    int-to-byte v4, v4

    .line 29
    aput-byte v4, p2, p3

    add-int/lit8 p3, v2, 0x1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 30
    aput-byte v0, p2, v2

    move v0, v3

    :goto_b4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1d

    :cond_b8
    move v0, v3

    .line 39
    :cond_b9
    new-instance p1, Lfv;

    add-int/lit8 v0, v0, -0x1

    .line 37
    invoke-direct {p1, v0, p0}, Lfv;-><init>(II)V

    throw p1

    :cond_c1
    if-lt v2, v4, :cond_dd

    if-gt v2, v3, :cond_dd

    add-int/lit8 p2, v0, 0x1

    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_d7

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_dd

    :cond_d7
    new-instance p1, Lfv;

    .line 40
    invoke-direct {p1, v0, p0}, Lfv;-><init>(II)V

    throw p1

    .line 30
    :cond_dd
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x25

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed writing "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " at index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_fe
    return p3

    :cond_ff
    add-int/2addr p3, p0

    return p3
.end method

.method public final b([BII)Ljava/lang/String;
    .registers 13

    .line 2
    array-length p0, p1

    or-int v0, p2, p3

    sub-int v1, p0, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_a7

    add-int p0, p2, p3

    .line 4
    new-array p3, p3, [C

    move v0, v1

    :goto_f
    if-ge p2, p0, :cond_22

    .line 5
    aget-byte v2, p1, p2

    .line 6
    invoke-static {v2}, Lfs;->a(B)Z

    move-result v3

    if-eqz v3, :cond_22

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, p3, v0}, Lfs;->a(B[CI)V

    move v0, v3

    goto :goto_f

    :cond_22
    :goto_22
    if-ge p2, p0, :cond_a1

    add-int/lit8 v2, p2, 0x1

    .line 7
    aget-byte p2, p1, p2

    .line 8
    invoke-static {p2}, Lfs;->a(B)Z

    move-result v3

    if-eqz v3, :cond_47

    add-int/lit8 v3, v0, 0x1

    invoke-static {p2, p3, v0}, Lfs;->a(B[CI)V

    move p2, v2

    :goto_34
    move v0, v3

    if-ge p2, p0, :cond_22

    .line 9
    aget-byte v2, p1, p2

    .line 10
    invoke-static {v2}, Lfs;->a(B)Z

    move-result v3

    if-eqz v3, :cond_22

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, p3, v0}, Lfs;->a(B[CI)V

    goto :goto_34

    :cond_47
    invoke-static {p2}, Lfs;->b(B)Z

    move-result v3

    if-nez v3, :cond_8e

    invoke-static {p2}, Lfs;->c(B)Z

    move-result v3

    if-nez v3, :cond_75

    add-int/lit8 v3, p0, -0x2

    if-ge v2, v3, :cond_70

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    .line 13
    aget-byte v5, p1, v2

    aget-byte v6, p1, v3

    aget-byte v7, p1, v4

    move v2, p2

    move v3, v5

    move v4, v6

    move v5, v7

    move-object v6, p3

    move v7, v0

    .line 14
    invoke-static/range {v2 .. v7}, Lfs;->a(BBBB[CI)V

    add-int/lit8 v0, v0, 0x2

    move p2, v8

    goto :goto_22

    .line 18
    :cond_70
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p0

    throw p0

    :cond_75
    add-int/lit8 v3, p0, -0x1

    if-ge v2, v3, :cond_89

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 11
    aget-byte v2, p1, v2

    aget-byte v3, p1, v3

    .line 12
    invoke-static {p2, v2, v3, p3, v0}, Lfs;->a(BBB[CI)V

    move p2, v4

    move v0, v5

    goto :goto_22

    .line 17
    :cond_89
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p0

    throw p0

    :cond_8e
    if-ge v2, p0, :cond_9c

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 15
    aget-byte v2, p1, v2

    .line 16
    invoke-static {p2, v2, p3, v0}, Lfs;->a(BB[CI)V

    move p2, v3

    move v0, v4

    goto :goto_22

    .line 19
    :cond_9c
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p0

    throw p0

    .line 16
    :cond_a1
    new-instance p0, Ljava/lang/String;

    .line 20
    invoke-direct {p0, p3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 2
    :cond_a7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x2

    aput-object p0, v0, p2

    const-string p0, "buffer length=%d, index=%d, size=%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c([BII)I
    .registers 10

    :goto_0
    if-ge p2, p3, :cond_9

    .line 41
    aget-byte p0, p1, p2

    if-ltz p0, :cond_9

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    const/4 v0, -0x1

    if-ge p2, p3, :cond_7b

    :cond_d
    :goto_d
    if-ge p2, p3, :cond_7b

    add-int/lit8 v1, p2, 0x1

    .line 42
    aget-byte p2, p1, p2

    if-ltz p2, :cond_17

    :goto_15
    move p2, v1

    goto :goto_d

    :cond_17
    const/16 v2, -0x20

    const/16 v3, -0x41

    if-lt p2, v2, :cond_6c

    const/16 v4, -0x10

    if-lt p2, v4, :cond_46

    add-int/lit8 v2, p3, -0x2

    if-ge v1, v2, :cond_41

    add-int/lit8 v2, v1, 0x1

    .line 45
    aget-byte v1, p1, v1

    if-gt v1, v3, :cond_78

    shl-int/lit8 p2, p2, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr p2, v1

    shr-int/lit8 p2, p2, 0x1e

    if-nez p2, :cond_78

    add-int/lit8 p2, v2, 0x1

    aget-byte v1, p1, v2

    if-gt v1, v3, :cond_78

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    if-gt p2, v3, :cond_78

    goto :goto_15

    .line 47
    :cond_41
    invoke-static {p1, v1, p3}, Lfx;->b([BII)I

    move-result p0

    goto :goto_7b

    :cond_46
    add-int/lit8 v4, p3, -0x1

    if-ge v1, v4, :cond_67

    add-int/lit8 v4, v1, 0x1

    .line 44
    aget-byte v1, p1, v1

    if-le v1, v3, :cond_51

    goto :goto_78

    :cond_51
    const/16 v5, -0x60

    if-ne p2, v2, :cond_58

    if-ge v1, v5, :cond_58

    goto :goto_78

    :cond_58
    const/16 v2, -0x13

    if-eq p2, v2, :cond_5d

    goto :goto_60

    :cond_5d
    if-lt v1, v5, :cond_60

    goto :goto_78

    :cond_60
    :goto_60
    add-int/lit8 p2, v4, 0x1

    aget-byte v1, p1, v4

    if-le v1, v3, :cond_d

    goto :goto_78

    .line 46
    :cond_67
    invoke-static {p1, v1, p3}, Lfx;->b([BII)I

    move-result p0

    goto :goto_7b

    :cond_6c
    if-ge v1, p3, :cond_7a

    const/16 v2, -0x3e

    if-lt p2, v2, :cond_78

    add-int/lit8 p2, v1, 0x1

    .line 43
    aget-byte v1, p1, v1

    if-le v1, v3, :cond_d

    :cond_78
    :goto_78
    move p0, v0

    goto :goto_7b

    :cond_7a
    move p0, p2

    :cond_7b
    :goto_7b
    return p0
.end method
