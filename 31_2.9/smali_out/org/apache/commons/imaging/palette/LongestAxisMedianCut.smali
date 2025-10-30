.class public Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;
.super Ljava/lang/Object;
.source "LongestAxisMedianCut.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/MedianCut;


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/imaging/palette/ColorGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$1;

    invoke-direct {v0}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$1;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/palette/ColorGroup;",
            "Lorg/apache/commons/imaging/palette/ColorComponent;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorGroup;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 63
    new-instance v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;

    invoke-direct {v0, p0, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;-><init>(Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;Lorg/apache/commons/imaging/palette/ColorComponent;)V

    .line 80
    iget-object v1, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    iget v0, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_18
    move v4, v3

    .line 85
    iget-object v5, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_31

    .line 86
    iget-object v5, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/palette/ColorCount;

    .line 88
    iget v5, v5, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    add-int/2addr v3, v5

    if-ge v3, v0, :cond_31

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 97
    :cond_31
    iget-object v5, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_3e

    add-int/lit8 v2, v2, -0x1

    goto :goto_4e

    :cond_3e
    if-lez v2, :cond_4e

    sub-int/2addr v3, v0

    .line 100
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v0, v4

    .line 101
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_4e

    add-int/lit8 v2, v2, -0x1

    .line 107
    :cond_4e
    :goto_4e
    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    iget-object v5, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    new-instance v3, Lorg/apache/commons/imaging/palette/ColorGroup;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4, p4}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    .line 115
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v0, Lorg/apache/commons/imaging/palette/ColorGroup;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v4, p4}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    .line 117
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object p3, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/imaging/palette/ColorCount;

    .line 121
    sget-object p4, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$3;->$SwitchMap$org$apache$commons$imaging$palette$ColorComponent:[I

    invoke-virtual {p2}, Lorg/apache/commons/imaging/palette/ColorComponent;->ordinal()I

    move-result v1

    aget p4, p4, v1

    packed-switch p4, :pswitch_data_b8

    .line 135
    new-instance p1, Ljava/lang/Error;

    const-string p2, "Bad mode."

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :pswitch_a4
    iget p3, p3, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    goto :goto_af

    .line 129
    :pswitch_a7
    iget p3, p3, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    goto :goto_af

    .line 126
    :pswitch_aa
    iget p3, p3, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    goto :goto_af

    .line 123
    :pswitch_ad
    iget p3, p3, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    .line 137
    :goto_af
    new-instance p4, Lorg/apache/commons/imaging/palette/ColorGroupCut;

    invoke-direct {p4, v3, v0, p2, p3}, Lorg/apache/commons/imaging/palette/ColorGroupCut;-><init>(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;I)V

    iput-object p4, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->cut:Lorg/apache/commons/imaging/palette/ColorGroupCut;

    return-void

    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
    .end packed-switch
.end method


# virtual methods
.method public performNextMedianCut(Ljava/util/List;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorGroup;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 38
    sget-object v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/palette/ColorGroup;

    .line 41
    iget v2, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    if-nez v2, :cond_11

    return v0

    :cond_11
    if-nez p2, :cond_2b

    .line 44
    iget v0, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->alphaDiff:I

    iget v2, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->redDiff:I

    if-le v0, v2, :cond_2b

    iget v0, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->alphaDiff:I

    iget v2, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->greenDiff:I

    if-le v0, v2, :cond_2b

    iget v0, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->alphaDiff:I

    iget v2, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->blueDiff:I

    if-le v0, v2, :cond_2b

    .line 48
    sget-object v0, Lorg/apache/commons/imaging/palette/ColorComponent;->ALPHA:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V

    goto :goto_4e

    .line 49
    :cond_2b
    iget v0, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->redDiff:I

    iget v2, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->greenDiff:I

    if-le v0, v2, :cond_3d

    iget v0, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->redDiff:I

    iget v2, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->blueDiff:I

    if-le v0, v2, :cond_3d

    .line 51
    sget-object v0, Lorg/apache/commons/imaging/palette/ColorComponent;->RED:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V

    goto :goto_4e

    .line 52
    :cond_3d
    iget v0, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->greenDiff:I

    iget v2, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->blueDiff:I

    if-le v0, v2, :cond_49

    .line 53
    sget-object v0, Lorg/apache/commons/imaging/palette/ColorComponent;->GREEN:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V

    goto :goto_4e

    .line 55
    :cond_49
    sget-object v0, Lorg/apache/commons/imaging/palette/ColorComponent;->BLUE:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V

    :goto_4e
    const/4 p1, 0x1

    return p1
.end method
