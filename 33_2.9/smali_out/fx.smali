.class final Lfx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lft;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-boolean v0, Lfr;->b:Z

    if-nez v0, :cond_5

    goto :goto_15

    .line 3
    :cond_5
    sget-boolean v0, Lfr;->a:Z

    if-eqz v0, :cond_15

    .line 2
    invoke-static {}, Lbx;->a()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Lfw;

    .line 4
    invoke-direct {v0}, Lfw;-><init>()V

    goto :goto_1a

    .line 1
    :cond_15
    :goto_15
    new-instance v0, Lfu;

    .line 3
    invoke-direct {v0}, Lfu;-><init>()V

    :goto_1a
    sput-object v0, Lfx;->a:Lft;

    return-void
.end method

.method public static a(I)I
    .registers 2

    const/16 v0, -0xc

    if-le p0, v0, :cond_5

    const/4 p0, -0x1

    :cond_5
    return p0
.end method

.method public static a(II)I
    .registers 3

    const/16 v0, -0xc

    if-gt p0, v0, :cond_c

    const/16 v0, -0x41

    if-gt p1, v0, :cond_c

    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    return p0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public static a(III)I
    .registers 4

    const/16 v0, -0xc

    if-gt p0, v0, :cond_11

    const/16 v0, -0x41

    if-gt p1, v0, :cond_11

    if-gt p2, v0, :cond_11

    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method static a(Ljava/lang/CharSequence;)I
    .registers 9

    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-lt v2, v0, :cond_9

    goto :goto_14

    .line 7
    :cond_9
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_14

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    :goto_14
    move v3, v0

    :goto_15
    if-ge v2, v0, :cond_5c

    .line 8
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_27

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 9
    :cond_27
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2b
    if-lt v2, v4, :cond_2f

    add-int/2addr v3, v1

    goto :goto_5c

    .line 10
    :cond_2f
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_3b

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_53

    :cond_3b
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-ge v6, v7, :cond_43

    goto :goto_53

    :cond_43
    const v7, 0xdfff

    if-le v6, v7, :cond_49

    goto :goto_53

    .line 11
    :cond_49
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_56

    add-int/lit8 v2, v2, 0x1

    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 7
    :cond_56
    new-instance p0, Lfv;

    .line 13
    invoke-direct {p0, v2, v4}, Lfv;-><init>(II)V

    throw p0

    :cond_5c
    :goto_5c
    if-lt v3, v0, :cond_5f

    return v3

    .line 9
    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x36

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v3

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/CharSequence;[BII)I
    .registers 5

    sget-object v0, Lfx;->a:Lft;

    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Lft;->a(Ljava/lang/CharSequence;[BII)I

    move-result p0

    return p0
.end method

.method public static a([BII)Z
    .registers 4

    sget-object v0, Lfx;->a:Lft;

    .line 19
    invoke-virtual {v0, p0, p1, p2}, Lft;->a([BII)Z

    move-result p0

    return p0
.end method

.method public static b([BII)I
    .registers 6

    add-int/lit8 v0, p1, -0x1

    .line 14
    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    if-eqz p2, :cond_24

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1d

    const/4 v2, 0x2

    if-ne p2, v2, :cond_17

    .line 15
    aget-byte p2, p0, p1

    add-int/2addr p1, v1

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Lfx;->a(III)I

    move-result p0

    return p0

    .line 14
    :cond_17
    new-instance p0, Ljava/lang/AssertionError;

    .line 18
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 16
    :cond_1d
    aget-byte p0, p0, p1

    invoke-static {v0, p0}, Lfx;->a(II)I

    move-result p0

    return p0

    .line 17
    :cond_24
    invoke-static {v0}, Lfx;->a(I)I

    move-result p0

    return p0
.end method
