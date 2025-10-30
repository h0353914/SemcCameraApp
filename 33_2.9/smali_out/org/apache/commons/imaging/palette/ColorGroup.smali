.class Lorg/apache/commons/imaging/palette/ColorGroup;
.super Ljava/lang/Object;
.source "ColorGroup.java"


# instance fields
.field public final alphaDiff:I

.field public final blueDiff:I

.field public final colorCounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorCount;",
            ">;"
        }
    .end annotation
.end field

.field public cut:Lorg/apache/commons/imaging/palette/ColorGroupCut;

.field public final diffTotal:I

.field public final greenDiff:I

.field public final ignoreAlpha:Z

.field public maxAlpha:I

.field public maxBlue:I

.field public final maxDiff:I

.field public maxGreen:I

.field public maxRed:I

.field public minAlpha:I

.field public minBlue:I

.field public minGreen:I

.field public minRed:I

.field public paletteIndex:I

.field public final redDiff:I

.field public final totalPoints:I


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorCount;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->paletteIndex:I

    const v0, 0x7fffffff

    .line 31
    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minRed:I

    const/high16 v1, -0x80000000

    .line 32
    iput v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxRed:I

    .line 33
    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minGreen:I

    .line 34
    iput v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxGreen:I

    .line 35
    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minBlue:I

    .line 36
    iput v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxBlue:I

    .line 37
    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minAlpha:I

    .line 38
    iput v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxAlpha:I

    .line 50
    iput-object p1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    .line 51
    iput-boolean p2, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->ignoreAlpha:Z

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c6

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/palette/ColorCount;

    .line 59
    iget v3, v2, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    add-int/2addr v1, v3

    .line 61
    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minAlpha:I

    iget v4, v2, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minAlpha:I

    .line 62
    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxAlpha:I

    iget v4, v2, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxAlpha:I

    .line 63
    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minRed:I

    iget v4, v2, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minRed:I

    .line 64
    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxRed:I

    iget v4, v2, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxRed:I

    .line 65
    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minGreen:I

    iget v4, v2, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minGreen:I

    .line 66
    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxGreen:I

    iget v4, v2, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxGreen:I

    .line 67
    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minBlue:I

    iget v4, v2, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minBlue:I

    .line 68
    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxBlue:I

    iget v2, v2, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxBlue:I

    goto :goto_2c

    .line 70
    :cond_8c
    iput v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    .line 72
    iget p1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxAlpha:I

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minAlpha:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->alphaDiff:I

    .line 73
    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxRed:I

    iget v2, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minRed:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->redDiff:I

    .line 74
    iget v2, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxGreen:I

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minGreen:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->greenDiff:I

    .line 75
    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxBlue:I

    iget v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minBlue:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->blueDiff:I

    if-eqz p2, :cond_ae

    move v4, v1

    goto :goto_b2

    .line 76
    :cond_ae
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_b2
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    if-eqz p2, :cond_bf

    goto :goto_c0

    :cond_bf
    move v0, p1

    :goto_c0
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 79
    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->diffTotal:I

    return-void

    .line 54
    :cond_c6
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "empty color_group"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public contains(I)Z
    .registers 7

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    shr-int/2addr p1, v3

    and-int/lit16 p1, p1, 0xff

    .line 88
    iget-boolean v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->ignoreAlpha:Z

    if-nez v4, :cond_1d

    iget v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minAlpha:I

    if-lt v0, v4, :cond_1c

    iget v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxAlpha:I

    if-le v0, v4, :cond_1d

    :cond_1c
    return v3

    .line 91
    :cond_1d
    iget v0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minRed:I

    if-lt v1, v0, :cond_3a

    iget v0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxRed:I

    if-le v1, v0, :cond_26

    goto :goto_3a

    .line 94
    :cond_26
    iget v0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minGreen:I

    if-lt v2, v0, :cond_3a

    iget v0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxGreen:I

    if-le v2, v0, :cond_2f

    goto :goto_3a

    .line 97
    :cond_2f
    iget v0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minBlue:I

    if-lt p1, v0, :cond_3a

    iget p0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxBlue:I

    if-le p1, p0, :cond_38

    goto :goto_3a

    :cond_38
    const/4 p0, 0x1

    return p0

    :cond_3a
    :goto_3a
    return v3
.end method

.method public getMedianValue()I
    .registers 15

    .line 110
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    move-wide v7, v5

    move-wide v9, v7

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/imaging/palette/ColorCount;

    .line 111
    iget v12, v11, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    int-to-long v12, v12

    add-long/2addr v1, v12

    .line 112
    iget v12, v11, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    iget v13, v11, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    mul-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v3, v12

    .line 113
    iget v12, v11, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    iget v13, v11, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    mul-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v5, v12

    .line 114
    iget v12, v11, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    iget v13, v11, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    mul-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v7, v12

    .line 115
    iget v12, v11, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    iget v11, v11, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    mul-int/2addr v12, v11

    int-to-long v11, v12

    add-long/2addr v9, v11

    goto :goto_c

    .line 118
    :cond_39
    iget-boolean p0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->ignoreAlpha:Z

    if-eqz p0, :cond_40

    const/16 p0, 0xff

    goto :goto_48

    :cond_40
    long-to-double v3, v3

    long-to-double v11, v1

    div-double/2addr v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int p0, v3

    :goto_48
    long-to-double v3, v5

    long-to-double v0, v1

    div-double/2addr v3, v0

    .line 119
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    long-to-double v3, v7

    div-double/2addr v3, v0

    .line 120
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    long-to-double v4, v9

    div-double/2addr v4, v0

    .line 121
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 v1, v2, 0x10

    or-int/2addr p0, v1

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ColorGroup. minRed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minRed:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxRed:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minGreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minGreen:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxGreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxGreen:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minBlue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minBlue:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBlue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxBlue:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minAlpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minAlpha:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxAlpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxAlpha:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxDiff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diffTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->diffTotal:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
