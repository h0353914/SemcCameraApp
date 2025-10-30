.class public Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserBitmap;
.super Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.source "DataParserBitmap.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected getRGB([[[IIILorg/apache/commons/imaging/formats/psd/ImageContents;)I
    .registers 5

    const/4 p4, 0x0

    .line 26
    aget-object p1, p1, p4

    aget-object p1, p1, p3

    aget p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p1, p2

    if-nez p1, :cond_e

    move p1, p2

    goto :goto_f

    :cond_e
    move p1, p4

    :goto_f
    const/high16 p3, -0x1000000

    and-int/2addr p1, p2

    shl-int/lit8 p2, p1, 0x10

    or-int/2addr p2, p3

    shl-int/lit8 p3, p1, 0x8

    or-int/2addr p2, p3

    shl-int/2addr p1, p4

    or-int/2addr p1, p2

    return p1
.end method
