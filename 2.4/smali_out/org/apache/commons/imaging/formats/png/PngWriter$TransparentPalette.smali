.class Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;
.super Ljava/lang/Object;
.source "PngWriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/Palette;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/png/PngWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransparentPalette"
.end annotation


# instance fields
.field private final palette:Lorg/apache/commons/imaging/palette/Palette;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/palette/Palette;)V
    .registers 2

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;->palette:Lorg/apache/commons/imaging/palette/Palette;

    return-void
.end method


# virtual methods
.method public getEntry(I)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 323
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;->palette:Lorg/apache/commons/imaging/palette/Palette;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result p1

    return p1
.end method

.method public getPaletteIndex(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 334
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;->palette:Lorg/apache/commons/imaging/palette/Palette;

    invoke-interface {v0, p1}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result p1

    if-ltz p1, :cond_f

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_f
    return p1
.end method

.method public length()I
    .registers 2

    .line 327
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;->palette:Lorg/apache/commons/imaging/palette/Palette;

    invoke-interface {v0}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
