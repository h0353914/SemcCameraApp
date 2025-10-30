.class public abstract Lck;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Lce;

.field public static final b:Lck;


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lci;

    .line 1
    sget-object v1, Ldj;->b:[B

    invoke-direct {v0, v1}, Lci;-><init>([B)V

    sput-object v0, Lck;->b:Lck;

    .line 2
    invoke-static {}, Lbx;->a()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Lcc;

    .line 3
    invoke-direct {v0}, Lcc;-><init>()V

    goto :goto_1a

    :cond_15
    new-instance v0, Lcj;

    .line 4
    invoke-direct {v0}, Lcj;-><init>()V

    .line 3
    :goto_1a
    sput-object v0, Lck;->a:Lce;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lck;->c:I

    return-void
.end method

.method static a(III)I
    .registers 6

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_6e

    if-ltz p0, :cond_50

    if-ge p1, p0, :cond_2f

    .line 6
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x42

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Beginning index larger than ending index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2f
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 0
    :cond_50
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 6
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    return v0
.end method

.method public static a(Ljava/lang/String;)Lck;
    .registers 3

    new-instance v0, Lci;

    .line 11
    sget-object v1, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lci;-><init>([B)V

    return-object v0
.end method

.method public static a([BII)Lck;
    .registers 5

    add-int v0, p1, p2

    .line 9
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lck;->a(III)I

    new-instance v0, Lci;

    sget-object v1, Lck;->a:Lce;

    .line 10
    invoke-interface {v1, p0, p1, p2}, Lce;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lci;-><init>([B)V

    return-object v0
.end method

.method static d(I)Lcg;
    .registers 2

    new-instance v0, Lcg;

    .line 16
    invoke-direct {v0, p0}, Lcg;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)B
.end method

.method public abstract a()I
.end method

.method protected abstract a(II)I
.end method

.method protected abstract a(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract a(Leb;)V
.end method

.method protected abstract a([BI)V
.end method

.method public abstract b(I)B
.end method

.method public abstract c(I)Lck;
.end method

.method public abstract c()Z
.end method

.method public final d()Lcf;
    .registers 2

    new-instance v0, Lcb;

    .line 14
    invoke-direct {v0, p0}, Lcb;-><init>(Lck;)V

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 3

    .line 21
    sget-object v0, Ldj;->a:Ljava/nio/charset/Charset;

    .line 22
    invoke-virtual {p0}, Lck;->a()I

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v0}, Lck;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_d
    const-string v0, ""

    :goto_f
    return-object v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lck;->c:I

    if-nez v0, :cond_12

    .line 12
    invoke-virtual {p0}, Lck;->a()I

    move-result v0

    .line 13
    invoke-virtual {p0, v0, v0}, Lck;->a(II)I

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    iput v0, p0, Lck;->c:I

    :cond_12
    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 15
    invoke-virtual {p0}, Lck;->d()Lcf;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 17
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 19
    invoke-virtual {p0}, Lck;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 20
    invoke-virtual {p0}, Lck;->a()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_38

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lck;->c(I)Lck;

    move-result-object v2

    invoke-static {v2}, Lff;->a(Lck;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    :cond_38
    invoke-static {p0}, Lff;->a(Lck;)Ljava/lang/String;

    move-result-object v2

    :goto_3c
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    .line 17
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
