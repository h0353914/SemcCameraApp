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

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lci;->a:[B

    return-void
.end method


# virtual methods
.method public a(I)B
    .registers 2

    iget-object p0, p0, Lci;->a:[B

    .line 3
    aget-byte p0, p0, p1

    return p0
.end method

.method public a()I
    .registers 1

    iget-object p0, p0, Lci;->a:[B

    array-length p0, p0

    return p0
.end method

.method protected final a(II)I
    .registers 4

    iget-object v0, p0, Lci;->a:[B

    .line 25
    invoke-virtual {p0}, Lci;->b()I

    move-result p0

    invoke-static {p1, v0, p0, p2}, Ldj;->a(I[BII)I

    move-result p0

    return p0
.end method

.method protected final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lci;->a:[B

    .line 28
    invoke-virtual {p0}, Lci;->b()I

    move-result v2

    invoke-virtual {p0}, Lci;->a()I

    move-result p0

    invoke-direct {v0, v1, v2, p0, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final a(Leb;)V
    .registers 4

    iget-object v0, p0, Lci;->a:[B

    .line 29
    invoke-virtual {p0}, Lci;->b()I

    move-result v1

    invoke-virtual {p0}, Lci;->a()I

    move-result p0

    check-cast p1, Lcn;

    .line 30
    invoke-virtual {p1, v0, v1, p0}, Lcn;->a([BII)V

    return-void
.end method

.method protected a([BI)V
    .registers 3

    const/4 p0, 0x0

    throw p0
.end method

.method public b(I)B
    .registers 2

    iget-object p0, p0, Lci;->a:[B

    .line 22
    aget-byte p0, p0, p1

    return p0
.end method

.method protected b()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final c(I)Lck;
    .registers 4

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0}, Lci;->a()I

    move-result v1

    invoke-static {v0, p1, v1}, Lci;->a(III)I

    move-result p1

    if-eqz p1, :cond_17

    new-instance v0, Lcd;

    iget-object v1, p0, Lci;->a:[B

    .line 27
    invoke-virtual {p0}, Lci;->b()I

    move-result p0

    invoke-direct {v0, v1, p0, p1}, Lcd;-><init>([BII)V

    return-object v0

    :cond_17
    sget-object p0, Lck;->b:Lck;

    return-object p0
.end method

.method public final c()Z
    .registers 3

    .line 23
    invoke-virtual {p0}, Lci;->b()I

    move-result v0

    iget-object v1, p0, Lci;->a:[B

    .line 24
    invoke-virtual {p0}, Lci;->a()I

    move-result p0

    add-int/2addr p0, v0

    invoke-static {v1, v0, p0}, Lfx;->a([BII)Z

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-eq p1, p0, :cond_ba

    .line 4
    instance-of v1, p1, Lck;

    const/4 v2, 0x0

    if-eqz v1, :cond_b9

    .line 5
    invoke-virtual {p0}, Lci;->a()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lck;

    invoke-virtual {v3}, Lck;->a()I

    move-result v3

    if-ne v1, v3, :cond_b9

    .line 6
    invoke-virtual {p0}, Lci;->a()I

    move-result v1

    if-eqz v1, :cond_b8

    .line 7
    instance-of v1, p1, Lci;

    if-eqz v1, :cond_b3

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

    if-gt v1, v3, :cond_93

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

    move-result p0

    .line 18
    invoke-virtual {p1}, Lci;->b()I

    move-result p1

    :goto_52
    if-ge p0, v5, :cond_6d

    .line 19
    aget-byte v1, v3, p0

    aget-byte v6, v4, p1

    if-ne v1, v6, :cond_5f

    add-int/lit8 p0, p0, 0x1

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

    move-result-object p0

    invoke-virtual {p1, p0}, Lck;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_6d
    :goto_6d
    return v0

    .line 12
    :cond_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    invoke-virtual {p1}, Lck;->a()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ran off end of other: 0, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    invoke-virtual {p0}, Lci;->a()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length too large: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_b3
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b8
    return v0

    :cond_b9
    return v2

    :cond_ba
    return v0
.end method
