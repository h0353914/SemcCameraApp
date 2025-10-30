.class public final Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;
.super Ljava/lang/Object;
.source "MyLzwDecompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;
    }
.end annotation


# static fields
.field private static final MAX_TABLE_SIZE:I = 0x1000


# instance fields
.field private final byteOrder:Ljava/nio/ByteOrder;

.field private final clearCode:I

.field private codeSize:I

.field private codes:I

.field private final eoiCode:I

.field private final initialCodeSize:I

.field private final listener:Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;

.field private final table:[[B

.field private tiffLZWMode:Z

.field private written:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteOrder;)V
    .registers 4

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;-><init>(ILjava/nio/ByteOrder;Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;)V

    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteOrder;Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;)V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codes:I

    .line 50
    iput-object p3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->listener:Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;

    .line 51
    iput-object p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->byteOrder:Ljava/nio/ByteOrder;

    .line 53
    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->initialCodeSize:I

    const/16 p2, 0x1000

    new-array p2, p2, [[B

    .line 55
    iput-object p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->table:[[B

    const/4 p2, 0x1

    shl-int p1, p2, p1

    .line 56
    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->clearCode:I

    add-int/lit8 p2, p1, 0x1

    .line 57
    iput p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->eoiCode:I

    if-eqz p3, :cond_20

    .line 60
    invoke-interface {p3, p1, p2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;->init(II)V

    .line 63
    :cond_20
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->initializeTable()V

    return-void
.end method

.method private addStringToTable([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codes:I

    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codeSize:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    if-ge v0, v1, :cond_14

    .line 109
    iget-object v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->table:[[B

    aput-object p1, v1, v0

    add-int/2addr v0, v2

    .line 110
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codes:I

    .line 115
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->checkCodeSize()V

    return-void

    .line 112
    :cond_14
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddStringToTable: codes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " code_size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codeSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private appendBytes([BB)[B
    .registers 6

    .line 119
    array-length p0, p1

    add-int/lit8 p0, p0, 0x1

    new-array v0, p0, [B

    .line 121
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p0, p0, -0x1

    .line 122
    aput-byte p2, v0, p0

    return-object v0
.end method

.method private checkCodeSize()V
    .registers 3

    .line 189
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codeSize:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 190
    iget-boolean v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->tiffLZWMode:Z

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, -0x1

    .line 194
    :cond_b
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codes:I

    if-ne v1, v0, :cond_12

    .line 195
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->incrementCodeSize()V

    :cond_12
    return-void
.end method

.method private clearTable()V
    .registers 3

    .line 77
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->initialCodeSize:I

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codes:I

    .line 78
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codeSize:I

    .line 79
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->incrementCodeSize()V

    return-void
.end method

.method private firstChar([B)B
    .registers 2

    const/4 p0, 0x0

    .line 104
    aget-byte p0, p1, p0

    return p0
.end method

.method private getNextCode(Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codeSize:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->readBits(I)I

    move-result p1

    .line 85
    iget-object p0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->listener:Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;

    if-eqz p0, :cond_d

    .line 86
    invoke-interface {p0, p1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;->code(I)V

    :cond_d
    return p1
.end method

.method private incrementCodeSize()V
    .registers 3

    .line 200
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codeSize:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    .line 201
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codeSize:I

    :cond_a
    return-void
.end method

.method private initializeTable()V
    .registers 8

    .line 67
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->initialCodeSize:I

    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codeSize:I

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_19

    .line 72
    iget-object v4, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->table:[[B

    new-array v5, v1, [B

    int-to-byte v6, v3

    aput-byte v6, v5, v2

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    return-void
.end method

.method private isInTable(I)Z
    .registers 2

    .line 100
    iget p0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codes:I

    if-ge p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private stringFromCode(I)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codes:I

    if-ge p1, v0, :cond_b

    if-ltz p1, :cond_b

    .line 96
    iget-object p0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->table:[[B

    aget-object p0, p0, p1

    return-object p0

    .line 93
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " codes: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codes:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " code_size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->codeSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", table: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->table:[[B

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeToResult(Ljava/io/OutputStream;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 129
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->written:I

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->written:I

    return-void
.end method


# virtual methods
.method public decompress(Ljava/io/InputStream;I)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;

    iget-object v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 140
    iget-boolean p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->tiffLZWMode:Z

    if-eqz p1, :cond_e

    .line 141
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->setTiffLZWMode()V

    .line 144
    :cond_e
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 146
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->clearTable()V

    const/4 v1, -0x1

    .line 148
    :cond_17
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->getNextCode(Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->eoiCode:I

    if-eq v2, v3, :cond_78

    .line 149
    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->clearCode:I

    if-ne v2, v3, :cond_3c

    .line 150
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->clearTable()V

    .line 152
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->written:I

    if-lt v1, p2, :cond_2b

    goto :goto_78

    .line 155
    :cond_2b
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->getNextCode(Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;)I

    move-result v1

    .line 157
    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->eoiCode:I

    if-ne v1, v2, :cond_34

    goto :goto_78

    .line 160
    :cond_34
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->stringFromCode(I)[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->writeToResult(Ljava/io/OutputStream;[B)V

    goto :goto_74

    .line 165
    :cond_3c
    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->isInTable(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 166
    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->stringFromCode(I)[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->writeToResult(Ljava/io/OutputStream;[B)V

    .line 168
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->stringFromCode(I)[B

    move-result-object v1

    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->stringFromCode(I)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->firstChar([B)B

    move-result v3

    invoke-direct {p0, v1, v3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->appendBytes([BB)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->addStringToTable([B)V

    goto :goto_73

    .line 172
    :cond_5d
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->stringFromCode(I)[B

    move-result-object v3

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->stringFromCode(I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->firstChar([B)B

    move-result v1

    invoke-direct {p0, v3, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->appendBytes([BB)[B

    move-result-object v1

    .line 174
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->writeToResult(Ljava/io/OutputStream;[B)V

    .line 175
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->addStringToTable([B)V

    :goto_73
    move v1, v2

    .line 180
    :goto_74
    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->written:I

    if-lt v2, p2, :cond_17

    .line 185
    :cond_78
    :goto_78
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public setTiffLZWMode()V
    .registers 2

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->tiffLZWMode:Z

    return-void
.end method
