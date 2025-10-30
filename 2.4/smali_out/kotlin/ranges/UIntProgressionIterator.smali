.class final Lkotlin/ranges/UIntProgressionIterator;
.super Lkotlin/collections/UIntIterator;
.source "UIntRange.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUIntRange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIntRange.kt\nkotlin/ranges/UIntProgressionIterator\n*L\n1#1,127:1\n*E\n"
.end annotation

.annotation build Lkotlin/ExperimentalUnsignedTypes;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0003\u0018\u00002\u00020\u0001B \u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J\t\u0010\n\u001a\u00020\u000bH\u0096\u0002J\u0010\u0010\r\u001a\u00020\u0003H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eR\u0013\u0010\u0008\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000c\u001a\u00020\u0003X\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\tR\u0013\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/ranges/UIntProgressionIterator;",
        "Lkotlin/collections/UIntIterator;",
        "first",
        "Lkotlin/UInt;",
        "last",
        "step",
        "",
        "(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "finalElement",
        "I",
        "hasNext",
        "",
        "next",
        "nextUInt",
        "()I",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation


# instance fields
.field private final finalElement:I

.field private hasNext:Z

.field private next:I

.field private final step:I


# direct methods
.method private constructor <init>(III)V
    .registers 6

    .line 107
    invoke-direct {p0}, Lkotlin/collections/UIntIterator;-><init>()V

    .line 108
    iput p2, p0, Lkotlin/ranges/UIntProgressionIterator;->finalElement:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_10

    .line 109
    invoke-static {p1, p2}, Lkotlin/UnsignedKt;->uintCompare(II)I

    move-result p2

    if-gtz p2, :cond_17

    goto :goto_18

    :cond_10
    invoke-static {p1, p2}, Lkotlin/UnsignedKt;->uintCompare(II)I

    move-result p2

    if-ltz p2, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    .line 110
    invoke-static {p3}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p2

    iput p2, p0, Lkotlin/ranges/UIntProgressionIterator;->step:I

    .line 111
    iget-boolean p2, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    if-eqz p2, :cond_25

    goto :goto_27

    :cond_25
    iget p1, p0, Lkotlin/ranges/UIntProgressionIterator;->finalElement:I

    :goto_27
    iput p1, p0, Lkotlin/ranges/UIntProgressionIterator;->next:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lkotlin/ranges/UIntProgressionIterator;-><init>(III)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    return v0
.end method

.method public nextUInt()I
    .registers 3

    .line 116
    iget v0, p0, Lkotlin/ranges/UIntProgressionIterator;->next:I

    .line 117
    iget v1, p0, Lkotlin/ranges/UIntProgressionIterator;->finalElement:I

    if-ne v0, v1, :cond_16

    .line 118
    iget-boolean v1, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 119
    iput-boolean v1, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    goto :goto_1f

    .line 118
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 121
    :cond_16
    iget v1, p0, Lkotlin/ranges/UIntProgressionIterator;->step:I

    add-int/2addr v1, v0

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    iput v1, p0, Lkotlin/ranges/UIntProgressionIterator;->next:I

    :goto_1f
    return v0
.end method
