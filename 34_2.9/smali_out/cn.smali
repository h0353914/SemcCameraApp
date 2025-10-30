.class public final Lcn;
.super Leb;
.source "PG"


# static fields
.field public static final a:Z

.field private static final c:Ljava/util/logging/Logger;


# instance fields
.field b:Lco;

.field private final d:[B

.field private final e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcn;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcn;->c:Ljava/util/logging/Logger;

    .line 91
    sget-boolean v0, Lfr;->b:Z

    sput-boolean v0, Lcn;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Leb;-><init>()V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcn;-><init>()V

    if-eqz p1, :cond_2f

    array-length v0, p1

    sub-int v1, v0, p2

    or-int/2addr v1, p2

    const/4 v2, 0x0

    if-ltz v1, :cond_13

    .line 4
    iput-object p1, p0, Lcn;->d:[B

    iput v2, p0, Lcn;->f:I

    iput p2, p0, Lcn;->e:I

    return-void

    .line 1
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 3
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "buffer"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(I)I
    .registers 2

    const/4 v0, 0x0

    .line 136
    invoke-static {p0, v0}, Lga;->a(II)I

    move-result p0

    invoke-static {p0}, Lcn;->c(I)I

    move-result p0

    return p0
.end method

.method public static a(ILck;)I
    .registers 2

    .line 97
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    invoke-static {p1}, Lcn;->a(Lck;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static a(ILdq;)I
    .registers 2

    .line 115
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    invoke-static {p1}, Lcn;->a(Ldq;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static a(ILeh;Les;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    add-int/2addr p0, p0

    .line 106
    check-cast p1, Lbu;

    .line 107
    invoke-virtual {p1}, Lbu;->k()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 108
    invoke-interface {p2, p1}, Les;->b(Ljava/lang/Object;)I

    move-result v0

    .line 109
    invoke-virtual {p1, v0}, Lbu;->a(I)V

    :cond_15
    add-int/2addr p0, v0

    return p0
.end method

.method public static a(ILjava/lang/String;)I
    .registers 2

    .line 131
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    invoke-static {p1}, Lcn;->a(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static a(J)I
    .registers 8

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    cmp-long v0, p0, v2

    if-ltz v0, :cond_34

    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1d

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x2

    :goto_1e
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2b

    add-int/lit8 v0, v0, 0x2

    const/16 v4, 0xe

    ushr-long/2addr p0, v4

    :cond_2b
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_33

    add-int/2addr v0, v1

    :cond_33
    return v0

    :cond_34
    const/16 p0, 0xa

    return p0

    :cond_37
    return v1
.end method

.method public static a(Lck;)I
    .registers 1

    .line 98
    invoke-virtual {p0}, Lck;->a()I

    move-result p0

    invoke-static {p0}, Lcn;->e(I)I

    move-result p0

    return p0
.end method

.method public static a(Ldq;)I
    .registers 2

    iget-object v0, p0, Ldq;->b:Lck;

    if-eqz v0, :cond_b

    iget-object p0, p0, Ldq;->b:Lck;

    .line 116
    invoke-virtual {p0}, Lck;->a()I

    move-result p0

    goto :goto_17

    .line 117
    :cond_b
    iget-object v0, p0, Ldq;->a:Leh;

    if-eqz v0, :cond_16

    iget-object p0, p0, Ldq;->a:Leh;

    .line 118
    invoke-interface {p0}, Leh;->f()I

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    .line 117
    :goto_17
    invoke-static {p0}, Lcn;->e(I)I

    move-result p0

    return p0
.end method

.method public static a(Leh;)I
    .registers 1

    .line 120
    invoke-interface {p0}, Leh;->f()I

    move-result p0

    invoke-static {p0}, Lcn;->e(I)I

    move-result p0

    return p0
.end method

.method static a(Leh;Les;)I
    .registers 4

    .line 121
    check-cast p0, Lbu;

    .line 122
    invoke-virtual {p0}, Lbu;->k()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 123
    invoke-interface {p1, p0}, Les;->b(Ljava/lang/Object;)I

    move-result v0

    .line 124
    invoke-virtual {p0, v0}, Lbu;->a(I)V

    .line 121
    :cond_10
    invoke-static {v0}, Lcn;->e(I)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    .line 132
    :try_start_0
    invoke-static {p0}, Lfx;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_4
    .catch Lfv; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_c

    .line 133
    :catch_5
    sget-object v0, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 134
    array-length p0, p0

    .line 135
    :goto_c
    invoke-static {p0}, Lcn;->e(I)I

    move-result p0

    return p0
.end method

.method public static a([B)Lcn;
    .registers 3

    .line 145
    array-length v0, p0

    new-instance v1, Lcn;

    .line 146
    invoke-direct {v1, p0, v0}, Lcn;-><init>([BI)V

    return-object v1
.end method

.method public static b(I)I
    .registers 1

    if-ltz p0, :cond_7

    .line 112
    invoke-static {p0}, Lcn;->c(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static b(II)I
    .registers 2

    .line 111
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    invoke-static {p1}, Lcn;->b(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(IJ)I
    .registers 3

    .line 113
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    .line 114
    invoke-static {p1, p2}, Lcn;->a(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(J)I
    .registers 2

    .line 130
    invoke-static {p0, p1}, Lcn;->c(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcn;->a(J)I

    move-result p0

    return p0
.end method

.method public static b([B)I
    .registers 1

    .line 96
    array-length p0, p0

    invoke-static {p0}, Lcn;->e(I)I

    move-result p0

    return p0
.end method

.method public static c(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-eqz v0, :cond_1a

    and-int/lit16 v0, p0, -0x4000

    if-eqz v0, :cond_18

    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-eqz v0, :cond_16

    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_14

    const/4 p0, 0x5

    return p0

    :cond_14
    const/4 p0, 0x4

    return p0

    :cond_16
    const/4 p0, 0x3

    return p0

    :cond_18
    const/4 p0, 0x2

    return p0

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public static c(II)I
    .registers 2

    .line 137
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    invoke-static {p1}, Lcn;->c(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(IJ)I
    .registers 3

    .line 138
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    invoke-static {p1, p2}, Lcn;->a(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(Leh;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-interface {p0}, Leh;->f()I

    move-result p0

    return p0
.end method

.method public static c(J)J
    .registers 5

    add-long v0, p0, p0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static d(I)I
    .registers 1

    .line 128
    invoke-static {p0}, Lcn;->f(I)I

    move-result p0

    invoke-static {p0}, Lcn;->c(I)I

    move-result p0

    return p0
.end method

.method public static d(II)I
    .registers 2

    .line 127
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    invoke-static {p1}, Lcn;->d(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(IJ)I
    .registers 3

    .line 129
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    invoke-static {p1, p2}, Lcn;->b(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static e(I)I
    .registers 2

    .line 119
    invoke-static {p0}, Lcn;->c(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static e(II)I
    .registers 2

    .line 100
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    .line 101
    invoke-static {p1}, Lcn;->b(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(I)I
    .registers 2

    add-int v0, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static j(I)I
    .registers 1

    .line 95
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static k(I)I
    .registers 1

    .line 99
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static l(I)I
    .registers 1

    .line 102
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static m(I)I
    .registers 1

    .line 103
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static n(I)I
    .registers 1

    .line 104
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static o(I)I
    .registers 1

    .line 125
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static p(I)I
    .registers 1

    .line 126
    invoke-static {p0}, Lcn;->a(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 93
    invoke-virtual {p0}, Lcn;->b()I

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Did not write as much data as expected."

    .line 94
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(B)V
    .registers 5

    .line 6
    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    .line 5
    aput-byte p1, v0, v1
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    .line 0
    new-instance v0, Lcm;

    iget v1, p0, Lcn;->f:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcn;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(ID)V
    .registers 4

    .line 147
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcn;->f(IJ)V

    return-void
.end method

.method public final a(IF)V
    .registers 3

    .line 148
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcn;->i(II)V

    return-void
.end method

.method public final a(II)V
    .registers 3

    .line 150
    invoke-static {p2}, Lcn;->f(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcn;->h(II)V

    return-void
.end method

.method public final a(IJ)V
    .registers 4

    .line 151
    invoke-static {p2, p3}, Lcn;->c(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcn;->e(IJ)V

    return-void
.end method

.method public a(ILeh;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 43
    invoke-virtual {p0, v0, v1}, Lcn;->f(II)V

    const/4 v2, 0x2

    .line 44
    invoke-virtual {p0, v2, p1}, Lcn;->h(II)V

    .line 45
    invoke-virtual {p0, v1, v2}, Lcn;->f(II)V

    .line 46
    invoke-interface {p2}, Leh;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn;->h(I)V

    .line 47
    invoke-interface {p2, p0}, Leh;->a(Lcn;)V

    const/4 p1, 0x4

    .line 48
    invoke-virtual {p0, v0, p1}, Lcn;->f(II)V

    return-void
.end method

.method public a(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcn;->f(II)V

    .line 10
    invoke-virtual {p0, p2}, Lcn;->a(B)V

    return-void
.end method

.method final a(Ljava/lang/String;Lfv;)V
    .registers 9

    sget-object v0, Lcn;->c:Ljava/util/logging/Logger;

    .line 139
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    const-string v2, "com.google.protobuf.CodedOutputStream"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    sget-object p2, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 141
    :try_start_14
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcn;->h(I)V

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, p1, v0, p2}, Lcn;->b([BII)V
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_1c} :catch_1f
    .catch Lcm; {:try_start_14 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p0

    .line 143
    throw p0

    :catch_1f
    move-exception p0

    new-instance p1, Lcm;

    .line 144
    invoke-direct {p1, p0}, Lcm;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public a([BII)V
    .registers 6

    .line 8
    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    .line 7
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcn;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcn;->f:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    .line 0
    new-instance p2, Lcm;

    iget v0, p0, Lcn;->f:I

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcn;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v0, p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcn;->e:I

    iget p0, p0, Lcn;->f:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public b(ILck;)V
    .registers 4

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, p1, v0}, Lcn;->f(II)V

    .line 12
    invoke-virtual {p2}, Lck;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn;->h(I)V

    .line 13
    invoke-virtual {p2, p0}, Lck;->a(Leb;)V

    return-void
.end method

.method public b(ILeh;Les;)V
    .registers 6

    const/4 v0, 0x2

    .line 37
    invoke-virtual {p0, p1, v0}, Lcn;->f(II)V

    .line 38
    move-object p1, p2

    check-cast p1, Lbu;

    .line 39
    invoke-virtual {p1}, Lbu;->k()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 40
    invoke-interface {p3, p1}, Les;->b(Ljava/lang/Object;)I

    move-result v0

    .line 41
    invoke-virtual {p1, v0}, Lbu;->a(I)V

    .line 38
    :cond_15
    invoke-virtual {p0, v0}, Lcn;->h(I)V

    iget-object p0, p0, Lcn;->b:Lco;

    .line 42
    invoke-interface {p3, p2, p0}, Les;->a(Ljava/lang/Object;Lgb;)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    .line 53
    invoke-virtual {p0, p1, v0}, Lcn;->f(II)V

    .line 54
    invoke-virtual {p0, p2}, Lcn;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Leh;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    invoke-interface {p1, p0}, Leh;->a(Lcn;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 7

    iget v0, p0, Lcn;->f:I

    .line 55
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 56
    invoke-static {v1}, Lcn;->c(I)I

    move-result v1

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcn;->c(I)I

    move-result v2

    if-eq v2, v1, :cond_2c

    .line 58
    invoke-static {p1}, Lfx;->a(Ljava/lang/CharSequence;)I

    move-result v1

    .line 59
    invoke-virtual {p0, v1}, Lcn;->h(I)V

    iget-object v1, p0, Lcn;->d:[B

    iget v2, p0, Lcn;->f:I

    .line 60
    invoke-virtual {p0}, Lcn;->b()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lfx;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcn;->f:I

    return-void

    :cond_2c
    add-int v1, v0, v2

    iput v1, p0, Lcn;->f:I

    iget-object v3, p0, Lcn;->d:[B

    .line 61
    invoke-virtual {p0}, Lcn;->b()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lfx;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lcn;->f:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 62
    invoke-virtual {p0, v3}, Lcn;->h(I)V

    iput v1, p0, Lcn;->f:I
    :try_end_44
    .catch Lfv; {:try_start_2 .. :try_end_44} :catch_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_44} :catch_45

    return-void

    :catch_45
    move-exception p0

    new-instance p1, Lcm;

    .line 63
    invoke-direct {p1, p0}, Lcm;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4c
    move-exception v1

    iput v0, p0, Lcn;->f:I

    .line 64
    invoke-virtual {p0, p1, v1}, Lcn;->a(Ljava/lang/String;Lfv;)V

    return-void
.end method

.method public b([BII)V
    .registers 4

    const/4 p2, 0x0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcn;->a([BII)V

    return-void
.end method

.method public c(ILck;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 49
    invoke-virtual {p0, v0, v1}, Lcn;->f(II)V

    const/4 v2, 0x2

    .line 50
    invoke-virtual {p0, v2, p1}, Lcn;->h(II)V

    .line 51
    invoke-virtual {p0, v1, p2}, Lcn;->b(ILck;)V

    const/4 p1, 0x4

    .line 52
    invoke-virtual {p0, v0, p1}, Lcn;->f(II)V

    return-void
.end method

.method public d(J)V
    .registers 12

    sget-boolean v0, Lcn;->a:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_3b

    .line 84
    invoke-virtual {p0}, Lcn;->b()I

    move-result v0

    const/16 v6, 0xa

    if-ge v0, v6, :cond_12

    goto :goto_3b

    :cond_12
    :goto_12
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_2c

    .line 88
    iget-object v0, p0, Lcn;->d:[B

    iget v6, p0, Lcn;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcn;->f:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 85
    invoke-static {v0, v6, v7, v8}, Lfr;->a([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_12

    :cond_2c
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    long-to-int p0, p1

    int-to-byte p0, p0

    .line 86
    invoke-static {v0, v1, v2, p0}, Lfr;->a([BJB)V

    return-void

    :cond_3b
    :goto_3b
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_53

    .line 84
    :try_start_41
    iget-object v0, p0, Lcn;->d:[B

    iget v6, p0, Lcn;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcn;->f:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 87
    aput-byte v7, v0, v6

    ushr-long/2addr p1, v1

    goto :goto_3b

    :cond_53
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 88
    aput-byte p1, v0, v1
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_41 .. :try_end_5f} :catch_60

    return-void

    :catch_60
    move-exception p1

    .line 86
    new-instance p2, Lcm;

    iget v0, p0, Lcn;->f:I

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcn;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public e(IJ)V
    .registers 5

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, p1, v0}, Lcn;->f(II)V

    .line 83
    invoke-virtual {p0, p2, p3}, Lcn;->d(J)V

    return-void
.end method

.method public e(J)V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 23
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 24
    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 25
    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x4

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 26
    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x5

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 27
    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x6

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 28
    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x7

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 29
    aput-byte v5, v0, v3

    add-int/2addr v1, v4

    iput v1, p0, Lcn;->f:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 30
    aput-byte p1, v0, v2
    :try_end_60
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_60} :catch_61

    return-void

    :catch_61
    move-exception p1

    .line 28
    new-instance p2, Lcm;

    iget v0, p0, Lcn;->f:I

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcn;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public f(II)V
    .registers 3

    .line 65
    invoke-static {p1, p2}, Lga;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcn;->h(I)V

    return-void
.end method

.method public f(IJ)V
    .registers 5

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, p1, v0}, Lcn;->f(II)V

    .line 22
    invoke-virtual {p0, p2, p3}, Lcn;->e(J)V

    return-void
.end method

.method public g(I)V
    .registers 4

    if-gez p1, :cond_7

    int-to-long v0, p1

    .line 34
    invoke-virtual {p0, v0, v1}, Lcn;->d(J)V

    return-void

    .line 35
    :cond_7
    invoke-virtual {p0, p1}, Lcn;->h(I)V

    return-void
.end method

.method public g(II)V
    .registers 4

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Lcn;->f(II)V

    .line 33
    invoke-virtual {p0, p2}, Lcn;->g(I)V

    return-void
.end method

.method public h(I)V
    .registers 6

    sget-boolean v0, Lcn;->a:Z

    if-nez v0, :cond_6

    goto/16 :goto_ad

    .line 68
    :cond_6
    invoke-static {}, Lbx;->a()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 69
    invoke-virtual {p0}, Lcn;->b()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_ad

    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    .line 73
    invoke-static {v0, v1, v2, v3}, Lfr;->a([BJB)V

    ushr-int/lit8 v0, p1, 0x7

    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_3a

    iget-object p1, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    int-to-byte p0, v0

    .line 74
    invoke-static {p1, v1, v2, p0}, Lfr;->a([BJB)V

    return-void

    :cond_3a
    iget-object v1, p0, Lcn;->d:[B

    iget v2, p0, Lcn;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn;->f:I

    int-to-long v2, v2

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 75
    invoke-static {v1, v2, v3, v0}, Lfr;->a([BJB)V

    ushr-int/lit8 v0, p1, 0xe

    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_5d

    iget-object p1, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    int-to-byte p0, v0

    .line 76
    invoke-static {p1, v1, v2, p0}, Lfr;->a([BJB)V

    return-void

    :cond_5d
    iget-object v1, p0, Lcn;->d:[B

    iget v2, p0, Lcn;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn;->f:I

    int-to-long v2, v2

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 77
    invoke-static {v1, v2, v3, v0}, Lfr;->a([BJB)V

    ushr-int/lit8 v0, p1, 0x15

    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_80

    iget-object p1, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    int-to-byte p0, v0

    .line 78
    invoke-static {p1, v1, v2, p0}, Lfr;->a([BJB)V

    return-void

    :cond_80
    iget-object v1, p0, Lcn;->d:[B

    iget v2, p0, Lcn;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn;->f:I

    int-to-long v2, v2

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 79
    invoke-static {v1, v2, v3, v0}, Lfr;->a([BJB)V

    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    ushr-int/lit8 p0, p1, 0x1c

    int-to-byte p0, p0

    .line 80
    invoke-static {v0, v1, v2, p0}, Lfr;->a([BJB)V

    return-void

    .line 72
    :cond_9f
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    int-to-byte p0, p1

    .line 81
    invoke-static {v0, v1, v2, p0}, Lfr;->a([BJB)V

    return-void

    :cond_ad
    :goto_ad
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_c3

    .line 0
    :try_start_b1
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 70
    aput-byte v2, v0, v1

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_ad

    :cond_c3
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-byte p1, p1

    .line 71
    aput-byte p1, v0, v1
    :try_end_ce
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b1 .. :try_end_ce} :catch_cf

    return-void

    :catch_cf
    move-exception p1

    .line 80
    new-instance v0, Lcm;

    iget v1, p0, Lcn;->f:I

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcn;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public h(II)V
    .registers 4

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, v0}, Lcn;->f(II)V

    .line 67
    invoke-virtual {p0, p2}, Lcn;->h(I)V

    return-void
.end method

.method public i(I)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    .line 16
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 17
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 18
    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcn;->f:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 19
    aput-byte p1, v0, v2
    :try_end_28
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p1

    .line 17
    new-instance v0, Lcm;

    iget v1, p0, Lcn;->f:I

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcn;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public i(II)V
    .registers 4

    const/4 v0, 0x5

    .line 14
    invoke-virtual {p0, p1, v0}, Lcn;->f(II)V

    .line 15
    invoke-virtual {p0, p2}, Lcn;->i(I)V

    return-void
.end method
