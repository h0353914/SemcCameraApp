.class Lci;
.super Lch;
.source "PG"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final a:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lch;-><init>()V

    if-eqz p1, :cond_8

    .line 2
    iput-object p1, p0, Lci;->a:[B

    return-void

    :cond_8
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public a(I)B
    .registers 3

    iget-object v0, p0, Lci;->a:[B

    .line 3
    aget-byte p1, v0, p1

    return p1
.end method

.method public a()I
    .registers 2

    iget-object v0, p0, Lci;->a:[B

    array-length v0, v0

    return v0
.end method

.method protected final a(II)I
    .registers 5

    iget-object v0, p0, Lci;->a:[B

    .line 25
    invoke-virtual {p0}, Lci;->b()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Ldj;->a(I[BII)I

    move-result p1

    return p1
.end method

.method protected final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lci;->a:[B

    .line 28
    invoke-virtual {p0}, Lci;->b()I

    move-result v2

    invoke-virtual {p0}, Lci;->a()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final a(Leb;)V
    .registers 5

    iget-object v0, p0, Lci;->a:[B

    .line 29
    invoke-virtual {p0}, Lci;->b()I

    move-result v1

    invoke-virtual {p0}, Lci;->a()I

    move-result v2

    check-cast p1, Lcn;

    .line 30
    invoke-virtual {p1, v0, v1, v2}, Lcn;->a([BII)V

    return-void
.end method

.method protected a([BI)V
    .registers 3

    const/4 p1, 0x0

    throw p1
.end method

.method public b(I)B
    .registers 3

    iget-object v0, p0, Lci;->a:[B

    .line 22
    aget-byte p1, v0, p1

    return p1
.end method

.method protected b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)Lck;
    .registers 5

    .line 26
    invoke-virtual {p0}, Lci;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lci;->a(III)I

    move-result p1

    if-eqz p1, :cond_17

    new-instance v0, Lcd;

    iget-object v1, p0, Lci;->a:[B

    .line 27
    invoke-virtual {p0}, Lci;->b()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcd;-><init>([BII)V

    return-object v0

    :cond_17
    sget-object p1, Lck;->b:Lck;

    return-object p1
.end method

.method public final c()Z
    .registers 4

    .line 23
    invoke-virtual {p0}, Lci;->b()I

    move-result v0

    iget-object v1, p0, Lci;->a:[B

    .line 24
    invoke-virtual {p0}, Lci;->a()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lfx;->a([BII)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-eq p1, p0, :cond_c2

    .line 4
    instance-of v1, p1, Lck;

    const/4 v2, 0x0

    if-eqz v1, :cond_c1

    .line 5
    invoke-virtual {p0}, Lci;->a()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lck;

    invoke-virtual {v3}, Lck;->a()I

    move-result v3

    if-ne v1, v3, :cond_c1

    .line 6
    invoke-virtual {p0}, Lci;->a()I

    move-result v1

    if-eqz v1, :cond_c0

    .line 7
    instance-of v1, p1, Lci;

    if-eqz v1, :cond_bb

    .line 8
    check-cast p1, Lci;

    iget v1, p0, Lck;->c:I

    iget v3, p1, Lck;->c:I

    if-nez v1, :cond_28

    goto :goto_2d

    :cond_28
    if-eqz v3, :cond_2d

    if-eq v1, v3, :cond_2d

    return v2

    .line 9
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lci;->a()I

    move-result v1

    .line 10
    invoke-virtual {p1}, Lck;->a()I

    move-result v3

    if-gt v1, v3, :cond_9b

    .line 12
    invoke-virtual {p1}, Lck;->a()I

    move-result v3

    if-gt v1, v3, :cond_6e

    .line 14
    instance-of v3, p1, Lci;

    if-eqz v3, :cond_61

    iget-object v3, p0, Lci;->a:[B

    .line 15
    iget-object v4, p1, Lci;->a:[B

    .line 16
    invoke-virtual {p0}, Lci;->b()I

    move-result v5

    add-int/2addr v5, v1

    .line 17
    invoke-virtual {p0}, Lci;->b()I

    move-result v1

    .line 18
    invoke-virtual {p1}, Lci;->b()I

    move-result p1

    :goto_52
    if-ge v1, v5, :cond_6d

    .line 19
    aget-byte v6, v3, v1

    aget-byte v7, v4, p1

    if-ne v6, v7, :cond_5f

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_52

    :cond_5f
    move v0, v2

    goto :goto_6d

    .line 20
    :cond_61
    invoke-virtual {p1, v1}, Lck;->c(I)Lck;

    move-result-object p1

    invoke-virtual {p0, v1}, Lci;->c(I)Lck;

    move-result-object v0

    invoke-virtual {p1, v0}, Lck;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_6d
    :goto_6d
    return v0

    .line 12
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    invoke-virtual {p1}, Lck;->a()I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ran off end of other: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_9b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    invoke-virtual {p0}, Lci;->a()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Length too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_bb
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_c0
    return v0

    :cond_c1
    return v2

    :cond_c2
    return v0
.end method
