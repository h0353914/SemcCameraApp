.class final Ler;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lee;


# instance fields
.field public final a:Leh;

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/Object;

.field private final d:I


# direct methods
.method public constructor <init>(Leh;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ler;->a:Leh;

    iput-object p2, p0, Ler;->b:Ljava/lang/String;

    iput-object p3, p0, Ler;->c:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p3, 0xd800

    if-lt p1, p3, :cond_2e

    and-int/lit16 p1, p1, 0x1fff

    const/16 v0, 0xd

    const/4 v1, 0x1

    :goto_18
    add-int/lit8 v2, v1, 0x1

    .line 3
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, p3, :cond_28

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v0

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0xd

    move v1, v2

    goto :goto_18

    :cond_28
    shl-int p2, v1, v0

    or-int/2addr p1, p2

    iput p1, p0, Ler;->d:I

    return-void

    :cond_2e
    iput p1, p0, Ler;->d:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    iget v0, p0, Ler;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Leh;
    .registers 2

    iget-object v0, p0, Ler;->a:Leh;

    return-object v0
.end method

.method public final c()I
    .registers 3

    iget v0, p0, Ler;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x2

    return v0
.end method
