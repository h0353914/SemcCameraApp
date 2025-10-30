.class final Lcb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcf;


# instance fields
.field final synthetic a:Lck;

.field private b:I

.field private final c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lck;)V
    .registers 2

    iput-object p1, p0, Lcb;->a:Lck;

    .line 1
    invoke-direct {p0}, Lcb;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcb;->b:I

    iget-object p1, p0, Lcb;->a:Lck;

    .line 2
    invoke-virtual {p1}, Lck;->a()I

    move-result p1

    iput p1, p0, Lcb;->c:I

    return-void
.end method


# virtual methods
.method public a()B
    .registers 3

    iget v0, p0, Lcb;->b:I

    iget v1, p0, Lcb;->c:I

    if-ge v0, v1, :cond_11

    add-int/lit8 v1, v0, 0x1

    .line 3
    iput v1, p0, Lcb;->b:I

    iget-object v1, p0, Lcb;->a:Lck;

    .line 4
    invoke-virtual {v1, v0}, Lck;->b(I)B

    move-result v0

    return v0

    .line 0
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 3
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcb;->b:I

    iget v1, p0, Lcb;->c:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 6
    invoke-virtual {p0}, Lcb;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 7
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
