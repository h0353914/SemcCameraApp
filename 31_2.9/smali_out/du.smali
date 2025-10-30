.class final Ldu;
.super Ldv;
.source "PG"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ldv;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/Object;J)Ldi;
    .registers 3

    .line 2
    invoke-static {p0, p1, p2}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldi;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .registers 4

    .line 3
    invoke-static {p1, p2, p3}, Ldu;->b(Ljava/lang/Object;J)Ldi;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ldi;->b()V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 9

    .line 5
    invoke-static {p1, p3, p4}, Ldu;->b(Ljava/lang/Object;J)Ldi;

    move-result-object v0

    .line 6
    invoke-static {p2, p3, p4}, Ldu;->b(Ljava/lang/Object;J)Ldi;

    move-result-object p2

    .line 7
    invoke-interface {v0}, Ldi;->size()I

    move-result v1

    .line 8
    invoke-interface {p2}, Ldi;->size()I

    move-result v2

    if-gtz v1, :cond_13

    goto :goto_23

    :cond_13
    if-lez v2, :cond_23

    .line 9
    invoke-interface {v0}, Ldi;->a()Z

    move-result v3

    if-nez v3, :cond_20

    add-int/2addr v2, v1

    .line 10
    invoke-interface {v0, v2}, Ldi;->a(I)Ldi;

    move-result-object v0

    .line 11
    :cond_20
    invoke-interface {v0, p2}, Ldi;->addAll(Ljava/util/Collection;)Z

    :cond_23
    :goto_23
    if-gtz v1, :cond_26

    goto :goto_27

    :cond_26
    move-object p2, v0

    .line 12
    :goto_27
    invoke-static {p1, p3, p4, p2}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
