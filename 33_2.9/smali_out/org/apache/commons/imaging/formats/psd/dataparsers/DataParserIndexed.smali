.class public Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;
.super Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.source "DataParserIndexed.java"


# instance fields
.field private final colorTable:[I


# direct methods
.method public constructor <init>([B)V
    .registers 9

    .line 24
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 25
    iput-object v1, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->colorTable:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_36

    add-int/lit8 v3, v2, 0x0

    .line 27
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v4, v2, 0x100

    .line 28
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v5, v2, 0x200

    .line 29
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    const/high16 v6, -0x1000000

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v4, v5, 0xff

    shl-int/2addr v4, v1

    or-int/2addr v3, v4

    .line 35
    iget-object v4, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->colorTable:[I

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_36
    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected getRGB([[[IIILorg/apache/commons/imaging/formats/psd/ImageContents;)I
    .registers 5

    const/4 p4, 0x0

    .line 41
    aget-object p1, p1, p4

    aget-object p1, p1, p3

    aget p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 42
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->colorTable:[I

    aget p0, p0, p1

    return p0
.end method
