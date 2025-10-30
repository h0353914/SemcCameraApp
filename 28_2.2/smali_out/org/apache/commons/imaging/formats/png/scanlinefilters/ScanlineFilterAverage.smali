.class public Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;
.super Ljava/lang/Object;
.source "ScanlineFilterAverage.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;


# instance fields
.field private final bytesPerPixel:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;->bytesPerPixel:I

    return-void
.end method


# virtual methods
.method public unfilter([B[B[B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 32
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 34
    iget v2, p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;->bytesPerPixel:I

    sub-int v2, v1, v2

    if-ltz v2, :cond_e

    .line 36
    aget-byte v2, p2, v2

    goto :goto_f

    :cond_e
    move v2, v0

    :goto_f
    if-eqz p3, :cond_14

    .line 41
    aget-byte v3, p3, v1

    goto :goto_15

    :cond_14
    move v3, v0

    :goto_15
    const/16 v4, 0xff

    and-int/2addr v2, v4

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 44
    div-int/lit8 v2, v2, 0x2

    .line 46
    aget-byte v3, p1, v1

    add-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0x100

    int-to-byte v2, v3

    aput-byte v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_27
    return-void
.end method
