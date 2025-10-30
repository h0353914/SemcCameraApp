.class final Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$1;
.super Ljava/lang/Object;
.source "TiffOutputDirectory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 64
    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$1;->compare(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)I
    .registers 5

    .line 66
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    iget v1, p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    if-ge v0, v1, :cond_8

    const/4 p1, -0x1

    return p1

    .line 68
    :cond_8
    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    iget p2, p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    if-le p1, p2, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method
