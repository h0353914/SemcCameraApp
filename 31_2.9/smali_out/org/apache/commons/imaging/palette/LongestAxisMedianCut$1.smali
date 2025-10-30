.class final Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$1;
.super Ljava/lang/Object;
.source "LongestAxisMedianCut.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/imaging/palette/ColorGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 27
    check-cast p1, Lorg/apache/commons/imaging/palette/ColorGroup;

    check-cast p2, Lorg/apache/commons/imaging/palette/ColorGroup;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$1;->compare(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorGroup;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorGroup;)I
    .registers 5

    .line 29
    iget v0, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    iget v1, p2, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    if-ne v0, v1, :cond_c

    .line 30
    iget p2, p2, Lorg/apache/commons/imaging/palette/ColorGroup;->diffTotal:I

    iget p1, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->diffTotal:I

    sub-int/2addr p2, p1

    return p2

    .line 32
    :cond_c
    iget p2, p2, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    iget p1, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    sub-int/2addr p2, p1

    return p2
.end method
