.class public Lorg/apache/commons/imaging/palette/PaletteFactory;
.super Ljava/lang/Object;
.source "PaletteFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;
    }
.end annotation


# static fields
.field public static final COMPONENTS:I = 0x3

.field private static final DEBUG:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private divide(Ljava/util/List;I[II)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            ">;I[II)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    .line 277
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_b

    .line 280
    :cond_1e
    iget v5, v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    if-nez v2, :cond_23

    goto :goto_25

    :cond_23
    if-le v5, v1, :cond_b

    :goto_25
    move-object v2, v4

    move v1, v5

    goto :goto_b

    :cond_28
    if-nez v2, :cond_2b

    return-object p1

    .line 298
    :cond_2b
    invoke-direct {p0, p3, v2, p4}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;I)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 301
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 302
    # getter for: Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->dst_a:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
    invoke-static {v1}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->access$000(Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    # getter for: Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->dst_b:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
    invoke-static {v1}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->access$100(Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 305
    :cond_43
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :goto_46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, p2, :cond_5

    return-object p1
.end method

.method private divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            "II)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;",
            ">;"
        }
    .end annotation

    move-object v6, p2

    .line 181
    iget v0, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    .line 183
    iget-object v1, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    array-length v1, v1

    new-array v1, v1, [I

    .line 184
    iget-object v2, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    iget-object v3, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v2, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    array-length v2, v2

    new-array v2, v2, [I

    .line 186
    iget-object v3, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    iget-object v5, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    array-length v5, v5

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v3, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v3, v3, p3

    move v5, v3

    move v3, v4

    :goto_24
    iget-object v7, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v7, v7, p3

    add-int/lit8 v7, v7, 0x1

    if-eq v5, v7, :cond_41

    .line 193
    aput v5, v1, p3

    .line 194
    aput v5, v2, p3

    move-object v7, p0

    move-object v8, p1

    move/from16 v9, p4

    .line 196
    invoke-direct {p0, p1, v1, v2, v9}, Lorg/apache/commons/imaging/palette/PaletteFactory;->getFrequencyTotal([I[I[II)I

    move-result v3

    add-int/2addr v4, v3

    .line 200
    div-int/lit8 v10, v0, 0x2

    if-lt v4, v10, :cond_3e

    goto :goto_44

    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_41
    move-object v7, p0

    move/from16 v9, p4

    :goto_44
    sub-int v8, v4, v3

    add-int/lit8 v10, v5, -0x1

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    .line 208
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/palette/PaletteFactory;->finishDivision(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;IIII)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    move-result-object v11

    move v4, v8

    move v5, v10

    .line 209
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/palette/PaletteFactory;->finishDivision(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;IIII)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_61

    .line 214
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61
    if-eqz v0, :cond_66

    .line 217
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_66
    return-object v1
.end method

.method private divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;I)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;
    .registers 10

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 227
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    .line 228
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x2

    .line 229
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    .line 235
    # getter for: Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->dst_a:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
    invoke-static {p3}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->access$000(Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v2

    .line 236
    # getter for: Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->dst_b:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
    invoke-static {p3}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->access$100(Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v3

    .line 237
    iget v2, v2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    .line 238
    iget v3, v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    sub-int v4, v2, v3

    .line 240
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    .line 241
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v4, v2

    if-nez p2, :cond_4f

    goto :goto_53

    :cond_4f
    cmpg-double v2, v4, v0

    if-gez v2, :cond_27

    :goto_53
    move-object p2, p3

    move-wide v0, v4

    goto :goto_27

    :cond_56
    return-object p2
.end method

.method private finishDivision(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;IIII)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;
    .registers 13

    .line 134
    iget v0, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    .line 136
    iget-object v1, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v1, v1, p2

    const/4 v2, 0x0

    if-lt p5, v1, :cond_53

    iget-object v1, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v1, v1, p2

    if-lt p5, v1, :cond_10

    goto :goto_53

    :cond_10
    const/4 v1, 0x1

    if-lt p4, v1, :cond_52

    if-lt p4, v0, :cond_16

    goto :goto_52

    :cond_16
    sub-int v3, v0, p4

    if-lt v3, v1, :cond_51

    if-lt v3, v0, :cond_1d

    goto :goto_51

    .line 150
    :cond_1d
    iget-object v0, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 151
    iget-object v2, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    iget-object v4, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v2, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    array-length v2, v2

    new-array v2, v2, [I

    .line 153
    iget-object v4, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    iget-object v6, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    array-length v6, v6

    invoke-static {v4, v5, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    aput p5, v2, p2

    add-int/2addr p5, v1

    .line 156
    aput p5, v0, p2

    .line 168
    new-instance p2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    iget-object p5, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    invoke-direct {p2, p4, p3, p5, v2}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;-><init>(II[I[I)V

    .line 169
    new-instance p4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    iget-object p1, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    invoke-direct {p4, v3, p3, v0, p1}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;-><init>(II[I[I)V

    .line 171
    new-instance p1, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    invoke-direct {p1, p2, p4}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;-><init>(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;Lorg/apache/commons/imaging/palette/ColorSpaceSubset;)V

    return-object p1

    :cond_51
    :goto_51
    return-object v2

    :cond_52
    :goto_52
    return-object v2

    :cond_53
    :goto_53
    return-object v2
.end method

.method private getFrequencyTotal([I[I[II)I
    .registers 15

    const/4 v0, 0x2

    .line 113
    aget v1, p2, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    aget v4, p3, v0

    if-gt v1, v4, :cond_2d

    mul-int/lit8 v4, p4, 0x2

    shl-int v4, v1, v4

    const/4 v5, 0x1

    .line 115
    aget v6, p2, v5

    :goto_10
    aget v7, p3, v5

    if-gt v6, v7, :cond_2a

    mul-int/lit8 v7, p4, 0x1

    shl-int v7, v6, v7

    .line 117
    aget v8, p2, v2

    :goto_1a
    aget v9, p3, v2

    if-gt v8, v9, :cond_27

    or-int v9, v4, v7

    or-int/2addr v9, v8

    .line 120
    aget v9, p1, v9

    add-int/2addr v3, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2d
    return v3
.end method

.method private pixelToQuantizationTableIndex(II)I
    .registers 8

    const/4 v0, 0x1

    shl-int v1, v0, p2

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    move v2, p1

    move p1, v0

    :goto_7
    const/4 v3, 0x3

    if-ge v0, v3, :cond_17

    and-int/lit16 v3, v2, 0xff

    shr-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v4, p2, 0x8

    shr-int/2addr v3, v4

    shl-int/2addr p1, p2

    and-int/2addr v3, v1

    or-int/2addr p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    return p1
.end method


# virtual methods
.method public countTransparentColors(Ljava/awt/image/BufferedImage;)I
    .registers 11

    .line 501
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 506
    :cond_c
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 507
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    const/4 v3, -0x1

    move v4, v3

    move v3, v1

    :goto_17
    if-ge v3, v2, :cond_37

    move v5, v4

    move v4, v1

    :goto_1b
    if-ge v4, v0, :cond_33

    .line 513
    invoke-virtual {p1, v4, v3}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    shr-int/lit8 v7, v6, 0x18

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ge v7, v8, :cond_30

    if-gez v5, :cond_2c

    move v5, v6

    goto :goto_30

    :cond_2c
    if-eq v6, v5, :cond_30

    const/4 p1, 0x2

    return p1

    :cond_30
    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_33
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_17

    :cond_37
    if-gez v4, :cond_3a

    return v1

    :cond_3a
    const/4 p1, 0x1

    return p1
.end method

.method public countTrasparentColors([I)I
    .registers 9

    .line 483
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v2

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_1b

    aget v4, p1, v2

    shr-int/lit8 v5, v4, 0x18

    const/16 v6, 0xff

    and-int/2addr v5, v6

    if-ge v5, v6, :cond_18

    if-gez v3, :cond_14

    move v3, v4

    goto :goto_18

    :cond_14
    if-eq v4, v3, :cond_18

    const/4 p1, 0x2

    return p1

    :cond_18
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1b
    if-gez v3, :cond_1e

    return v1

    :cond_1e
    const/4 p1, 0x1

    return p1
.end method

.method public hasTransparency(Ljava/awt/image/BufferedImage;)Z
    .registers 3

    const/16 v0, 0xff

    .line 457
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;I)Z

    move-result p1

    return p1
.end method

.method public hasTransparency(Ljava/awt/image/BufferedImage;I)Z
    .registers 9

    .line 461
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 462
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 464
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    return v3

    :cond_14
    move v2, v3

    :goto_15
    if-ge v2, v1, :cond_2c

    move v4, v3

    :goto_18
    if-ge v4, v0, :cond_29

    .line 470
    invoke-virtual {p1, v4, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    if-ge v5, p2, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2c
    return v3
.end method

.method public isGrayscale(Ljava/awt/image/BufferedImage;)Z
    .registers 11

    .line 432
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 433
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 435
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-ne v4, v2, :cond_19

    return v3

    :cond_19
    const/4 v2, 0x0

    move v4, v2

    :goto_1b
    if-ge v4, v1, :cond_3b

    move v5, v2

    :goto_1e
    if-ge v5, v0, :cond_38

    .line 442
    invoke-virtual {p1, v5, v4}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    shr-int/2addr v6, v2

    and-int/lit16 v6, v6, 0xff

    if-ne v7, v8, :cond_37

    if-eq v7, v6, :cond_34

    goto :goto_37

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_37
    :goto_37
    return v2

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_3b
    return v3
.end method

.method public makeExactRgbPaletteFancy(Ljava/awt/image/BufferedImage;)Lorg/apache/commons/imaging/palette/Palette;
    .registers 12

    const/high16 v0, 0x200000

    .line 48
    new-array v0, v0, [B

    .line 50
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    .line 51
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2e

    move v6, v3

    :goto_12
    if-ge v6, v1, :cond_2b

    .line 55
    invoke-virtual {p1, v6, v4}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v7

    const v8, 0x1fffff

    and-int/2addr v8, v7

    shr-int/lit8 v7, v7, 0x15

    and-int/lit8 v7, v7, 0x7

    shl-int v7, v5, v7

    .line 59
    aget-byte v9, v0, v8

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 64
    :cond_2e
    array-length p1, v0

    move v1, v3

    move v2, v1

    :goto_31
    if-ge v1, p1, :cond_3f

    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 73
    :cond_3f
    new-array p1, v2, [I

    move v1, v3

    move v2, v1

    .line 75
    :goto_43
    array-length v4, v0

    if-ge v1, v4, :cond_68

    .line 76
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x80

    move v7, v2

    move v2, v3

    :goto_4e
    const/16 v8, 0x8

    if-ge v2, v8, :cond_64

    and-int v8, v4, v6

    ushr-int/2addr v6, v5

    if-lez v8, :cond_61

    rsub-int/lit8 v8, v2, 0x7

    shl-int/lit8 v8, v8, 0x15

    or-int/2addr v8, v1

    add-int/lit8 v9, v7, 0x1

    .line 85
    aput v8, p1, v7

    move v7, v9

    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_64
    add-int/lit8 v1, v1, 0x1

    move v2, v7

    goto :goto_43

    .line 90
    :cond_68
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 91
    new-instance v0, Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    return-object v0
.end method

.method public makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;
    .registers 11

    .line 405
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 407
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    .line 408
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_34

    move v5, v3

    :goto_12
    if-ge v5, v1, :cond_31

    .line 412
    invoke-virtual {p1, v5, v4}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    const v7, 0xffffff

    and-int/2addr v6, v7

    .line 415
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    if-le v6, p2, :cond_2e

    const/4 p1, 0x0

    return-object p1

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 421
    :cond_34
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 423
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, v3, 0x1

    .line 424
    aput v0, p1, v3

    move v3, v1

    goto :goto_3e

    .line 426
    :cond_54
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 428
    new-instance p2, Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    return-object p2
.end method

.method public makeQuantizedRgbPalette(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/Palette;
    .registers 13

    const/high16 v0, 0x40000

    .line 328
    new-array v0, v0, [I

    .line 330
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    .line 331
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    .line 333
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 334
    new-instance v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    mul-int v5, v1, v2

    const/4 v6, 0x6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;-><init>(II)V

    .line 335
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move v5, v4

    :goto_1e
    if-ge v5, v2, :cond_37

    move v7, v4

    :goto_21
    if-ge v7, v1, :cond_34

    .line 345
    invoke-virtual {p1, v7, v5}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v8

    .line 347
    invoke-direct {p0, v8, v6}, Lorg/apache/commons/imaging/palette/PaletteFactory;->pixelToQuantizationTableIndex(II)I

    move-result v8

    .line 349
    aget v9, v0, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 359
    :cond_37
    invoke-direct {p0, v3, p2, v0, v6}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divide(Ljava/util/List;I[II)Ljava/util/List;

    move-result-object p1

    .line 366
    :goto_3b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v4, p2, :cond_4d

    .line 367
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    .line 369
    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->setAverageRGB([I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 376
    :cond_4d
    sget-object p2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->RGB_COMPARATOR:Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 378
    new-instance p2, Lorg/apache/commons/imaging/palette/QuantizedPalette;

    invoke-direct {p2, p1, v6}, Lorg/apache/commons/imaging/palette/QuantizedPalette;-><init>(Ljava/util/List;I)V

    return-object p2
.end method

.method public makeQuantizedRgbaPalette(Ljava/awt/image/BufferedImage;ZI)Lorg/apache/commons/imaging/palette/Palette;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 392
    new-instance v0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {v0, p2}, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;-><init>(Z)V

    new-instance p2, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;

    invoke-direct {p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p3, p2, v1}, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->process(Ljava/awt/image/BufferedImage;ILorg/apache/commons/imaging/palette/MedianCut;Z)Lorg/apache/commons/imaging/palette/Palette;

    move-result-object p1

    return-object p1
.end method
