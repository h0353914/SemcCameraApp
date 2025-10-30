.class final Lfw;
.super Lft;
.source "PG"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lft;-><init>()V

    return-void
.end method

.method private static a([BIJI)I
    .registers 7

    if-eqz p4, :cond_27

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p4, v0, :cond_18

    .line 57
    invoke-static {p0, p2, p3}, Lfr;->a([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lfr;->a([BJ)B

    move-result p0

    .line 58
    invoke-static {p1, p4, p0}, Lfx;->a(III)I

    move-result p0

    return p0

    .line 0
    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    .line 61
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 59
    :cond_1e
    invoke-static {p0, p2, p3}, Lfr;->a([BJ)B

    move-result p0

    .line 60
    invoke-static {p1, p0}, Lfx;->a(II)I

    move-result p0

    return p0

    :cond_27
    invoke-static {p1}, Lfx;->a(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;[BII)I
    .registers 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 24
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_144

    .line 25
    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_144

    const/4 v2, 0x0

    :goto_1a
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_2f

    .line 26
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2f

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 27
    invoke-static {v1, v4, v5, v3}, Lfr;->a([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_1a

    :cond_2f
    if-eq v2, v8, :cond_142

    :goto_31
    if-ge v2, v8, :cond_140

    .line 28
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_48

    cmp-long v14, v4, v6

    if-gez v14, :cond_48

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 40
    invoke-static {v1, v4, v5, v13}, Lfr;->a([BJB)V

    move-wide v4, v11

    move-wide v12, v14

    move v11, v3

    goto/16 :goto_f8

    :cond_48
    const/16 v14, 0x800

    if-ge v13, v14, :cond_71

    const-wide/16 v14, -0x2

    add-long/2addr v14, v6

    cmp-long v14, v4, v14

    if-gtz v14, :cond_71

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    .line 38
    invoke-static {v1, v4, v5, v3}, Lfr;->a([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    .line 39
    invoke-static {v1, v14, v15, v5}, Lfr;->a([BJB)V

    move-wide/from16 v18, v11

    const/16 v11, 0x80

    move-wide v12, v3

    move-wide/from16 v4, v18

    goto/16 :goto_f8

    :cond_71
    const v3, 0xdfff

    const v14, 0xd800

    if-ge v13, v14, :cond_7a

    goto :goto_7c

    :cond_7a
    if-le v13, v3, :cond_ac

    :goto_7c
    const-wide/16 v15, -0x3

    add-long/2addr v15, v6

    cmp-long v15, v4, v15

    if-gtz v15, :cond_ac

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    .line 35
    invoke-static {v1, v4, v5, v3}, Lfr;->a([BJB)V

    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 36
    invoke-static {v1, v14, v15, v5}, Lfr;->a([BJB)V

    const-wide/16 v14, 0x1

    add-long v16, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 37
    invoke-static {v1, v3, v4, v5}, Lfr;->a([BJB)V

    move-wide/from16 v12, v16

    const-wide/16 v4, 0x1

    const/16 v11, 0x80

    goto :goto_f8

    :cond_ac
    const-wide/16 v11, -0x4

    add-long/2addr v11, v6

    cmp-long v11, v4, v11

    if-gtz v11, :cond_10b

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_103

    .line 29
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_102

    .line 30
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    .line 31
    invoke-static {v1, v4, v5, v15}, Lfr;->a([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    .line 32
    invoke-static {v1, v13, v14, v12}, Lfr;->a([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    .line 33
    invoke-static {v1, v4, v5, v12}, Lfr;->a([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    .line 34
    invoke-static {v1, v14, v15, v2}, Lfr;->a([BJB)V

    move v2, v3

    :goto_f8
    add-int/lit8 v2, v2, 0x1

    move v3, v11

    move-wide/from16 v18, v4

    move-wide v4, v12

    move-wide/from16 v11, v18

    goto/16 :goto_31

    :cond_102
    move v2, v3

    .line 37
    :cond_103
    new-instance v0, Lfv;

    add-int/lit8 v2, v2, -0x1

    .line 41
    invoke-direct {v0, v2, v8}, Lfv;-><init>(II)V

    throw v0

    :cond_10b
    if-lt v13, v14, :cond_123

    if-gt v13, v3, :cond_123

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_11d

    .line 42
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_123

    .line 43
    :cond_11d
    new-instance v0, Lfv;

    .line 44
    invoke-direct {v0, v2, v8}, Lfv;-><init>(II)V

    throw v0

    .line 34
    :cond_123
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_140
    long-to-int v0, v4

    return v0

    :cond_142
    long-to-int v0, v4

    return v0

    .line 24
    :cond_144
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    .line 25
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
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

    if-ltz v0, :cond_c3

    add-int p0, p2, p3

    .line 4
    new-array p3, p3, [C

    move v0, v1

    :goto_f
    if-ge p2, p0, :cond_25

    int-to-long v2, p2

    .line 5
    invoke-static {p1, v2, v3}, Lfr;->a([BJ)B

    move-result v2

    .line 6
    invoke-static {v2}, Lfs;->a(B)Z

    move-result v3

    if-eqz v3, :cond_25

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, p3, v0}, Lfs;->a(B[CI)V

    move v0, v3

    goto :goto_f

    :cond_25
    :goto_25
    if-ge p2, p0, :cond_bd

    add-int/lit8 v2, p2, 0x1

    int-to-long v3, p2

    .line 7
    invoke-static {p1, v3, v4}, Lfr;->a([BJ)B

    move-result p2

    .line 8
    invoke-static {p2}, Lfs;->a(B)Z

    move-result v3

    if-eqz v3, :cond_50

    add-int/lit8 v3, v0, 0x1

    invoke-static {p2, p3, v0}, Lfs;->a(B[CI)V

    move p2, v2

    :goto_3a
    move v0, v3

    if-ge p2, p0, :cond_25

    int-to-long v2, p2

    .line 9
    invoke-static {p1, v2, v3}, Lfr;->a([BJ)B

    move-result v2

    .line 10
    invoke-static {v2}, Lfs;->a(B)Z

    move-result v3

    if-eqz v3, :cond_25

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, p3, v0}, Lfs;->a(B[CI)V

    goto :goto_3a

    :cond_50
    invoke-static {p2}, Lfs;->b(B)Z

    move-result v3

    if-nez v3, :cond_a6

    invoke-static {p2}, Lfs;->c(B)Z

    move-result v3

    if-nez v3, :cond_87

    add-int/lit8 v3, p0, -0x2

    if-ge v2, v3, :cond_82

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    int-to-long v5, v2

    .line 14
    invoke-static {p1, v5, v6}, Lfr;->a([BJ)B

    move-result v5

    int-to-long v2, v3

    .line 15
    invoke-static {p1, v2, v3}, Lfr;->a([BJ)B

    move-result v6

    int-to-long v2, v4

    .line 16
    invoke-static {p1, v2, v3}, Lfr;->a([BJ)B

    move-result v7

    move v2, p2

    move v3, v5

    move v4, v6

    move v5, v7

    move-object v6, p3

    move v7, v0

    .line 17
    invoke-static/range {v2 .. v7}, Lfs;->a(BBBB[CI)V

    add-int/lit8 v0, v0, 0x2

    move p2, v8

    goto :goto_25

    .line 21
    :cond_82
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p0

    throw p0

    :cond_87
    add-int/lit8 v3, p0, -0x1

    if-ge v2, v3, :cond_a1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v0, 0x1

    int-to-long v6, v2

    .line 11
    invoke-static {p1, v6, v7}, Lfr;->a([BJ)B

    move-result v2

    int-to-long v6, v3

    .line 12
    invoke-static {p1, v6, v7}, Lfr;->a([BJ)B

    move-result v3

    .line 13
    invoke-static {p2, v2, v3, p3, v0}, Lfs;->a(BBB[CI)V

    move p2, v4

    move v0, v5

    goto :goto_25

    .line 20
    :cond_a1
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p0

    throw p0

    :cond_a6
    if-ge v2, p0, :cond_b8

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v0, 0x1

    int-to-long v5, v2

    .line 18
    invoke-static {p1, v5, v6}, Lfr;->a([BJ)B

    move-result v2

    .line 19
    invoke-static {p2, v2, p3, v0}, Lfs;->a(BB[CI)V

    move p2, v3

    move v0, v4

    goto/16 :goto_25

    .line 22
    :cond_b8
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p0

    throw p0

    .line 19
    :cond_bd
    new-instance p0, Ljava/lang/String;

    .line 23
    invoke-direct {p0, p3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 2
    :cond_c3
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
    .registers 16

    .line 45
    array-length p0, p1

    or-int v0, p2, p3

    sub-int v1, p0, p3

    or-int/2addr v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ltz v0, :cond_ba

    int-to-long v4, p2

    int-to-long p2, p3

    sub-long/2addr p2, v4

    long-to-int p0, p2

    const/16 p2, 0x10

    const-wide/16 v6, 0x1

    if-lt p0, p2, :cond_28

    move p2, v3

    move-wide v8, v4

    :goto_17
    if-ge p2, p0, :cond_26

    add-long v10, v8, v6

    .line 46
    invoke-static {p1, v8, v9}, Lfr;->a([BJ)B

    move-result p3

    if-gez p3, :cond_22

    goto :goto_29

    :cond_22
    add-int/lit8 p2, p2, 0x1

    move-wide v8, v10

    goto :goto_17

    :cond_26
    move p2, p0

    goto :goto_29

    :cond_28
    move p2, v3

    :goto_29
    sub-int/2addr p0, p2

    int-to-long p2, p2

    add-long/2addr v4, p2

    :cond_2c
    :goto_2c
    move p2, v3

    :goto_2d
    if-lez p0, :cond_3e

    add-long p2, v4, v6

    .line 47
    invoke-static {p1, v4, v5}, Lfr;->a([BJ)B

    move-result v0

    if-ltz v0, :cond_3c

    add-int/lit8 p0, p0, -0x1

    move-wide v4, p2

    move p2, v0

    goto :goto_2d

    :cond_3c
    move-wide v4, p2

    move p2, v0

    :cond_3e
    const/4 p3, -0x1

    if-eqz p0, :cond_b9

    add-int/lit8 p0, p0, -0x1

    const/16 v0, -0x20

    const/16 v8, -0x41

    if-lt p2, v0, :cond_a2

    const/16 v9, -0x10

    if-lt p2, v9, :cond_78

    if-lt p0, v2, :cond_73

    add-int/lit8 p0, p0, -0x3

    add-long v9, v4, v6

    .line 51
    invoke-static {p1, v4, v5}, Lfr;->a([BJ)B

    move-result v0

    if-gt v0, v8, :cond_b6

    shl-int/lit8 p2, p2, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x1e

    if-nez p2, :cond_b6

    add-long v4, v9, v6

    .line 52
    invoke-static {p1, v9, v10}, Lfr;->a([BJ)B

    move-result p2

    if-gt p2, v8, :cond_b6

    add-long v9, v4, v6

    .line 53
    invoke-static {p1, v4, v5}, Lfr;->a([BJ)B

    move-result p2

    if-gt p2, v8, :cond_b6

    goto :goto_b3

    .line 55
    :cond_73
    invoke-static {p1, p2, v4, v5, p0}, Lfw;->a([BIJI)I

    move-result v3

    goto :goto_b9

    :cond_78
    if-lt p0, v1, :cond_9d

    add-int/lit8 p0, p0, -0x2

    add-long v9, v4, v6

    .line 49
    invoke-static {p1, v4, v5}, Lfr;->a([BJ)B

    move-result v4

    if-le v4, v8, :cond_85

    goto :goto_b6

    :cond_85
    const/16 v5, -0x60

    if-ne p2, v0, :cond_8c

    if-ge v4, v5, :cond_8c

    goto :goto_b6

    :cond_8c
    const/16 v0, -0x13

    if-eq p2, v0, :cond_91

    goto :goto_94

    :cond_91
    if-lt v4, v5, :cond_94

    goto :goto_b6

    :cond_94
    :goto_94
    add-long v4, v9, v6

    .line 50
    invoke-static {p1, v9, v10}, Lfr;->a([BJ)B

    move-result p2

    if-le p2, v8, :cond_2c

    goto :goto_b6

    .line 54
    :cond_9d
    invoke-static {p1, p2, v4, v5, p0}, Lfw;->a([BIJI)I

    move-result v3

    goto :goto_b9

    :cond_a2
    if-eqz p0, :cond_b8

    add-int/lit8 p0, p0, -0x1

    const/16 v0, -0x3e

    if-lt p2, v0, :cond_b6

    add-long v9, v4, v6

    .line 48
    invoke-static {p1, v4, v5}, Lfr;->a([BJ)B

    move-result p2

    if-le p2, v8, :cond_b3

    goto :goto_b6

    :cond_b3
    :goto_b3
    move-wide v4, v9

    goto/16 :goto_2c

    :cond_b6
    :goto_b6
    move v3, p3

    goto :goto_b9

    :cond_b8
    move v3, p2

    :cond_b9
    :goto_b9
    return v3

    :cond_ba
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-array v0, v2, [Ljava/lang/Object;

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Array length=%d, index=%d, limit=%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
