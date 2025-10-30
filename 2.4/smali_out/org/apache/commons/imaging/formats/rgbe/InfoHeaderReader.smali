.class Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;
.super Ljava/lang/Object;
.source "InfoHeaderReader.java"


# instance fields
.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->is:Ljava/io/InputStream;

    return-void
.end method

.method private read()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_a

    int-to-char v0, v0

    return v0

    .line 32
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "HDR: Unexpected EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public readNextLine()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    :goto_5
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->read()C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_11

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 45
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
