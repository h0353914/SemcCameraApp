.class Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "FastByteArrayOutputStream.java"


# instance fields
.field private final bytes:[B

.field private count:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 31
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    return-void
.end method


# virtual methods
.method public getBytesWritten()I
    .registers 2

    .line 54
    iget v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    return v0
.end method

.method public toByteArray()[B
    .registers 5

    .line 45
    iget v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    iget-object v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 46
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 47
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_e
    return-object v1
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    iget-object v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    array-length v2, v1

    if-ge v0, v2, :cond_f

    int-to-byte p1, p1

    .line 40
    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 41
    iput v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    return-void

    .line 37
    :cond_f
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write exceeded expected length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
