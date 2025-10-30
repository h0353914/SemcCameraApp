.class final Lcom/sonyericsson/android/camera/device/FpsProvider$1;
.super Ljava/lang/Object;
.source "FpsProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/FpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 25
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/FpsProvider$1;->compare([I[I)I

    move-result p1

    return p1
.end method

.method public compare([I[I)I
    .registers 8

    const/4 p2, 0x1

    .line 28
    aget v0, p1, p2

    const/4 v1, 0x0

    .line 29
    aget v2, p1, v1

    .line 31
    aget v3, p1, p2

    .line 32
    aget p1, p1, v1

    if-le v0, v3, :cond_d

    return p2

    :cond_d
    const/4 v4, -0x1

    if-ge v0, v3, :cond_11

    return v4

    :cond_11
    if-ge v2, p1, :cond_14

    return p2

    :cond_14
    if-le v2, p1, :cond_17

    return v4

    :cond_17
    return v1
.end method
