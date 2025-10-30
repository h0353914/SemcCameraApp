.class public Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;
.super Lorg/apache/commons/imaging/common/bytesource/ByteSource;
.source "ByteSourceFile.java"


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 34
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getAll()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 80
    :try_start_8
    new-instance v4, Ljava/io/FileInputStream;

    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;->file:Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_31

    .line 81
    :try_start_f
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_2e

    const/16 p0, 0x400

    :try_start_16
    new-array p0, p0, [B

    .line 84
    :goto_18
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_22

    .line 85
    invoke-virtual {v0, p0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_18

    .line 87
    :cond_22
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_31

    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v3, v0, v2

    .line 91
    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_2e
    move-exception p0

    move-object v3, v4

    goto :goto_32

    :catchall_31
    move-exception p0

    :goto_32
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v3, v0, v2

    invoke-static {v2, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method public getBlock(JI)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 49
    :try_start_3
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;->file:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_6a

    const-wide/16 v4, 0x0

    cmp-long p0, p1, v4

    if-ltz p0, :cond_30

    if-ltz p3, :cond_30

    int-to-long v6, p3

    add-long/2addr v6, p1

    cmp-long p0, v6, v4

    if-ltz p0, :cond_30

    .line 52
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long p0, v6, v4

    if-gtz p0, :cond_30

    const-string p0, "Could not read value from file"

    .line 59
    invoke-static {v3, p1, p2, p3, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->getRAFBytes(Ljava/io/RandomAccessFile;JILjava/lang/String;)[B

    move-result-object p0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_67

    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v3, p1, v1

    .line 64
    invoke-static {v0, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    .line 54
    :cond_30
    :try_start_30
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read block (block start: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", block length: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", data length: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_67
    .catchall {:try_start_30 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception p0

    move-object v2, v3

    goto :goto_6b

    :catchall_6a
    move-exception p0

    :goto_6b
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v2, p1, v1

    .line 64
    invoke-static {v1, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;->file:Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getLength()J
    .registers 3

    .line 70
    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
