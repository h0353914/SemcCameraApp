.class public abstract Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewCallback"
.end annotation


# static fields
.field public static final HINT_SCROLL_ASC:I = 0x2

.field public static final HINT_SCROLL_DESC:I = 0x1

.field public static final HINT_SCROLL_NONE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extendRangeInto([I[II)V
    .registers 9

    const/4 p0, 0x1

    .line 577
    aget v0, p1, p0

    const/4 v1, 0x0

    aget p1, p1, v1

    sub-int v2, v0, p1

    add-int/2addr v2, p0

    .line 578
    div-int/lit8 v3, v2, 0x2

    if-ne p3, p0, :cond_f

    move v4, v2

    goto :goto_10

    :cond_f
    move v4, v3

    :goto_10
    sub-int/2addr p1, v4

    .line 579
    aput p1, p2, v1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    add-int/2addr v0, v2

    .line 580
    aput v0, p2, p0

    return-void
.end method

.method public abstract getItemRangeInto([I)V
.end method

.method public abstract onDataRefresh()V
.end method

.method public abstract onItemLoaded(I)V
.end method
