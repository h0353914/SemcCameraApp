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

    packed-switch p4, :pswitch_data_28

    new-instance p0, Ljava/lang/AssertionError;

    .line 61
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 57
    :pswitch_9
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

    .line 59
    :pswitch_19
    invoke-static {p0, p2, p3}, Lfr;->a([BJ)B

    move-result p0

    .line 60
    invoke-static {p1, p0}, Lfx;->a(II)I

    move-result p0

    return p0

    :pswitch_22
    invoke-static {p1}, Lfx;->a(I)I

    move-result p0

    return p0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_22
        :pswitch_19
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;[BII)I
    .registers 21

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

    if-gt v8, v3, :cond_121

    .line 25
    array-length v9, v1

    sub-int/2addr v9, v3

    if-lt v9, v2, :cond_121

    const/4 v2, 0x0

    :goto_16
    const/16 v3, 0x80

    const-wide/16 v9, 0x1

    if-ge v2, v8, :cond_2b

    .line 26
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ge v11, v3, :cond_2b

    add-long/2addr v9, v4

    int-to-byte v3, v11

    .line 27
    invoke-static {v1, v4, v5, v3}, Lfr;->a([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v9

    goto :goto_16

    :cond_2b
    if-eq v2, v8, :cond_11f

    :goto_2d
    if-ge v2, v8, :cond_11d

    .line 28
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ge v11, v3, :cond_42

    cmp-long v12, v4, v6

    if-gez v12, :cond_42

    add-long v12, v4, v9

    int-to-byte v11, v11

    .line 40
    invoke-static {v1, v4, v5, v11}, Lfr;->a([BJB)V

    move-wide v4, v12

    goto/16 :goto_d7

    :cond_42
    const/16 v12, 0x800

    if-ge v11, v12, :cond_62

    const-wide/16 v12, -0x2

    add-long/2addr v12, v6

    cmp-long v12, v4, v12

    if-gtz v12, :cond_62

    add-long v12, v4, v9

    ushr-int/lit8 v14, v11, 0x6

    or-int/lit16 v14, v14, 0x3c0

    int-to-byte v14, v14

    .line 38
    invoke-static {v1, v4, v5, v14}, Lfr;->a([BJB)V

    add-long v4, v12, v9

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    .line 39
    invoke-static {v1, v12, v13, v11}, Lfr;->a([BJB)V

    goto/16 :goto_d7

    :cond_62
    const v12, 0xdfff

    const v13, 0xd800

    if-ge v11, v13, :cond_6b

    goto :goto_6d

    :cond_6b
    if-le v11, v12, :cond_94

    :goto_6d
    const-wide/16 v14, -0x3

    add-long/2addr v14, v6

    cmp-long v14, v4, v14

    if-gtz v14, :cond_94

    add-long v12, v4, v9

    ushr-int/lit8 v14, v11, 0xc

    or-int/lit16 v14, v14, 0x1e0

    int-to-byte v14, v14

    .line 35
    invoke-static {v1, v4, v5, v14}, Lfr;->a([BJB)V

    add-long v4, v12, v9

    ushr-int/lit8 v14, v11, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v3

    int-to-byte v14, v14

    .line 36
    invoke-static {v1, v12, v13, v14}, Lfr;->a([BJB)V

    add-long v12, v4, v9

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    .line 37
    invoke-static {v1, v4, v5, v11}, Lfr;->a([BJB)V

    move-wide v4, v12

    goto :goto_d7

    :cond_94
    const-wide/16 v14, -0x4

    add-long/2addr v14, v6

    cmp-long v14, v4, v14

    if-gtz v14, :cond_e4

    add-int/lit8 v12, v2, 0x1

    if-eq v12, v8, :cond_db

    .line 29
    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v13

    if-eqz v13, :cond_dc

    .line 30
    invoke-static {v11, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    add-long v13, v4, v9

    ushr-int/lit8 v11, v2, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    .line 31
    invoke-static {v1, v4, v5, v11}, Lfr;->a([BJB)V

    add-long v4, v13, v9

    ushr-int/lit8 v11, v2, 0xc

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    .line 32
    invoke-static {v1, v13, v14, v11}, Lfr;->a([BJB)V

    add-long v13, v4, v9

    ushr-int/lit8 v11, v2, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    .line 33
    invoke-static {v1, v4, v5, v11}, Lfr;->a([BJB)V

    add-long v4, v13, v9

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 34
    invoke-static {v1, v13, v14, v2}, Lfr;->a([BJB)V

    move v2, v12

    :goto_d7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2d

    :cond_db
    move v12, v2

    .line 37
    :cond_dc
    new-instance v0, Lfv;

    add-int/lit8 v12, v12, -0x1

    .line 41
    invoke-direct {v0, v12, v8}, Lfv;-><init>(II)V

    throw v0

    :cond_e4
    if-lt v11, v13, :cond_fc

    if-gt v11, v12, :cond_fc

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_f6

    .line 42
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_fc

    .line 43
    :cond_f6
    new-instance v0, Lfv;

    .line 44
    invoke-direct {v0, v2, v8}, Lfv;-><init>(II)V

    throw v0

    .line 34
    :cond_fc
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11d
    long-to-int v0, v4

    return v0

    :cond_11f
    long-to-int v0, v4

    return v0

    .line 24
    :cond_121
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    .line 25
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed writing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " at index "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
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

    if-ltz v1, :cond_c4

    add-int v0, p2, p3

    .line 4
    new-array p3, p3, [C

    move v1, v2

    :goto_f
    if-ge p2, v0, :cond_25

    int-to-long v3, p2

    .line 5
    invoke-static {p1, v3, v4}, Lfr;->a([BJ)B

    move-result v3

    .line 6
    invoke-static {v3}, Lfs;->a(B)Z

    move-result v4

    if-eqz v4, :cond_25

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, p3, v1}, Lfs;->a(B[CI)V

    move v1, v4

    goto :goto_f

    :cond_25
    :goto_25
    if-ge p2, v0, :cond_be

    add-int/lit8 v3, p2, 0x1

    int-to-long v4, p2

    .line 7
    invoke-static {p1, v4, v5}, Lfr;->a([BJ)B

    move-result p2

    .line 8
    invoke-static {p2}, Lfs;->a(B)Z

    move-result v4

    if-eqz v4, :cond_51

    add-int/lit8 v4, v1, 0x1

    invoke-static {p2, p3, v1}, Lfs;->a(B[CI)V

    move p2, v3

    move v1, v4

    :goto_3b
    if-ge p2, v0, :cond_25

    int-to-long v3, p2

    .line 9
    invoke-static {p1, v3, v4}, Lfr;->a([BJ)B

    move-result v3

    .line 10
    invoke-static {v3}, Lfs;->a(B)Z

    move-result v4

    if-eqz v4, :cond_25

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, p3, v1}, Lfs;->a(B[CI)V

    move v1, v4

    goto :goto_3b

    :cond_51
    invoke-static {p2}, Lfs;->b(B)Z

    move-result v4

    if-nez v4, :cond_a7

    invoke-static {p2}, Lfs;->c(B)Z

    move-result v4

    if-nez v4, :cond_88

    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_83

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v9, v5, 0x1

    int-to-long v6, v3

    .line 14
    invoke-static {p1, v6, v7}, Lfr;->a([BJ)B

    move-result v6

    int-to-long v3, v4

    .line 15
    invoke-static {p1, v3, v4}, Lfr;->a([BJ)B

    move-result v7

    int-to-long v3, v5

    .line 16
    invoke-static {p1, v3, v4}, Lfr;->a([BJ)B

    move-result v8

    move v3, p2

    move v4, v6

    move v5, v7

    move v6, v8

    move-object v7, p3

    move v8, v1

    .line 17
    invoke-static/range {v3 .. v8}, Lfs;->a(BBBB[CI)V

    add-int/lit8 v1, v1, 0x2

    move p2, v9

    goto :goto_25

    .line 21
    :cond_83
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p1

    throw p1

    :cond_88
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_a2

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v1, 0x1

    int-to-long v7, v3

    .line 11
    invoke-static {p1, v7, v8}, Lfr;->a([BJ)B

    move-result v3

    int-to-long v7, v4

    .line 12
    invoke-static {p1, v7, v8}, Lfr;->a([BJ)B

    move-result v4

    .line 13
    invoke-static {p2, v3, v4, p3, v1}, Lfs;->a(BBB[CI)V

    move p2, v5

    move v1, v6

    goto :goto_25

    .line 20
    :cond_a2
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p1

    throw p1

    :cond_a7
    if-ge v3, v0, :cond_b9

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v1, 0x1

    int-to-long v6, v3

    .line 18
    invoke-static {p1, v6, v7}, Lfr;->a([BJ)B

    move-result v3

    .line 19
    invoke-static {p2, v3, p3, v1}, Lfs;->a(BB[CI)V

    move p2, v4

    move v1, v5

    goto/16 :goto_25

    .line 22
    :cond_b9
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p1

    throw p1

    .line 19
    :cond_be
    new-instance p1, Ljava/lang/String;

    .line 23
    invoke-direct {p1, p3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 2
    :cond_c4
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
    .registers 16

    .line 45
    array-length v0, p1

    or-int v1, p2, p3

    sub-int v2, v0, p3

    or-int/2addr v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ltz v1, :cond_bb

    int-to-long v0, p2

    int-to-long p2, p3

    sub-long/2addr p2, v0

    long-to-int p2, p2

    const/16 p3, 0x10

    const-wide/16 v5, 0x1

    if-lt p2, p3, :cond_28

    move-wide v7, v0

    move p3, v4

    :goto_17
    if-ge p3, p2, :cond_26

    add-long v9, v7, v5

    .line 46
    invoke-static {p1, v7, v8}, Lfr;->a([BJ)B

    move-result v7

    if-gez v7, :cond_22

    goto :goto_29

    :cond_22
    add-int/lit8 p3, p3, 0x1

    move-wide v7, v9

    goto :goto_17

    :cond_26
    move p3, p2

    goto :goto_29

    :cond_28
    move p3, v4

    :goto_29
    sub-int/2addr p2, p3

    int-to-long v7, p3

    add-long/2addr v0, v7

    :cond_2c
    :goto_2c
    move p3, v4

    :goto_2d
    if-lez p2, :cond_3c

    add-long v7, v0, v5

    .line 47
    invoke-static {p1, v0, v1}, Lfr;->a([BJ)B

    move-result p3

    if-ltz p3, :cond_3b

    add-int/lit8 p2, p2, -0x1

    move-wide v0, v7

    goto :goto_2d

    :cond_3b
    move-wide v0, v7

    :cond_3c
    const/4 v7, -0x1

    if-eqz p2, :cond_b9

    add-int/lit8 p2, p2, -0x1

    const/16 v8, -0x20

    const/16 v9, -0x41

    if-lt p3, v8, :cond_a3

    const/16 v10, -0x10

    if-lt p3, v10, :cond_78

    if-lt p2, v3, :cond_72

    add-int/lit8 p2, p2, -0x3

    add-long v10, v0, v5

    .line 51
    invoke-static {p1, v0, v1}, Lfr;->a([BJ)B

    move-result v0

    if-gt v0, v9, :cond_ba

    shl-int/lit8 p3, p3, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p3, v0

    shr-int/lit8 p3, p3, 0x1e

    if-nez p3, :cond_ba

    add-long v0, v10, v5

    .line 52
    invoke-static {p1, v10, v11}, Lfr;->a([BJ)B

    move-result p3

    if-gt p3, v9, :cond_ba

    add-long v10, v0, v5

    .line 53
    invoke-static {p1, v0, v1}, Lfr;->a([BJ)B

    move-result p3

    if-gt p3, v9, :cond_ba

    move-wide v0, v10

    goto :goto_2c

    .line 55
    :cond_72
    invoke-static {p1, p3, v0, v1, p2}, Lfw;->a([BIJI)I

    move-result v4

    move v7, v4

    goto :goto_ba

    :cond_78
    if-lt p2, v2, :cond_9d

    add-int/lit8 p2, p2, -0x2

    add-long v10, v0, v5

    .line 49
    invoke-static {p1, v0, v1}, Lfr;->a([BJ)B

    move-result v0

    if-le v0, v9, :cond_85

    goto :goto_ba

    :cond_85
    const/16 v1, -0x60

    if-ne p3, v8, :cond_8c

    if-ge v0, v1, :cond_8c

    goto :goto_ba

    :cond_8c
    const/16 v8, -0x13

    if-eq p3, v8, :cond_91

    goto :goto_94

    :cond_91
    if-lt v0, v1, :cond_94

    goto :goto_ba

    :cond_94
    :goto_94
    add-long v0, v10, v5

    .line 50
    invoke-static {p1, v10, v11}, Lfr;->a([BJ)B

    move-result p3

    if-le p3, v9, :cond_2c

    goto :goto_ba

    .line 54
    :cond_9d
    invoke-static {p1, p3, v0, v1, p2}, Lfw;->a([BIJI)I

    move-result v4

    move v7, v4

    goto :goto_ba

    :cond_a3
    if-eqz p2, :cond_b7

    add-int/lit8 p2, p2, -0x1

    const/16 v8, -0x3e

    if-lt p3, v8, :cond_ba

    add-long v10, v0, v5

    .line 48
    invoke-static {p1, v0, v1}, Lfr;->a([BJ)B

    move-result p3

    if-le p3, v9, :cond_b4

    goto :goto_ba

    :cond_b4
    move-wide v0, v10

    goto/16 :goto_2c

    :cond_b7
    move v7, p3

    goto :goto_ba

    :cond_b9
    move v7, v4

    :cond_ba
    :goto_ba
    return v7

    :cond_bb
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-array v1, v3, [Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "Array length=%d, index=%d, limit=%d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
