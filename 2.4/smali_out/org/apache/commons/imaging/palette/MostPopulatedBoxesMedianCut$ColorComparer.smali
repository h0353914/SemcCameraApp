.class Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$ColorComparer;
.super Ljava/lang/Object;
.source "MostPopulatedBoxesMedianCut.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorComparer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/imaging/palette/ColorCount;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final colorComponent:Lorg/apache/commons/imaging/palette/ColorComponent;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/palette/ColorComponent;)V
    .registers 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$ColorComparer;->colorComponent:Lorg/apache/commons/imaging/palette/ColorComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 137
    check-cast p1, Lorg/apache/commons/imaging/palette/ColorCount;

    check-cast p2, Lorg/apache/commons/imaging/palette/ColorCount;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$ColorComparer;->compare(Lorg/apache/commons/imaging/palette/ColorCount;Lorg/apache/commons/imaging/palette/ColorCount;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/imaging/palette/ColorCount;Lorg/apache/commons/imaging/palette/ColorCount;)I
    .registers 5

    .line 147
    sget-object v0, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$1;->$SwitchMap$org$apache$commons$imaging$palette$ColorComponent:[I

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$ColorComparer;->colorComponent:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/palette/ColorComponent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    const/4 p1, 0x0

    return p1

    .line 155
    :pswitch_f
    iget p1, p1, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    iget p2, p2, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    sub-int/2addr p1, p2

    return p1

    .line 153
    :pswitch_15
    iget p1, p1, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    iget p2, p2, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    sub-int/2addr p1, p2

    return p1

    .line 151
    :pswitch_1b
    iget p1, p1, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    iget p2, p2, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    sub-int/2addr p1, p2

    return p1

    .line 149
    :pswitch_21
    iget p1, p1, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    iget p2, p2, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    sub-int/2addr p1, p2

    return p1

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1b
        :pswitch_15
        :pswitch_f
    .end packed-switch
.end method
