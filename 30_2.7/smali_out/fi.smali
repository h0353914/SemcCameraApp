.class public final Lfi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lfi;


# instance fields
.field public b:I

.field public c:[I

.field public d:[Ljava/lang/Object;

.field public e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lfi;

    const/4 v1, 0x0

    .line 1
    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lfi;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lfi;->a:Lfi;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/16 v0, 0x8

    .line 2
    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lfi;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lfi;->f:I

    iput p1, p0, Lfi;->b:I

    iput-object p2, p0, Lfi;->c:[I

    iput-object p3, p0, Lfi;->d:[Ljava/lang/Object;

    iput-boolean p4, p0, Lfi;->e:Z

    return-void
.end method

.method static a()Lfi;
    .registers 5

    new-instance v0, Lfi;

    const/16 v1, 0x8

    .line 32
    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v3, v2, v1, v4}, Lfi;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v0
.end method

.method static a(Lfi;Lfi;)Lfi;
    .registers 8

    .line 26
    iget v0, p0, Lfi;->b:I

    iget v1, p1, Lfi;->b:I

    add-int/2addr v0, v1

    .line 27
    iget-object v1, p0, Lfi;->c:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 28
    iget-object v2, p1, Lfi;->c:[I

    iget v3, p0, Lfi;->b:I

    iget v4, p1, Lfi;->b:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 30
    iget-object v3, p1, Lfi;->d:[Ljava/lang/Object;

    iget p0, p0, Lfi;->b:I

    iget p1, p1, Lfi;->b:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lfi;

    const/4 p1, 0x1

    .line 31
    invoke-direct {p0, v0, v1, v2, p1}, Lfi;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private static a(ILjava/lang/Object;Lgb;)V
    .registers 5

    .line 41
    invoke-static {p0}, Lga;->b(I)I

    move-result v0

    .line 42
    invoke-static {p0}, Lga;->a(I)I

    move-result p0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_3e

    packed-switch p0, :pswitch_data_48

    new-instance p0, Ljava/lang/RuntimeException;

    .line 50
    invoke-static {}, Ldl;->d()Ldk;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 44
    :pswitch_18
    invoke-interface {p2, v0}, Lgb;->a(I)V

    .line 45
    check-cast p1, Lfi;

    invoke-virtual {p1, p2}, Lfi;->b(Lgb;)V

    .line 46
    invoke-interface {p2, v0}, Lgb;->b(I)V

    return-void

    .line 47
    :pswitch_24
    check-cast p1, Lck;

    invoke-interface {p2, v0, p1}, Lgb;->a(ILck;)V

    return-void

    .line 48
    :pswitch_2a
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lgb;->d(IJ)V

    return-void

    .line 49
    :pswitch_34
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lgb;->a(IJ)V

    return-void

    .line 43
    :cond_3e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lgb;->d(II)V

    return-void

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_34
        :pswitch_2a
        :pswitch_24
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method final a(ILjava/lang/Object;)V
    .registers 6

    iget-boolean v0, p0, Lfi;->e:Z

    if-eqz v0, :cond_32

    iget v0, p0, Lfi;->b:I

    iget-object v1, p0, Lfi;->c:[I

    .line 33
    array-length v2, v1

    if-eq v0, v2, :cond_c

    goto :goto_23

    :cond_c
    const/4 v2, 0x4

    if-lt v0, v2, :cond_12

    shr-int/lit8 v2, v0, 0x1

    goto :goto_14

    :cond_12
    const/16 v2, 0x8

    :goto_14
    add-int/2addr v0, v2

    .line 34
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lfi;->c:[I

    iget-object v1, p0, Lfi;->d:[Ljava/lang/Object;

    .line 35
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lfi;->d:[Ljava/lang/Object;

    .line 33
    :goto_23
    iget-object v0, p0, Lfi;->c:[I

    iget v1, p0, Lfi;->b:I

    .line 36
    aput p1, v0, v1

    iget-object p1, p0, Lfi;->d:[Ljava/lang/Object;

    .line 37
    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfi;->b:I

    return-void

    .line 35
    :cond_32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 38
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method final a(Lgb;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lfi;->b:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lfi;->c:[I

    .line 39
    aget v1, v1, v0

    invoke-static {v1}, Lga;->b(I)I

    move-result v1

    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    .line 40
    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lgb;->a(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public final b()I
    .registers 7

    iget v0, p0, Lfi;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget v2, p0, Lfi;->b:I

    if-ge v0, v2, :cond_2f

    iget-object v2, p0, Lfi;->c:[I

    .line 18
    aget v2, v2, v0

    iget-object v3, p0, Lfi;->d:[Ljava/lang/Object;

    .line 19
    aget-object v3, v3, v0

    check-cast v3, Lck;

    const/4 v4, 0x1

    .line 20
    invoke-static {v4}, Lcn;->a(I)I

    move-result v4

    add-int/2addr v4, v4

    const/4 v5, 0x2

    .line 21
    invoke-static {v2}, Lga;->b(I)I

    move-result v2

    .line 22
    invoke-static {v5, v2}, Lcn;->c(II)I

    move-result v2

    add-int/2addr v4, v2

    const/4 v2, 0x3

    .line 23
    invoke-static {v2, v3}, Lcn;->a(ILck;)I

    move-result v2

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2f
    iput v1, p0, Lfi;->f:I

    return v1

    :cond_32
    return v0
.end method

.method public final b(Lgb;)V
    .registers 5

    iget v0, p0, Lfi;->b:I

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    :goto_5
    iget v1, p0, Lfi;->b:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lfi;->c:[I

    .line 51
    aget v1, v1, v0

    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lfi;->a(ILjava/lang/Object;Lgb;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method public final c()I
    .registers 7

    iget v0, p0, Lfi;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_78

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget v2, p0, Lfi;->b:I

    if-ge v0, v2, :cond_75

    iget-object v2, p0, Lfi;->c:[I

    .line 8
    aget v2, v2, v0

    .line 9
    invoke-static {v2}, Lga;->b(I)I

    move-result v3

    .line 10
    invoke-static {v2}, Lga;->a(I)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_64

    packed-switch v2, :pswitch_data_7a

    .line 16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    invoke-static {}, Ldl;->d()Ldk;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 12
    :pswitch_27
    invoke-static {v3}, Lcn;->a(I)I

    move-result v2

    add-int/2addr v2, v2

    iget-object v3, p0, Lfi;->d:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lfi;

    .line 13
    invoke-virtual {v3}, Lfi;->c()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_72

    :pswitch_39
    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    .line 14
    aget-object v2, v2, v0

    check-cast v2, Lck;

    invoke-static {v3, v2}, Lcn;->a(ILck;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_72

    :pswitch_45
    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    .line 15
    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    invoke-static {v3}, Lcn;->m(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_72

    :pswitch_54
    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    .line 16
    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcn;->c(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_72

    .line 10
    :cond_64
    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    .line 11
    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    invoke-static {v3}, Lcn;->l(I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 16
    :cond_75
    iput v1, p0, Lfi;->f:I

    return v1

    :cond_78
    return v0

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_54
        :pswitch_45
        :pswitch_39
        :pswitch_27
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3a

    const/4 v1, 0x0

    if-eqz p1, :cond_39

    .line 4
    instance-of v2, p1, Lfi;

    if-eqz v2, :cond_39

    .line 5
    check-cast p1, Lfi;

    iget v2, p0, Lfi;->b:I

    iget v3, p1, Lfi;->b:I

    if-ne v2, v3, :cond_39

    iget-object v3, p0, Lfi;->c:[I

    iget-object v4, p1, Lfi;->c:[I

    move v5, v1

    :goto_17
    if-lt v5, v2, :cond_30

    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    iget-object p1, p1, Lfi;->d:[Ljava/lang/Object;

    iget v3, p0, Lfi;->b:I

    move v4, v1

    :goto_20
    if-ge v4, v3, :cond_2f

    .line 7
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_2f
    return v0

    .line 6
    :cond_30
    aget v6, v3, v5

    aget v7, v4, v5

    if-ne v6, v7, :cond_39

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_39
    return v1

    :cond_3a
    return v0
.end method

.method public final hashCode()I
    .registers 9

    iget v0, p0, Lfi;->b:I

    add-int/lit16 v1, v0, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lfi;->c:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    move v5, v3

    move v6, v4

    :goto_d
    if-lt v5, v0, :cond_26

    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lfi;->d:[Ljava/lang/Object;

    iget v2, p0, Lfi;->b:I

    :goto_16
    if-ge v3, v2, :cond_24

    mul-int/lit8 v4, v4, 0x1f

    .line 25
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_24
    add-int/2addr v1, v4

    return v1

    :cond_26
    mul-int/lit8 v6, v6, 0x1f

    .line 24
    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_d
.end method
